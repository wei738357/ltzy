<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NCOV.Default1" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>柳铁职院防疫信息登记</title>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" type="text/css" href="css/jquery.monthpicker.css" />
    <link rel="stylesheet" type="text/css" href="css/m.css" />
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.monthpicker1.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#thesf').change(function () {
                if($(this).children('option:selected').val()=="教师")
                {
                    $("#lblxh").html("工号");
                    $("#thexh").attr("placeholder", "请输入10位教师工号");
                }
                else
                {
                    $("#lblxh").html("学号");
                    $("#thexh").attr("placeholder", "请输入11位学号");
                }
            })
        });

        function check() {
            //身份
            if ($("#thesf").val().trim() != "--请选择--") {
                thesf = $("#thesf").val().trim();
            }
            else {
                alert("【身份】输入不合法，请重新选择");
                return false;
            }
            return true;

        }

    </script>
</head>
<body>
     <form id="form1" runat="server">
        <div class="f_20 c_ffffff mt_75 mb_75 at_c">柳州铁道职业技术学院NCOV在线报告</div>
        <div class="top">
            <div class="f_14"><img src="imgs/12.png" align="absmiddle">&nbsp;登录</div>
            <div class="mt_75 mb_75">
                <p>身份*：<br />
                    <asp:DropDownList ID="thesf" runat="server" CssClass="selecttxt">
                        <asp:ListItem>--请选择--</asp:ListItem>
                        <asp:ListItem>学生</asp:ListItem>
                        <asp:ListItem>教师</asp:ListItem>
                    </asp:DropDownList>
                </p>
                <p><span id="lblxh">工号/学号</span>*：<br />
                    <asp:TextBox ID="thexh" runat="server" placeholder="请输入10位教师工号" CssClass="txt"></asp:TextBox>
                </p>
                <p>身份证号后6位*：<br />
                    <asp:TextBox ID="thesfz" runat="server" placeholder="请输入身份证号后6位" CssClass="txt" TextMode="Password"></asp:TextBox>
                </p>
                <p>姓名*：<br />
                    <asp:TextBox ID="thexm" runat="server" placeholder="请输入姓名" CssClass="txt"></asp:TextBox>
                </p>
                <p>
                    <asp:Label ID="lblmsg" runat="server" ForeColor="#CC0000"></asp:Label>
                </p>
            </div>
        </div>
    
        <div class="mt_75">
            <asp:Button ID="Button1" runat="server" Text="登　录" CssClass="btn btn_green f_24" OnClick="Button1_Click" />
        </div>	
        <div class="mt_75 f_12 at_r">
             防控工作指挥部办公室
        </div>

    </form>
</body>
</html>
