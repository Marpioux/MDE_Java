package cim_house.model;

public class Door {
    private int id;
    private String name;
    private boolean open;

    public Door(int id, String name) {
        this.id = id;
        this.name = name;
        this.open = false;
    }

    public int getId() { return id; }
    public String getName() { return name; }
    public boolean isOpen() { return open; }

    public void open() { this.open = true; }
    public void close() { this.open = false; }

    public void toggle() {
        this.open = !this.open;
    }
}

