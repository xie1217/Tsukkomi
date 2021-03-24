using BLL;
using MODAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tsukkomi
{
    public partial class Registered : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            //1、获取表单数据
            string username = this.username.Text;
            string nick = this.nickname.Text;
            string passWord = this.password.Text;
            string vertxt = this.Verification.Text;

            //2、校验数据是否为空
            if (username == "")
            {
                //Console.Write();
                Response.Write("<script>alert('请输入用户名');</script>");
                //如果提示错误，不要往后执行
                return;
            }
            if (passWord == "")
            {
                //Console.Write();
                Response.Write("<script>alert('请输入密码');</script>");
                //如果提示错误，不要往后执行
                return;
            }
            if(vertxt!=this.numberCode.Text || vertxt== "请获取验证码")
            {
                Response.Write("<script>alert('验证码错误');</script>");
                //如果提示错误，不要往后执行
                return;
            }
            if (vertxt == "")
            {
                Response.Write("<script>alert('验证码不能为空');</script>");
                //如果提示错误，不要往后执行
                return;
            }

            //3、执行注册功能
            User user = new User()
            {
                username = username,
                password = passWord,
                nickname=nick
            };
            if (UserManager.insertUser(user))
            {
                //Response.Write("<script>alert('注册成功!');</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("<script>alert('注册失败! 用户已存在');</script>");
            }
        }
    }
}