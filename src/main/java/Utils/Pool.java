package Utils;

//import Utils.DB_handler;
import Model.Img;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;

public class Pool {
    public static Connection dbh;

    static {
        try {
            dbh = new DB_handler().getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public ArrayList<Img> getAllImages() throws SQLException {
        PreparedStatement pre_sta = dbh.prepareStatement("SELECT * FROM imgs");
        ResultSet raw_data = pre_sta.executeQuery();
       //convert to ArrayList
       ArrayList<Img> images = new ArrayList<>();
         while (raw_data.next()) {
              images.add(new Img(
                raw_data.getInt("id"),
                raw_data.getString("name_by_user"),
                raw_data.getString("name_on_server")
              ));
         }
         return images;
    }

    public void insertImage(String name_by_user, String name_on_server) throws SQLException {
        PreparedStatement pre_sta = dbh.prepareStatement("INSERT INTO imgs (name_by_user, name_on_server) VALUES (?, ?)");
        pre_sta.setString(1, name_by_user);
        pre_sta.setString(2, name_on_server);
        pre_sta.executeUpdate();
    }

    public void insertImageWithCustomName(String customName, String nameOnServer) throws SQLException {
        PreparedStatement pre_sta = dbh.prepareStatement("INSERT INTO imgs (name_by_user, name_on_server) VALUES (?, ?)");
        pre_sta.setString(1, customName);
        pre_sta.setString(2, nameOnServer);
        pre_sta.executeUpdate();
    }

    public ArrayList<Img> searchImages(String query) throws SQLException {
        String sql = "SELECT * FROM imgs WHERE name_by_user LIKE ?";
        PreparedStatement pre_sta = dbh.prepareStatement(sql);
        pre_sta.setString(1, "%" + query + "%");
        ResultSet raw_data = pre_sta.executeQuery();

        ArrayList<Img> images = new ArrayList<>();
        while (raw_data.next()) {
            images.add(new Img(
                raw_data.getInt("id"),
                raw_data.getString("name_by_user"),
                raw_data.getString("name_on_server")
            ));
        }
        return images;
    }
}
