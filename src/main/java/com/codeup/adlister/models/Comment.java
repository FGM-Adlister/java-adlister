package com.codeup.adlister.models;

public class Comment {
    private final String title;
    private String comment;

    public Comment(String title) {
        super();
        this.title = title;
    }

    @Override
    public int hashCode() {
        return super.hashCode();
    }

    @Override
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override
    protected Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    @Override
    public String toString() {
        return super.toString();
    }


    public Comment(String title, String comment) {
        this.title = title;
        this.comment = comment;
    }

    public String getTitle() {
        return title;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}