
import br.com.orientacoes.util.Conexao;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

public class GeraBancoDeDados {

    public static void main(String[] args) throws SQLException, IOException {
        final String dir = System.getProperty("user.dir") + "/src/main/webapp/resources/orientacao.sql";
        Conexao conexao = new Conexao();
        Connection c = conexao.conecta();
        c.createStatement().execute(fileToString(dir));
    }

    private static String fileToString(String filename) throws IOException {
        BufferedReader reader = new BufferedReader(new FileReader(filename));
        StringBuilder builder = new StringBuilder();
        String line;

        // For every line in the file, append it to the string builder
        while ((line = reader.readLine()) != null) {
            builder.append(line);
        }

        reader.close();
        return builder.toString();
    }
}
