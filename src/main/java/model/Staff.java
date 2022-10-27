package model;

public class Staff extends Account{
    private boolean role;

    public Staff(String username, String password, String name, boolean role) {
        super(username, password, name);
        this.role = role;
    }

    public Staff(){}

    public boolean isRole() {
        return role;
    }

    public void setRole(boolean role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "Staff{" +
                "role=" + role +
                '}';
    }
}
