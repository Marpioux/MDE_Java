package cim_house.model;

public class User {
    private int id;
    private String login;
    private String password;
    private String role; // "admin" ou "user"

    public User() {}

    public User(int id, String login, String password, String role) {
        this.id = id;
        this.login = login;
        this.password = password;
        this.role = role;
    }

    public User(int id, String password, String role) {
        this.id = id;
        this.password = password;
        this.role = role;
    }

    // Getters et Setters
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getLogin() { return login; }
    public void setLogin(String login) { this.login = login; }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }

    public boolean authenticate(String password) {
        return this.password.equals(password);
    }
}
