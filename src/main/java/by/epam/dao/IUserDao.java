package by.epam.dao;

import by.epam.dao.IDao;
import by.epam.entity.User;
import by.epam.exceptions.DaoException;

import java.util.Optional;

public interface IUserDao extends IDao<User> {
    Optional<User> findByEmail(String email) throws DaoException;
    String getEncodedPassword(String email) throws DaoException;
}
