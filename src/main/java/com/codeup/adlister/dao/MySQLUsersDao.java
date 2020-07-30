package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;
import java.sql.*;

public class MySQLUsersDao implements Users {
    private final Connection connection;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public User findByUsername(String username) {

        try {
            PreparedStatement stmt = connection.prepareStatement("SELECT username, email, id, password FROM users WHERE username = ?");
            stmt.setString(1,username);
            ResultSet rs = stmt.executeQuery();
            rs.next();
                    User user = new User(rs.getLong("id"),rs.getString("username"),rs.getString("email"),rs.getString("password"));
            return user;
        } catch (SQLException e)  {
            throw new RuntimeException("Error logging in",e);
        }
    }

    @Override
    public Long insert(User user) {
        Long next = null;
        try {
            PreparedStatement stmt = connection.prepareStatement("INSERT INTO users(username, email, password) VALUES (?, ?, ?)", Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            next = rs.getLong(1);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return next;
    }


    private User extractUser(ResultSet rs) throws SQLException {
        if (! rs.next()) {
            return null;
        }
        return new User(
            rs.getLong("id"),
            rs.getString("username"),
            rs.getString("email"),
            rs.getString("password"),
                rs.getBoolean("admin")

        );
    }

}

