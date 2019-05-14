package com.mvc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.mapper.FoodMapper;
import com.mvc.vo.Food;
import com.mvc.vo.FoodBean;

@Repository
public class FoodDAOImpl implements FoodDAO {
	@Autowired
	FoodMapper mapper;

	@Override
	public void loadData() {
		// xml을 통한 instance
		// FoodSAXParser parser = new FoodSAXParser();
	}

	@Override
	public int foodCount() {
		return searchAll().size();
	}

	@Override
	public List<Food> searchAll() {
		return mapper.searchAll();
	}

	@Override
	public List<Food> search(String condition, String word) {
		return mapper.search2(condition, "%" + word + "%");
	}

	@Override
	public List<FoodBean> searchBest() {
		return mapper.searchBest();
	}

	@Override
	public List<Food> searchBestIndex() {
		return null;
	}

	@Override
	public Food search(String code) {
		return mapper.search(code);
	}

	@Override
	public int searchCount(String code) {
		return mapper.searchCount(code);
	}

}
/*
 * class MysqlAdapter { // url(jdbc url) // jdbc:protocol 이름, mysql : db이름,
 * DB서버주소, 포트번호 private final String url =
 * "jdbc:mysql://127.0.0.1:3306/safefood?serverTimezone=UTC"; private final
 * String user = "safefood"; private final String password = "tiger"; Connection
 * con; PreparedStatement insertStat; PreparedStatement updateStat;
 * PreparedStatement deleteStat; Statement stat; DataSource ds;
 * 
 * public MysqlAdapter() { try { // JNDI를 사용가능하게 해주는 메소드 InitialContext contenxt
 * = new InitialContext(); // look up을 통해 원하는 대상을 찾아낸다. (공유 자원을 찾아낸다) ds =
 * (DataSource)contenxt.lookup("java:comp/env/jdbc/mysql"); //
 * WebContent\META-INF\context.xml } catch (Exception e) { e.printStackTrace();
 * } }
 * 
 * public ArrayList<Food> selectAll() { String selectQuery =
 * "select * from safefood.food order by name"; ResultSet rs; try { con =
 * ds.getConnection(); stat = con.createStatement(); rs =
 * stat.executeQuery(selectQuery);
 * 
 * ArrayList<Food> list = new ArrayList<>(); while(rs.next()) { String code =
 * rs.getString(1); String name = rs.getString(2); String maker =
 * rs.getString(3); String material = rs.getString(4); String image =
 * rs.getString(5); double supportpereat = rs.getDouble(6); double calory =
 * rs.getDouble(7); double carbo = rs.getDouble(8); double protein =
 * rs.getDouble(9); double fat = rs.getDouble(10); double sugar =
 * rs.getDouble(11); double natrium = rs.getDouble(12); double chole =
 * rs.getDouble(13); double fattyacid = rs.getDouble(14); double transfat =
 * rs.getDouble(15);
 * 
 * list.add(new Food(code, name, maker, material, image, supportpereat, calory,
 * carbo, protein, fat, sugar, natrium, chole, fattyacid, transfat)); } return
 * list; } catch (SQLException e) { e.printStackTrace(); } return null; }
 * 
 * public Food selectOne(String code) { String selectQuery =
 * "select * from safefood.food where code=" + code; ResultSet rs; try { con =
 * ds.getConnection(); stat = con.createStatement(); rs =
 * stat.executeQuery(selectQuery); if(rs.next()) { // 조회 결과가 존재할 경우 String ccode
 * = rs.getString(1); String name = rs.getString(2); String maker =
 * rs.getString(3); String material = rs.getString(4); String image =
 * rs.getString(5); double supportpereat = rs.getDouble(6); double calory =
 * rs.getDouble(7); double carbo = rs.getDouble(8); double protein =
 * rs.getDouble(9); double fat = rs.getDouble(10); double sugar =
 * rs.getDouble(11); double natrium = rs.getDouble(12); double chole =
 * rs.getDouble(13); double fattyacid = rs.getDouble(14); double transfat =
 * rs.getDouble(15);
 * 
 * return new Food(ccode, name, maker, material, image, supportpereat, calory,
 * carbo, protein, fat, sugar, natrium, chole, fattyacid, transfat); } } catch
 * (SQLException e) { e.printStackTrace(); } return null; }
 * 
 * public void insert(Food m) { try { con = ds.getConnection();
 * 
 * insertStat = con.prepareStatement(
 * "insert into safefood.food (code,name,maker,material,image,supportereat,calory,carbo,protein,fat,sugar,natrium,chole,transfat,fattyacid) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"
 * ); insertStat.setString(1, m.getCode()); insertStat.setString(2,
 * m.getName()); insertStat.setString(3, m.getMaker()); insertStat.setString(4,
 * m.getMaterial()); insertStat.setString(5, m.getImage());
 * insertStat.setDouble(6, m.getSupportpereat()); insertStat.setDouble(7,
 * m.getCalory()); insertStat.setDouble(8, m.getCarbo());
 * insertStat.setDouble(9, m.getProtein()); insertStat.setDouble(10,
 * m.getFat()); insertStat.setDouble(11, m.getSugar()); insertStat.setDouble(12,
 * m.getNatrium()); insertStat.setDouble(13, m.getChole());
 * insertStat.setDouble(14, m.getTransfat()); insertStat.setDouble(15,
 * m.getFattyacid());
 * 
 * int cnt = insertStat.executeUpdate(); System.out.println(cnt +
 * "개의 데이터가 추가됨."); } catch (SQLException e) { e.printStackTrace(); } }
 * 
 * public void modify(Food m) { try { con = ds.getConnection(); updateStat =
 * con.
 * prepareStatement("update safefood.food set name=?,maker=?,material=?,image=?,supportereat=?,calory=?,carbo=?,protein=?,fat=?,sugar=?,natrium=?,chole=?,transfat=?,fattyacid=? where code=?"
 * );
 * 
 * updateStat.setString(15, m.getCode()); updateStat.setString(1, m.getName());
 * updateStat.setString(2, m.getMaker()); updateStat.setString(3,
 * m.getMaterial()); updateStat.setString(4, m.getImage());
 * updateStat.setDouble(5, m.getSupportpereat()); updateStat.setDouble(6,
 * m.getCalory()); updateStat.setDouble(7, m.getCarbo());
 * updateStat.setDouble(8, m.getProtein()); updateStat.setDouble(9, m.getFat());
 * updateStat.setDouble(10, m.getSugar()); updateStat.setDouble(11,
 * m.getNatrium()); updateStat.setDouble(12, m.getChole());
 * updateStat.setDouble(13, m.getTransfat()); insertStat.setDouble(14,
 * m.getFattyacid());
 * 
 * int cnt = updateStat.executeUpdate(); System.out.println(cnt +
 * "개의 데이터가 수정됨."); } catch (SQLException e) { e.printStackTrace(); } }
 * 
 * public void delete(String code) { try { con = ds.getConnection(); deleteStat
 * = con.prepareStatement("delete from safefood.food where code=?");
 * 
 * deleteStat.setString(1, code);
 * 
 * int cnt = deleteStat.executeUpdate(); System.out.println(cnt +
 * "개의 데이터가 삭제됨."); } catch (SQLException e) { e.printStackTrace(); } }
 * 
 * public ArrayList<Food> search(String condition, String word) { String
 * selectQuery = "select * from safefood.food where name like '%" + word +
 * "%' or maker like '%" + word + "%' or material like '%" + word +
 * "%' order by name"; ResultSet rs; try { con = ds.getConnection(); stat =
 * con.createStatement(); rs = stat.executeQuery(selectQuery);
 * 
 * ArrayList<Food> list = new ArrayList<>(); while(rs.next()) { String code =
 * rs.getString(1); String name = rs.getString(2); String maker =
 * rs.getString(3); String material = rs.getString(4); String image =
 * rs.getString(5); double supportereat = rs.getDouble(6); double calory =
 * rs.getDouble(7); double carbo = rs.getDouble(8); double protein =
 * rs.getDouble(9); double fat = rs.getDouble(10); double sugar =
 * rs.getDouble(11); double natrium = rs.getDouble(12); double chole =
 * rs.getDouble(13); double transfat = rs.getDouble(14);
 * 
 * list.add(new Food(code, name, maker, material, image)); } return list; }
 * catch (SQLException e) { e.printStackTrace(); } return null; } }
 */
