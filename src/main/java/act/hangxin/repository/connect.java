package act.hangxin.repository;

import java.sql.*;
import act.hangxin.model.planeTerm;
import act.hangxin.model.hotelTerm;

public class connect {
	
	
	private Statement stmt;
	String clscd[] = {"R ","F ","P ","A ","C ","D ","Y ","B ","H ","K ","L ","M ","Q ","X ","U ","E ","T ","Z ","J ","V ","N ","I ","W ","G ","O ","S "};
	
	public connect(){
				
		try { 
		     Class.forName("com.mysql.jdbc.Driver");
		     System.out.println("Success loading Mysql Driver!"); 
		} 
		catch (Exception e) { 
		     System.out.print("Error loading Mysql Driver!"); 
		     e.printStackTrace(); 
		}
		try { 
		     Connection connect = DriverManager.getConnection(
		         "jdbc:mysql://localhost:3306/hangxin","root","123456");
		     //Connection connect = DriverManager.getConnection(
			 //        "jdbc:mysql://sqld.duapp.com:4050/AmXwqxqOUbuGnrOmxRPy","68843d83931646adaea9f8719cac8234","8b7cff1582a3478b9ccdfa9c7e683ee7");
		     System.out.println("Success connect Mysql server!"); 
		     stmt = connect.createStatement();
		} 
		catch (Exception e) { 
		     System.out.print("get data error!"); 
		     e.printStackTrace(); 
		}
	}
	
	
	public planeTerm[] getplanelist(String name1,String name2,int rank,int max){
		
		ResultSet planeRS;
		int num = 0;
		planeTerm[] list = new planeTerm[max];  
		
		try{
			String str = new String();
			
			for (int i=0;i < max;i++)
				list[i] = new planeTerm();
			while((num < max)&&(rank>=0)){
				
				str = "select * from plane where rank="+rank+" and name like \'"+name1+"%-"+name2+"%\'";
				rank--;
				System.out.println(str);
				planeRS = stmt.executeQuery(str);
				while ((planeRS.next())&&(num < max)){
					list[num].id =  Integer.parseInt(planeRS.getString("id"));
					list[num].name = planeRS.getString("name");
					list[num].date_leave = planeRS.getString("date_leave");
					list[num].date_arrive = planeRS.getString("date_arrive");
					list[num].time = planeRS.getString("time");
					list[num].rank =  Integer.parseInt(planeRS.getString("rank"));
					String cc = planeRS.getString("cls");
					int iii;
					for (iii=0;iii < 26;iii++){
						if (cc.equals(clscd[iii])) break;
					}
					if (iii < 5) list[num].cls = "经济舱";
                    else if (iii < 10) list[num].cls = "普通舱";
					else if (iii < 15) list[num].cls = "公务舱";
					else list[num].cls = "头等舱";
					list[num].distance =  Double.parseDouble(planeRS.getString("distance"));
					num++;
				}
			}
			
		}
		catch (Exception e) { 
		     System.out.print("get data error!"); 
		     e.printStackTrace(); 
		}
		return list;
	}
	
	
	public hotelTerm[] gethotellist(String name,int rank,int max){
		
		ResultSet hotelRS;
		int num = 0;
		hotelTerm[] list = new hotelTerm[max];  
		
		try{
			String str = new String();
			
			for (int i=0;i < max;i++)
				list[i] = new hotelTerm();
			while((num < max)&&(rank>=0)){
				
				str = "select * from hotel where rank="+rank+" and city=\'"+name+"\'";
				rank--;
				System.out.println(str);
				hotelRS = stmt.executeQuery(str);
				while ((hotelRS.next())&&(num < max)){
					list[num].id =  Integer.parseInt(hotelRS.getString("id"));
					list[num].name = hotelRS.getString("name");
					list[num].city = hotelRS.getString("city");
					list[num].rank =  Integer.parseInt(hotelRS.getString("rank"));
					list[num].address = hotelRS.getString("address");
					int x = list[num].address.indexOf("(");
					if (x>0) list[num].address = list[num].address.substring(0, x);
					list[num].price =  Double.parseDouble(hotelRS.getString("price"));
					num++;
				}
			}
			
		}
		catch (Exception e) { 
		     System.out.print("get data error!"); 
		     e.printStackTrace(); 
		}
		return list;
	}
	
	public int getrank(String sex,String age){
		ResultSet userRS;
		int i = 0;
		String str = new String();
		try{
			str = "select * from user where gender="+sex+" and age="+age;
			System.out.println(str);
			userRS = stmt.executeQuery(str);
			if (userRS.next())
				i = Integer.parseInt(userRS.getString("rank"));
		}
		catch (Exception e) { 
		     System.out.print("get data error!"); 
		     e.printStackTrace(); 
		}
		return i;
	}
	
	public int getrank(String userid){
		
		ResultSet userRS;
		int i = 0;
		String str = new String();
		try{
			str = "select * from user where id="+userid;
			System.out.println(str);
			userRS = stmt.executeQuery(str);
			if (userRS.next())
				i = Integer.parseInt(userRS.getString("rank"));
		}
		catch (Exception e) { 
		     System.out.print("get data error!"); 
		     e.printStackTrace(); 
		}
		return i;
	}
	
	
	public static void main(String[] args) {
		new connect();
	}

}
