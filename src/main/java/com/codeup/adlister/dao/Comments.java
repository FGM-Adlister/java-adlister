package com.codeup.adlister.dao;

import com.codeup.adlister.models.Comment;

import java.util.List;

public interface Comments {
   List <Comment> all();
    // insert a new ad and return the new ad's id
    long insert(Comment comment);

    Comment findByUsername(String username);
}
