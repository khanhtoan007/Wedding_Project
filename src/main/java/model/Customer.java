package model;

public class Customer extends Account {
    private String email;
    private String Tel;
    private String hash;
    private boolean isEmail;

    public Customer(String username, String password, String name, String email, String tel, String hash, boolean isEmail) {
        super(username, password, name);
        this.email = email;
        Tel = tel;
        this.hash = hash;
        this.isEmail = isEmail;
    }

    public Customer() {
    }

    public Customer(String name) {
        super(name);
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTel() {
        return Tel;
    }

    public void setTel(String tel) {
        Tel = tel;
    }

    public String getHash() {
        return hash;
    }

    public void setHash(String hash) {
        this.hash = hash;
    }

    public boolean isEmail() {
        return isEmail;
    }

    public void setEmail(boolean email) {
        isEmail = email;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "email='" + email + '\'' +
                ", Tel='" + Tel + '\'' +
                ", hash='" + hash + '\'' +
                ", isEmail=" + isEmail +
                '}';
    }
}
