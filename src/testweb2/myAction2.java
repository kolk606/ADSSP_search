package testweb2;

import java.util.ArrayList;

public class myAction2 {
	public myAction2() {
    System.out.println("class myAction2 is run");
	}
	
	
	//�ϐ�
    private String InJyoken;    // ���͏���
    public ArrayList<testWeb2Bean> testWeb2list;
    
    
    //���\�b�h
    public String doAction() {
    	System.out.println("method myAction2.doAction");
    	testWeb2list = new testWeb2DAO().selectByName(InJyoken);
        return "success";
    }

    public String getInJyoken() {
        return InJyoken;
    }

    public void setInJyoken(String InJyoken) {
        this.InJyoken = InJyoken;
    }

    public ArrayList<testWeb2Bean> getTestWeb2list() {
        return testWeb2list;
    }

    
    public int get�f�[�^����() {
        return testWeb2list.size();
    }
}
