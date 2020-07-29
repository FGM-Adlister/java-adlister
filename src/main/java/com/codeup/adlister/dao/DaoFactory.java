package com.codeup.adlister.dao;

import com.codeup.adlister.models.Comment;

public class DaoFactory {
    private static Ads adsDao;
    private static Users usersDao;
    private static Config config = new Config();
    private static Comments commentsDao;

    public static Ads getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLAdsDao(config);
        }
        return adsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }
    public static Comments getCommentsDao() {
        if (commentsDao == null) {
            commentsDao = (Comments) new MySQLCommentsDao(config);
        }
        return commentsDao;
    }
}
