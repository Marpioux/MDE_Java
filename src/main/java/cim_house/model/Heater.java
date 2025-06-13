package cim_house.model;

public class Heater extends Element {

    private int temp;

    public Heater() {
        this.temp = 20;
    }

    public void heat() {
        temp += 1;
    }

    public void cool() {
        temp -= 1;
    }

    public int getTemp() {
        return temp;
    }

    public void setTemp(int temp) {
        this.temp = temp;
    }
}
