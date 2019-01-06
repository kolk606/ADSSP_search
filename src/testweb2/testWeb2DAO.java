package testweb2;

import java.sql.*;
import java.util.ArrayList;

public class testWeb2DAO {
    static private Connection conn;
    static private PreparedStatement stmt;

    static {
        try {
        	//�h���C�o�N���X�����[�h����D
            Class.forName("org.postgresql.Driver");
            System.out.println("load DB success");

          //�f�[�^�x�[�X�֐ڑ�
            conn = DriverManager.getConnection(
                    "jdbc:postgresql://localhost:5432/adssp_search", "postgres", "katsu12675");
            stmt = conn.prepareStatement("SELECT feature_name,tab,feature_location FROM feature_info WHERE feature_name LIKE ?");
            System.out.println("connect DB success");
            System.out.println(stmt.toString());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public ArrayList<testWeb2Bean> selectByName(String conditions) {
    	System.out.println("load selectByName");
        ResultSet rs = null;
        ArrayList<testWeb2Bean> mylist = new ArrayList<testWeb2Bean>();

        try {
            stmt.setString(1, "%" + ((conditions == null)? "" : conditions) + "%");
            rs = stmt.executeQuery();
            
            while (rs.next()) {
            	testWeb2Bean item = new testWeb2Bean(
                          rs.getString("feature_name")
                        , rs.getString("tab")
                        , rs.getString("feature_location"));
            	System.out.println(item);
                mylist.add(item);
            }
        } 
        catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println(mylist);
        return mylist;
    }
	
}
