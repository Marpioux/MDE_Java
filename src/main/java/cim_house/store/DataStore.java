package cim_house.store;

import cim_house.model.Element;
import cim_house.model.Heater;
import cim_house.model.Light;
import cim_house.model.User;
import cim_house.model.Administrator;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class DataStore {
    private static final DataStore instance = new DataStore();

    public static List<Heater> heaters = new ArrayList<>();
    public static List<Light> lights = new ArrayList<>();
    public static List<User> users = new ArrayList<>();

    private static int nextElementId = 3;
    private static int nextUserId = 1;

    // Admin unique statique
    private static final Administrator admin = new Administrator();

    static {
        // Initialisation heaters
        Heater heater1 = new Heater();
        heater1.setId_element(1);
        heater1.setTemp(20);

        Heater heater2 = new Heater();
        heater2.setId_element(2);
        heater2.setTemp(22);

        heaters.add(heater1);
        heaters.add(heater2);

        // Initialisation lights
        Light light1 = new Light();
        light1.setId_element(1);
        light1.setIntensity(5);

        Light light2 = new Light();
        light2.setId_element(2);
        light2.setIntensity(7);

        lights.add(light1);
        lights.add(light2);

        // Admin fixe
        admin.setId(1);
        admin.setPassword("admin123");

        User user1 = new User();
        user1.setId(getNextUserId());
        user1.setPassword("pass1");
        user1.setRole("user");
        users.add(user1);

        User user2 = new User();
        user2.setId(getNextUserId());
        user2.setPassword("pass2");
        user2.setRole("user");
        users.add(user2);
    }

    public static DataStore getInstance() {
        return instance;
    }

    // ===== Admin unique =====
    public static Administrator getAdmin() {
        return admin;
    }

    // ===== User Management =====
    public static List<User> getUsers() {
        return users;
    }

    public static int getNextUserId() {
        return nextUserId++;
    }

    public static void addUser(User user) {
        user.setId(getNextUserId());
        users.add(user);
    }

    public static void removeUser(int id) {
        users.removeIf(u -> u.getId() == id);
    }

    public static User getUserById(int id) {
        return users.stream().filter(u -> u.getId() == id).findFirst().orElse(null);
    }

    public static User getUserByLogin(String login) {
        return users.stream().filter(u -> u.getLogin().equals(login)).findFirst().orElse(null);
    }

    public static void updateUserPassword(int id, String newPassword) {
        User user = getUserById(id);
        if (user != null) {
            user.setPassword(newPassword);
        }
    }

    // ===== Element Management =====
    public static int getNextElementId() {
        return nextElementId++;
    }

    public static List<Element> getElements() {
        List<Element> elements = new ArrayList<>();
        elements.addAll(lights);
        elements.addAll(heaters);
        return elements;
    }

    public static void addElement(Element element) {
        element.setId_element(getNextElementId());

        if (element instanceof Light) {
            lights.add((Light) element);
        } else if (element instanceof Heater) {
            heaters.add((Heater) element);
        }
    }

    public List<Light> getLights() {
        List<Element> elements = getElements();
        return elements.stream()
                .filter(e -> e instanceof Light)
                .map(e -> (Light) e)
                .collect(Collectors.toList());
    }

    public List<Heater> getHeaters() {
        List<Element> elements = getElements();
        return elements.stream()
                .filter(e -> e instanceof Heater)
                .map(e -> (Heater) e)
                .collect(Collectors.toList());
    }

    public static void removeElement(int id) {
        boolean removed = lights.removeIf(light -> light.getId_element() == id);
        if (!removed) {
            heaters.removeIf(heater -> heater.getId_element() == id);
        }
    }
}
