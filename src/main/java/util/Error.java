package util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by lixuanyu
 * on 2017/6/17.
 */
public class Error {
    public static void showError(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setAttribute("message","util.Error");
        response.sendRedirect("index.jsp");
    }
}
