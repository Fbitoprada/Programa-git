package conexion;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import cone.Conexion;
public class PacienteCRUD {

    public static void insertar(String nombre, int telefono) {
        String sql = "INSERT INTO paciente (nombre, telefono) VALUES (?, ?)";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, nombre);
            ps.setInt(2, telefono);

            ps.executeUpdate();
            System.out.println("Paciente insertado correctamente");

        } catch (SQLException e) {
            System.out.println("Error al insertar: " + e.getMessage());
        }
    }
    // LISTAR
    public ArrayList<String> listar() {
        ArrayList<String> lista = new ArrayList<>();
        String sql = "SELECT * FROM paciente";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                int id = rs.getInt("id_paciente");
                String nombre = rs.getString("nombre");
                lista.add(id + " | " + nombre );
            }

        } catch (SQLException e) {
            System.out.println("❌ Error al listar: " + e.getMessage());
        }
        return lista;
    }

    // ACTUALIZAR
    public void actualizar(int id, String nuevoNombre, int nuevoTelefono) {
        String sql = "UPDATE paciente SET nombre=?, telefono=? WHERE id_paciente=?";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, nuevoNombre);
            ps.setInt(2, nuevoTelefono);
            ps.setInt(3, id);

            int filas = ps.executeUpdate();
            if (filas > 0) {
                System.out.println("Paciente actualizado correctamente");
            } else {
                System.out.println("No se encontró paciente con ID " + id);
            }

        } catch (SQLException e) {
            System.out.println("Error al actualizar: " + e.getMessage());
        }
    }

    // ELIMINAR
    public void eliminar(int id) {
        String sql = "DELETE FROM paciente WHERE id_paciente=?";
        try (Connection conn = Conexion.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, id);

            int filas = ps.executeUpdate();
            if (filas > 0) {
                System.out.println("Paciente eliminado correctamente");
            } else {
                System.out.println("No se encontró paciente con ID " + id);
            }

        } catch (SQLException e) {
            System.out.println("Error al eliminar: " + e.getMessage());
        }
    }
}
