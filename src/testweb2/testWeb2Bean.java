package testweb2;

// import java.sql.Date;
import java.text.*;

public class testWeb2Bean { 
	public testWeb2Bean(){
	System.out.println("class testWeb2Bean is run");
	}
	
	private String feature_name;
	private String tab;
	private String feature_location;
	
    public testWeb2Bean(String feature_name, String tab, String feature_location) {
        this.feature_name = feature_name;
        this.tab = tab;
        this.feature_location = feature_location;
        System.out.println("load testWeb2Bean");
    }	
 
    public String getFeature_name() {
        return feature_name;
    }
    
    public void setfeature_name(String feature_name) {
    	this.feature_name = feature_name;
    }

    public String getTab() {
        return tab;
    }
    
    public void settab(String tab) {
    	this.tab = tab;
    }

    public String getFeature_location() {
        return feature_location;
    }
    
    public void setFeature_location(String feature_location) {
    	this.feature_location = feature_location;
    }
    
}
