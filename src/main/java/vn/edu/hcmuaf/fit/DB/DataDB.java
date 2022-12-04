package vn.edu.hcmuaf.fit.DB;

import vn.edu.hcmuaf.fit.controller.Util;
import vn.edu.hcmuaf.fit.model.*;

import java.io.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

public class DataDB {
    private DBConnect dbConnect = DBConnect.getInstance();
    private Statement statement;

    public PreparedStatement getStatement(String query) throws SQLException {
        return dbConnect.getPreparedStatement(query);
    }

    public DataDB() throws SQLException, ClassNotFoundException {
    }
}