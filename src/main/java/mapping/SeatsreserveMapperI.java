package mapping;

 import java.util.List;
 import domain.Seatsreserve;
 import org.apache.ibatis.annotations.Delete;
 import org.apache.ibatis.annotations.Insert;
 import org.apache.ibatis.annotations.Select;
 import org.apache.ibatis.annotations.Update;
public interface SeatsreserveMapperI {
    //使用@Insert注解指明add方法要执行的SQL
 @Insert("insert into seatsreserve(seatsid,seatsNum,date) values(#{seatsid},#{seatsNum}, #{date})")
    public int add(Seatsreserve user);


    //使用@Update注解指明update方法要执行的SQL
    @Update("update users set name=#{name},age=#{age} where id=#{id}")
   public int update(Seatsreserve user);
   //使用@Select注解指明getById方法要执行的SQL
    @Select("select * from seatsreserve where seatsid=#{id}")
    public Seatsreserve getById(int id);

    @Select("select * from seatsreserve where date=#{date}")
    public List<Seatsreserve> getByDate(String date);
    //使用@Select注解指明getAll方法要执行的SQL
    @Select("select * from seatsreserve")
   public List<Seatsreserve> getAll();
}
