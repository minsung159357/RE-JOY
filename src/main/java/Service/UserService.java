package Service;

import DAO.UserInfoDAO;
import DTO.UserInfoDto;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import util.PasswordUtil;

public class UserService {

    public String authenticateUser(HttpServletRequest request, String id, String pw) throws Exception {
        UserInfoDAO dao = new UserInfoDAO();
        UserInfoDto user = dao.getUserInfo(id, pw);
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("userId", user.getId());
            request.setAttribute("userInfo", user);
            session.setMaxInactiveInterval(60 * 60); // 세션 만료 시간 : 60분
            return user.getId();
        }
        return null;
    }
    
    public boolean checkUserLogin(HttpServletRequest request, String key) throws Exception {
    	HttpSession session = request.getSession();
    	
    	return false;
    }
}
