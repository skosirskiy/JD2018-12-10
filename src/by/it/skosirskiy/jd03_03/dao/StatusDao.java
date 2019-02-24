package by.it.skosirskiy.jd03_03.dao;
import by.it.skosirskiy.jd03_03.beans.Status;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class StatusDao extends AbstractDao implements InterfaceDAO<Status> {
    @Override
    public Status read(int id) {
        List<Status> Statuses = getAll("WHERE id=" + id + " LIMIT 0,1");
        if (Statuses.size() > 0) {
            return Statuses.get(0);
        } else
            return null;
    }

    @Override
    public boolean create(Status status) {
        String sql = String.format(
                "insert INTO Statuses(status)" +
                        " values('%s');",
                status.getStatus()
        );
        status.setId(executeUpdate(sql));
        return (status.getId()>0);
    }

    @Override
    public boolean update(Status status) {
        String sql = String.format(
                "UPDATE `Statuses` SET `status` = '%s' WHERE `users`.`id` = %d",
                status.getStatus(), status.getId()
        );
        return (0 < executeUpdate(sql));
    }

    @Override
    public boolean delete(Status status) {
        String sql = String.format(
                "DELETE FROM `Statuses` WHERE `id` = %d;", status.getId()
        );
        return (0 < executeUpdate(sql));
    }


    @Override
    public List<Status> getAll(String WHERE) {
        List<Status> statuses = new ArrayList<>();
        String sql = "SELECT * FROM statuses " + WHERE + " ;";
        try (Connection connection = ConnCreator.getConnection();
             Statement statement = connection.createStatement()
        ) {
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
                Status status = new Status();
                status.setStatus(rs.getString("id"));
                statuses.add(status);
            }
        } catch (SQLException e) {
            //тут нужно логгирование SQLException(e);
        }
        return statuses;
    }
    
}
