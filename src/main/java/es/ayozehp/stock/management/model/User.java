package es.ayozehp.stock.management.model;

public class User {
    private String id;
    private String userName;
    private String name;
    private String lastName;
    private String role;

    public User(String id, String userName, String name, String lastName, String role) {
        this.id = id;
        this.userName = userName;
        this.name = name;
        this.lastName = lastName;
        this.role = role;
    }

    public String getId() {
        return id;
    }

    public String getUserName() {
        return userName;
    }

    public String getName() {
        return name;
    }

    public String getLastName() {
        return lastName;
    }

    public String getRole() {
        return role;
    }
}