package sample.controllers.manager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import sample.utils.DBUtils;

public class AnimalCageDAO {
                    Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
    private static final String SELECT_CAGES_BY_AREA_LOCATION =
        "SELECT a.AreaLocation, t.FullName, aa.AnimalCage_ID, aa.Name " +
        "FROM Area a " +
        "JOIN Manager m ON a.Manager_ID = m.Manager_ID " +
        "JOIN AnimalCage aa ON a.Area_ID = aa.Area_ID " +
        "JOIN Trainer t ON a.Area_ID = t.Area_ID " 
        ;

    public List<AnimalCageDTO> getAnimalCageById(String id){
            List<AnimalCageDTO> list = new ArrayList<>();

    String sql = "SELECT ac.AnimalCage_ID, ac.Name, ac.CageStatus, ac.Trainer_ID, ac.Area_ID, ac.IMG " +
                 "FROM AnimalCage ac " +
                 "JOIN Area a ON ac.Area_ID = a.Area_ID " +
                 "JOIN Trainer t ON t.Area_ID = a.Area_ID " +
                 "WHERE a.AreaLocation = ?";

    try {
        conn = DBUtils.getConnection();
        ptm = conn.prepareStatement(sql);
        ptm.setString(1, id);
        rs = ptm.executeQuery();
        while (rs.next()) {
            AnimalCageDTO a = new AnimalCageDTO(
                rs.getString("AnimalCage_ID"),
                rs.getString("Name"),
                rs.getString("CageStatus"),
                rs.getString("Trainer_ID"),
                rs.getString("Area_ID"),
                rs.getString("IMG")
            );
            list.add(a);
        }

        } catch (Exception e) {
        }
        return list;
    }
    
    public static void main(String[] args) {
        AnimalCageDAO a = new AnimalCageDAO();
        List<AnimalCageDTO> list = a.getAnimalCageById("B");
        System.out.println(list);
       
    }


}
