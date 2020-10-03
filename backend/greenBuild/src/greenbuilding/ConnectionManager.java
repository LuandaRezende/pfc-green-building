package greenbuilding;

import java.sql.Connection;
import java.sql.SQLException;
import org.postgresql.ds.PGPoolingDataSource;

public class ConnectionManager {

    private PGPoolingDataSource dataSource;

    public Connection getConnection() throws SQLException {
        Connection conn = dataSource.getConnection();
        conn.setAutoCommit(false);
        return conn;
    }

    private static ConnectionManager instance;

    private ConnectionManager() {
        dataSource = new PGPoolingDataSource();
        dataSource.setDataSourceName("greenbuilding");
        dataSource.setServerName("localhost");
        dataSource.setDatabaseName("greenbuilding");
        dataSource.setUser("postgres");
        dataSource.setPassword("postgres");

        dataSource.setMaxConnections(10);
        dataSource.setInitialConnections(5);
    }

    public static ConnectionManager getInstance() {
        if (instance == null) {
            instance = new ConnectionManager();
        }
        return instance;
    }

}
