package board.dao;

import board.dto.BoardDto;
import common.JDBConnect;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;

public class BoardDao extends JDBConnect {
    public BoardDao(ServletContext application) {
        super(application);
    }

    public int selectCount(Map<String, Object> map) {
        int totalCount = 0;
        String query = "SELECT COUNT(*) FROM board";
        String searchWord = map == null ? null : (String) map.get("searchWord");
        String searchField = map == null ? null : (String) map.get("searchField");
        boolean hasSearch = searchWord != null && !searchWord.trim().isEmpty();
        boolean validField = "title".equals(searchField) || "content".equals(searchField) || "id".equals(searchField);

        if (hasSearch && validField) {
            String safeSearchWord = searchWord.trim().replace("'", "''");
            query += " WHERE " + searchField + " LIKE '%" + safeSearchWord + "%'";
        }

        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);
            if (rs.next()) {
                totalCount = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return totalCount;
    }

    public List<BoardDto> selectList(Map<String, Object> map) {
        List<BoardDto> boardList = new ArrayList<>();
        String query = "SELECT num, title, content, id, postdate, visitcount FROM board";
        String searchWord = map == null ? null : (String) map.get("searchWord");
        String searchField = map == null ? null : (String) map.get("searchField");
        boolean hasSearch = searchWord != null && !searchWord.trim().isEmpty();
        boolean validField = "title".equals(searchField) || "content".equals(searchField) || "id".equals(searchField);

        if (hasSearch && validField) {
            String safeSearchWord = searchWord.trim().replace("'", "''");
            query += " WHERE " + searchField + " LIKE '%" + safeSearchWord + "%'";
        }
        query += " ORDER BY num DESC";

        try {
            stmt = conn.createStatement();
            rs = stmt.executeQuery(query);
            while (rs.next()) {
                BoardDto dto = new BoardDto();
                dto.setNum(rs.getInt("num"));
                dto.setTitle(rs.getString("title"));
                dto.setContent(rs.getString("content"));
                dto.setId(rs.getString("id"));
                dto.setPostdate(rs.getDate("postdate"));
                dto.setVisitcount(rs.getString("visitcount"));
                boardList.add(dto);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return boardList;
    }
}
