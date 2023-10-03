/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.trainer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import sample.utils.DBUtils;

/**
 *
 * @author ADMIN
 */
public class TrainerDAO {

    Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;

    public List<TrainerDTO> getTrainerById(String areaid) {
        List<TrainerDTO> list = new ArrayList<>();
        String sql = "select * from Trainer where Area_ID = ?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, areaid);
            rs = ptm.executeQuery();
            while(rs.next()){
                TrainerDTO t = new TrainerDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
                list.add(t);
            }
        } catch (Exception e) {
        }
        return list;
    }
}
