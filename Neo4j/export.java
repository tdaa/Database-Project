import java.io.FileWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class export {
  public static void main(String[] args) {

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (Exception e) {
            e.printStackTrace();
        }

    String filename = "funcionarios.csv";
    try {
      String URL = "localhost";
      String SCHEMA = "oficina";
      String USERNAME = "root";
      String PASSWORD = "140697";
      FileWriter fw = new FileWriter(filename);
      Connection conn = DriverManager.getConnection("jdbc:mysql://"+URL+"/"+SCHEMA+"?autoReconnect=true&useSSL=false",USERNAME,PASSWORD);
      String query = "select * from Funcionario";
      Statement stmt = conn.createStatement();
      ResultSet rs = stmt.executeQuery(query);
      fw.append("id,Nome,DataNascimento,Morada,Email");
      fw.append('\n');
      while (rs.next()) {
        fw.append(String.valueOf(rs.getInt(1)));
        fw.append(',');
        fw.append(rs.getString(2));
        fw.append(',');
        fw.append(rs.getString(3));
        fw.append(',');
        fw.append(rs.getString(4));
        fw.append(',');
        fw.append(rs.getString(5));
        fw.append('\n');
      }
      fw.flush();
      fw.close();
      System.out.println("CSV File is created successfully.");


      filename = "serviços.csv";
      fw = new FileWriter(filename);
      query = "select * from Serviço";
      stmt = conn.createStatement();
      rs = stmt.executeQuery(query);
      fw.append("id,Data,Tipo,Notas,idVeiculo");
      fw.append('\n');
      while(rs.next()){
        fw.append(String.valueOf(rs.getInt(1)));
        fw.append(',');
        fw.append(rs.getString(2));
        fw.append(',');
        fw.append(rs.getString(3));
        fw.append(',');
        if(rs.getString(4)!=null){
          String s = rs.getString(4).replaceAll(",", " e");
          fw.append(s);
        }
        else{
          fw.append(rs.getString(4));
        }
        fw.append(',');
        fw.append(String.valueOf(rs.getInt(5)));
        fw.append('\n');
      }
      fw.flush();
      fw.close();
      System.out.println("CSV File is created successfully.");

      filename="peças.csv";
      fw = new FileWriter(filename);
      query = "select * from Peça";
      stmt = conn.createStatement();
      rs = stmt.executeQuery(query);
      fw.append("id,Estado,Modelo,Nome,idServiço");
      fw.append('\n');
      while(rs.next()){
        fw.append(String.valueOf(rs.getInt(1)));
        fw.append(',');
        fw.append(rs.getString(2));
        fw.append(',');
        fw.append(rs.getString(3));
        fw.append(',');
        fw.append(rs.getString(4));
        fw.append(',');
        fw.append(String.valueOf(rs.getInt(5)));
        fw.append('\n');
      }
      fw.flush();
      fw.close();
      System.out.println("CSV File is created successfully");

      filename = "veiculos.csv";
      fw = new FileWriter(filename);
      query = "select * from Veiculo";
      stmt = conn.createStatement();
      rs = stmt.executeQuery(query);
      fw.append("id,Marca,Modelo,Matricula");
      fw.append('\n');
      while(rs.next()){
        fw.append(String.valueOf(rs.getInt(1)));
        fw.append(',');
        fw.append(rs.getString(2));
        fw.append(',');
        fw.append(rs.getString(3));
        fw.append(',');
        fw.append(rs.getString(4));
        fw.append('\n');
      }
      fw.flush();
      fw.close();
      System.out.println("CSV File is created successfully");

      filename = "contactos.csv";
      fw = new FileWriter(filename);
      query = "select * from Contacto";
      stmt = conn.createStatement();
      rs = stmt.executeQuery(query);
      fw.append("Numero,idFuncionario");
      fw.append('\n');
      while(rs.next()){
        fw.append(String.valueOf(rs.getInt(1)));
        fw.append(',');
        fw.append(String.valueOf(rs.getInt(2)));
        fw.append('\n');
      }
      fw.flush();
      fw.close();
      System.out.println("CSV File is created successfully");

      filename = "sfunc.csv";
      fw = new FileWriter(filename);
      query = "select * from ServiçoFuncionario";
      stmt = conn.createStatement();
      rs = stmt.executeQuery(query);
      fw.append("idServiço,idFuncionario");
      fw.append('\n');
      while(rs.next()){
        fw.append(String.valueOf(rs.getInt(1)));
        fw.append(',');
        fw.append(String.valueOf(rs.getInt(2)));
        fw.append('\n');
      }
      fw.flush();
      fw.close();
      conn.close();
      System.out.println("CSV File is created successfully");
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}
