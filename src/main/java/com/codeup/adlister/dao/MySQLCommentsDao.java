package com.codeup.adlister.dao;

import com.codeup.adlister.models.Comment;

public class MySQLCommentsDao extends Comment {

    public MySQLCommentsDao(String title) {
        super(title);
    }

    public MySQLCommentsDao(String title, String comment) {
        super(title, comment);
    }

    public MySQLCommentsDao(Object comment) {
        super((String) comment);
    }
}