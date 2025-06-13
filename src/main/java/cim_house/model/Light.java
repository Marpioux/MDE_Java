package cim_house.model;

public class Light extends Element {

    private int intensity;

    public Light() {
        this.intensity = 0; // default intensity
    }

    public void increaseIntensity() {
        if (intensity < 100) { // max intensity limit
            intensity++;
        }
    }

    public void decreaseIntensity() {
        if (intensity > 0) { // min intensity limit
            intensity--;
        }
    }

    public void setIntensity(int intensity) {
        this.intensity = intensity;
    }

    public int getIntensity() {
        return intensity;
    }
}
