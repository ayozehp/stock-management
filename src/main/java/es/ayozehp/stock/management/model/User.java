package es.ayozehp.stock.management.model;

public class User {
    private String id;
    private String userName;
    private String name;
    private String lastName;
    private String role;

    public User() {
        id = "1";
        userName = "ayoze";
        name = "Ayoze";
        lastName = "Hernandez Perez";
        role = "ADMIN";
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