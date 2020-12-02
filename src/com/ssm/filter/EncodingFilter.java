package com.ssm.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter("/*")
public class EncodingFilter implements Filter {
    /**
     * @Description 拦截设置
     * @Param [req, resp, chain]
     * @return void
     **/
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        // 请求设置编码
        req.setCharacterEncoding("UTF-8");
        // 响应设置编码
        resp.setCharacterEncoding("UTF-8");
        // 放行
        chain.doFilter(req, resp);
    }

    public void destroy() {
    }
    public void init(FilterConfig config) throws ServletException {
    }
}
