package org.example.productmanagement.model;

public enum Color {
    RED("red"),
    GREEN("green"),
    BLACK("black"),
    WHITE("white"),
    YELLOW("yellow");

    private final String value;

    Color(String value) {
        this.value = value.toLowerCase();
    }

    public String getValue() {
        return value;
    }
}
