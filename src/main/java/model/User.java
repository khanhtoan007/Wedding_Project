package model;

public class User  {
    private  String userName;
    private String password;
    private String fullName;
    private String email;
    private int Tel;
    private  String role;
    private String hash;
    private boolean isEmail;

    public User(String userName, String password, String fullName, String email, int tel, String role, String hash, boolean isEmail) {
        this.userName = userName;
        this.password = password;
        this.fullName = fullName;
        this.email = email;
        Tel = tel;
        this.role = role;
        this.hash = hash;
        this.isEmail = isEmail;
    }

    public User() {
    }

    public User(String fullName) {
        this.fullName = fullName;
    }

    public User(String userName, String fullName, String email, int tel, String role) {
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getTel() {
        return Tel;
    }

    public void setTel(int tel) {
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
        return "User{" +
                "userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", fullName='" + fullName + '\'' +
                ", email='" + email + '\'' +
                ", Tel=" + Tel +
                ", hash='" + hash + '\'' +
                ", isEmail=" + isEmail +
                '}';
    }
}
