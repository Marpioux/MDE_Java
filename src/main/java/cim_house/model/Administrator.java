package cim_house.model;

public class Administrator {
    private int id;
    private String password;

    public Administrator(int id, String password) {
        this.id = id;
        this.password = password;
    }

    public Administrator() {
    }

    public int getId() {
        return id;
    }

    public boolean authenticate(String password) {
        return this.password != null && this.password.equals(password);
    }

    public void setId(int i) {
        this.id = id;
    }


    public void setPassword(String admin123) {
        this.password= admin123;
    }
}
