<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NCOV.bm.Default1" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>柳铁职院防疫信息登记</title>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" type="text/css" href="../css/date.css">
    <link rel="stylesheet" type="text/css" href="../css/jquery.monthpicker.css" />
    <link rel="stylesheet" type="text/css" href="../css/m.css" />

    <script src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/date.js"></script>
    <script type="text/javascript" src="../js/iscroll_date.js"></script>
    <script type="text/javascript">
        //基础信息
        var thedate='<%=thedate %>'; //填报日期
        var thesf='<%=thesf %>'; //身份
        var thexh='<%=thexh %>'; //10位教师工号 
        var thesfz='<%=thesfz %>'; //身份证号 
        var thexm='<%=thexm %>'; //姓名
        var thexb = '<%=thexb %>'; //性别
        var thenl = '<%=thenl %>'; //
        var thebm='<%=thebm %>'; //学院-部门
        var thebj='<%=thebj %>'; //班级
        var thedh='<%=thedh %>'; //联系电话

        //来自武汉疫区人员情况表
        var divwhyq_ddl='<%=divwhyq_ddl %>'; //是否来自武汉疫区
        var whyq_yqjzd = '<%=whyq_yqjzd %>'; //在疫区居住地
        var whyq_lzjzd='<%=whyq_lzjzd %>'; //目前在柳居住地
        var whyq_ddlzy='<%=whyq_ddlzy %>'; //是否有咳嗽、胸闷、发烧等不适症状
        var whyq_lyrq='<%=whyq_lyrq %>'; //离开武汉等疫区日期
        var whyq_cc='<%=whyq_cc %>'; //车次/航班/汽车/自驾
        var whyq_tjd='<%=whyq_tjd %>'; //来柳途经停留地点  />
        var whyq_txry='<%=whyq_txry %>'; //同行人员姓名  />

        //到达过武汉疫区人员情况表
        var divdwhyq_ddl='<%=divdwhyq_ddl %>'; //是否到达胡北区
        var divdwhyq_yqjzd = '<%=divdwhyq_yqjzd %>'; //在疫区居住地
        var divdwhyq_yqjzd_sheng = '<%=divdwhyq_yqjzd_sheng %>';//在湖北居住地_省
        var divdwhyq_yqjzd_shi = '<%=divdwhyq_yqjzd_shi %>';//在湖北居住地--市
        var divdwhyq_yqjzd_xian = '<%=divdwhyq_yqjzd_xian %>';//在湖北居住地--县
        var divdwhyq_lzjzd='<%=divdwhyq_lzjzd %>'; //目前在柳居住地
        var divdwhyq_ddlzy = '<%=divdwhyq_ddlzy %>';	//是否有咳嗽、胸闷、发烧等不适症状	
        var divdwhyq_sfhlz = '<%=divdwhyq_sfhlz %>'; //是否返回柳州	
        var divdwhyq_lyrq = '<%=divdwhyq_lyrq %>'; //离开武汉等疫区日期
        var divdwhyq_fhlz = '<%=divdwhyq_fhlz %>'; //到达柳州日期
        var divdwhyq_cc='<%=divdwhyq_cc %>'; //车次/航班/汽车/自驾
        var divdwhyq_tjd='<%=divdwhyq_tjd %>'; //来柳途经停留地点  />
        var divdwhyq_txry = '<%=divdwhyq_txry %>'; //同行人员姓名  />
        var divdwhyq_bz = '<%=divdwhyq_bz %>';//备注

        //密切接触过来自或到达过武汉疫区人员情况表
        var divmqjc_dll='<%=divmqjc_dll %>'; //是否密切接触过来自或到达过武汉疫区人员
        var divmqjc_lzjz='<%=divmqjc_lzjz %>'; //请写目前在柳居住地
        var divmqjc_jcr = '<%=divmqjc_jcr %>'; //接触过疫区人员的姓名
        var divmqjc_jcsj = '<%=divmqjc_jcsj %>'; //接触时间
        var divmqjc_jtms = '<%=divmqjc_jtms %>'; //具体描述
        var divmqjc_whwysbl = '<%=divmqjc_whwysbl %>'; //是否接触武汉外的疑例病例人员
        var divmqjc_whwysbl_xm = '<%=divmqjc_whwysbl_xm %>'; //疑例病人姓名
        var divmqjc_ddlzy='<%=divmqjc_ddlzy %>'; //是否有咳嗽、胸闷、发烧等不适症状	

        //现在武汉出差、休假、旅游、探亲且计划返柳人员表
        var divslry_dll='<%=divslry_dll %>'; //是否在武汉出差、休假、旅游、探亲
        var divslry_yqjz='<%=divslry_yqjz %>'; //在疫区居住地
        var divslry_lzjz='<%=divslry_lzjz %>'; //在柳居住地
        var divslry_fl = '<%=divslry_fl %>';	//是否2月10日返柳，改为返柳时间
        var divslry_zz = '<%=divslry_zz %>';	//症状

        //留校
        var divhjlx_ssap = '<%=divhjlx_ssap %>'; //宿舍
        var divhjlx_hqlx = '<%=divhjlx_hqlx %>'; //后期离校
        var divhjlx_yqlxsj = '<%=divhjlx_yqlxsj %>'; //预计离校日期
        var divhjlx_zz = '<%=divhjlx_zz %>'; //症状

        //可疑症状排查统计表
        var divkyzy_kyzzsm= '<%=divkyzy_kyzzsm %>';//可疑症状说明
        var divkyzy_yljg= '<%=divkyzy_yljg %>';//就医及医疗机构
        var divkyzy_ysbl= '<%=divkyzy_ysbl %>';//是否疑似病例
        var divkyzy_ysblsm= '<%=divkyzy_ysblsm %>';//疑似病例说明
        var divkyzy_fwqz= '<%=divkyzy_fwqz %>';//是否确诊为疑似病例
        var divkyzy_fwqzsm= '<%=divkyzy_fwqzsm %>';//确诊说明
        var divkyzy_zzxssj= '<%=divkyzy_zzxssj %>';//可疑症状消失时间

        //1月10日以来出桂、柳（含已返桂、柳）人员信息表
        var divrybd_ddllz = '<%=divrybd_ddllz %>'; //是否在柳州市
        var divrybd_sffhlz='<%=divrybd_sffhlz %>';//是否返回柳州
        var divrybd_llsj = '<%=divrybd_llsj %>'; //离桂柳时间
        var divrybd_wcdd1_sheng='<%=divrybd_wcdd1_sheng %>';  //外出--省
        var divrybd_wcdd1_shi='<%=divrybd_wcdd1_shi %>';  //外出--市
        var divrybd_wcdd1_xian='<%=divrybd_wcdd1_xian %>'; //外出--县
        var divrybd_mqzz_sheng='<%=divrybd_mqzz_sheng %>'; //目前住址--省
        var divrybd_mqzz_shi='<%=divrybd_mqzz_shi %>';	//目前住址--市
        var divrybd_mqzz_xian='<%=divrybd_mqzz_xian %>';  //目前住址--县
        var divrybd_wcdd1='<%=divrybd_wcdd1 %>'; //外出地点
        var divrybd_wcdd2='<%=divrybd_wcdd2 %>'; //备注
        var divrybd_wcsy='<%=divrybd_wcsy %>'; //外出事由
        var divrybd_fgsj='<%=divrybd_fgsj %>'; //返柳时间
        var divrybd_flgz='<%=divrybd_flgz %>'; //返柳交通工具
        var divrybd_mqzz='<%=divrybd_mqzz %>'; //目前住址
        var divrybd_zz = '<%=divrybd_zz %>'; //健康，或是否有咳嗽、胸闷、发烧等不适症状     
        var divrybd_brzz = '<%=divrybd_brzz %>'; //本人身体状况 
        var divhjlx_dll = '<%=divhjlx_dll %>'; //留校
        var divhjlx_dgsx = '<%=divhjlx_dgsx %>'; //顶岗实习  
        var divkyzy_dll = '<%=divkyzy_dll %>'; //疑是病例 
        var divrybd_fxsj='<%=divrybd_fxsj %>';      //计划返校时间
        var divrybd_wcjjgc='<%=divrybd_wcjjgc %>';    //是否完成居家观察14天
        var divrybd_jztyfx='<%=divrybd_jztyfx %>';    //家长是否同意返校
        var divrybd_fkks='<%=divrybd_fkks %>';      //防控考试是否达80分
        var divrybd_erxy='<%=divrybd_erxy %>';      //二级学院是否同意返校
        var divrybd_jjglgk='<%=divrybd_jjglgk %>';    //居家隔离管控
        var divrybd_bz='<%=divrybd_bz %>';        //备注

        //学生返校后填写
        var divxsrcfk_sffx='<%=divxsrcfk_sffx %>';   //是否返校
        var divxsrcfk_swtw='<%=divxsrcfk_swtw %>';   //学生日常体温_上午
        var divxsrcfk_xwtw='<%=divxsrcfk_xwtw %>';   //学生日常体温_下午
        var divxsrcfk_fkjl='<%=divxsrcfk_fkjl %>';   //遵守防控纪律情况
        var divxsrcfk_zz='<%=divxsrcfk_zz %>';	 //症状
        var divxsrcfk_zljl='<%=divxsrcfk_zljl %>';	 //生病治疗情况记录
        var divxsrcfk_jjgc='<%=divxsrcfk_jjgc %>';   //居家观察情况
        var divxsrcfk_bz='<%=divxsrcfk_bz %>';     //备注


        $(function () {
            //日期控制有时出来，初始化两次
            $("#divrybd_llsj").date();//离柳时间
            $("#divrybd_fgsj").date();//返柳时间
            $("#divrybd_fxsj").date();//返校时间
            $("#divdwhyq_lyrq").date();//五省--离开日期
            $("#divdwhyq_fhlz").date();//五省--拟返回柳州日期

            //来自武汉疫区人员情况表
            $('#divwhyq_ddl').change(function () {
                if ($(this).children('option:selected').val() == "是") {
                    $("#divwhyq").show();
                }
                else{
                    $("#divwhyq").hide();
                }
            })
            //到达过武汉疫区人员情况表
            $('#divdwhyq_ddl').change(function () {
                if ($(this).children('option:selected').val() == "是") {
                    $("#divdwhyq").show();
                }
                else {
                    $("#divdwhyq").hide();
                }
            })
            //密切接触过来自或到达过武汉疫区人员情况表
            $('#divmqjc_dll').change(function () {
                if ($(this).children('option:selected').val() == "是") {
                    $("#divmqjc").show();
                }
                else {
                    $("#divmqjc").hide();
                }
            })
            //现在武汉出差、休假、旅游、探亲且计划2月10日返柳人员
            $('#divslry_dll').change(function () {
                if ($(this).children('option:selected').val() == "是") {
                    $("#divslry").show();
                }
                else {
                    $("#divslry").hide();
                }
            })

            //出柳（含已返柳）人员信息表--是否在柳州
            $('#divrybd_ddllz').change(function () {
                if ($(this).children('option:selected').val() == "否") {
                    $("#divrybd_ddllz_div").show();
                }
                else {
                    $("#divrybd_ddllz_div").hide();
                }
            })

            //留校
            $('#divhjlx_dll').change(function () {
                if ($(this).children('option:selected').val() == "是") {
                    $("#divhjlx").show();
                    //加载初始数据
                    $("#divhjlx_yqlxsj").val(divhjlx_yqlxsj);
                }
                else {
                    $("#divhjlx").hide();
                }
            })

            //疑是病例
            $('#divkyzy_dll').change(function () {
                if ($(this).children('option:selected').val() == "是") {
                    $("#divkyzy").show();
                    //加载初始数据
                    $("#divkyzy_kyzzsm").val(divkyzy_kyzzsm);
                    $("#divkyzy_yljg").val(divkyzy_yljg);
                    $("#divkyzy_ysblsm").val(divkyzy_ysblsm);
                    $("#divkyzy_fwqzsm").val(divkyzy_fwqzsm);
                    $("#divkyzy_zzxssj").val(divkyzy_zzxssj);
                }
                else {
                    $("#divkyzy").hide();
                }
            })

            //昨天22时--今日22时出柳返柳--返回柳州时间
            $('#divrybd_sffhlz').change(function () {
                if ($(this).children('option:selected').val() == "是") {
                    $("#divrybd_sffhlz_shijian").html("•返回柳州日期*");
                    $("#divrybd_sffhlz_jtgj").html("•返回柳州交通工具*");
                }
                else{
                    $("#divrybd_sffhlz_shijian").html("•拟返回柳州日期*");
                    $("#divrybd_sffhlz_jtgj").html("•拟返回柳州交通工具*");
                }
            })

            //学生返校日常报告
            $('#divxsrcfk_sffx').change(function () {
                if ($(this).children('option:selected').val() == "是") {
                    $("#divxsrcfk_sffx_div").show();
                }
                else{
                    $("#divxsrcfk_sffx_div").hide();
                }
            })

            //到达湖北地区---返回柳州时间
            $('#divdwhyq_sfhlz').change(function () {
                if ($(this).children('option:selected').val() == "是") {
                    $("#divdwhyq_lyrq_fhrq").html("•到达柳州时间*");
                    $("#divdwhyq_cc_fs").html("•返柳交通工具*");
                }
                else{
                    $("#divdwhyq_lyrq_fhrq").html("•拟返柳时间*");
                    $("#divdwhyq_cc_fs").html("•拟返柳交通工具*");
                }
            })

            //密切接触---是否接触武汉以外疑拟病例
            $('#divmqjc_whwysbl').change(function () {
                if ($(this).children('option:selected').val() == "是") {
                    $("#divmqjc_whwysbl_xm_div").show();
                }
                else{
                    $("#divmqjc_whwysbl_xm_div").hide();
                }
            })

            //显示/隐藏基本数据
            $("#show_hide").click(function () {
                $("#div_base").toggle();
            })

            BindJBXX();
            BindTab5();

            $("#btnsave").click(function () {
                thedate = thexh = thenl = thedh = divrybd_ddllz = divrybd_llsj = divrybd_wcdd1 = divrybd_wcdd2 = divrybd_wcsy = divrybd_fgsj = divrybd_flgz = divrybd_mqzz = divrybd_zz = divrybd_brzz = divwhyq_ddl = divdwhyq_ddl = divmqjc_dll = divslry_dll = divhjlx_dll = divhjlx_dgsx = divkyzy_dll = divrybd_sffhlz = divrybd_wcdd1_sheng = divrybd_wcdd1_shi = divrybd_wcdd1_xian = divrybd_mqzz_sheng = divrybd_mqzz_shi = divrybd_mqzz_xian = divxsrcfk_sffx = divrybd_fxsj = divrybd_wcjjgc = divrybd_jztyfx = divrybd_fkks = divrybd_erxy = divrybd_jjglgk = divrybd_bz = ""
                //填报日期
                thedate = $("#thedate").val().trim();
                //学号
                thexh = $("#thexh").val().trim();
                //性别
                thexb = $("#thexb").val().trim();
                //
                thenl = $("#thenl").val().trim();
                //电话
                if ($("#thedh").val().trim().length >= 7) {
                    thedh = $("#thedh").val().trim();
                }
                else {
                    alert("【个人及家庭联系方式】输入不合法，填写固话或手机");
                    return;
                }

                if ($("#divdwhyq_ddl").val().trim() == "--请选择--") {
                    alert("【是否到达湖北、广东、浙江、河南、湖南】输入不合法，填选择");
                    return;
                }

                //是否在柳州
                divrybd_ddllz = $("#divrybd_ddllz").val().trim();
                //是否返回柳州
                divrybd_sffhlz = $("#divrybd_sffhlz").val();

                if (divrybd_ddllz == "否") {

                    //外出--省
                    if ($("#divrybd_wcdd1_sheng").val().trim().length >0) {
                        divrybd_wcdd1_sheng = $("#divrybd_wcdd1_sheng").val().trim();
                    }
                    else {
                        alert("【外出地点】填写错误，请选择【省份】");
                        return;
                    }

                    //外出--市
                    if ($("#divrybd_wcdd1_shi").val().trim().length > 0) {
                        divrybd_wcdd1_shi = $("#divrybd_wcdd1_shi").val().trim();
                    }
                    else {
                        alert("【外出地点】填写错误，请选择【市】");
                        return;
                    }

                    //外出--县
                    if ($("#divrybd_wcdd1_xian option").length > 1) {
                        if ($("#divrybd_wcdd1_xian").val().trim().length > 0) {
                            divrybd_wcdd1_xian = $("#divrybd_wcdd1_xian").val().trim();
                        }
                        else {
                            alert("【外出地点】填写错误，请选择【区（县）】");
                            return;
                        }
                    }
                    else
                    {
                        divrybd_wcdd1_xian = "";
                    }


                    //外出--详细
                    if ($("#divrybd_wcdd1").val().trim().length >= 2) {
                        divrybd_wcdd1 = $("#divrybd_wcdd1").val().trim();
                    }
                    else {
                        alert("【外出地点】详细地址不合法，要求大于2字符");
                        return;
                    }


                    //外出事由
                    if ($("#divrybd_wcsy").val().trim().length >= 1) {
                        divrybd_wcsy = $("#divrybd_wcsy").val().trim();
                    }
                    else {
                        alert("【外出事由】输入不合法,要求3个字符以上");
                        return;
                    }
                    //离柳时间
                    divrybd_llsj = $("#divrybd_llsj").val().trim();
                    //返柳时间
                    divrybd_fgsj = $("#divrybd_fgsj").val().trim();
                    
                    //交通工具
                    if ($("#divrybd_flgz").val().trim().length >= 1) {
                        divrybd_flgz = $("#divrybd_flgz").val().trim();
                    }
                    else {
                        alert("【交通工具】输入不合法,要求2个字符以上");
                        return;
                    }
                    //外出备注
                    divrybd_wcdd2 = $("#divrybd_wcdd2").val().replace(/[\r\n]/g, ',');

                    //外出时段2
                    divrybd_wcsd2 = $("#divrybd_wcsd2").val();  
                }

                //目前住址--省
                if ($("#divrybd_mqzz_sheng").val().trim().length > 0) {
                    divrybd_mqzz_sheng = $("#divrybd_mqzz_sheng").val().trim();
                }
                else {
                    alert("【目前所在地】填写错误，请选择【省份】");
                    return;
                }

                //目前住址--市
                if ($("#divrybd_mqzz_shi").val().trim().length > 0) {
                    divrybd_mqzz_shi = $("#divrybd_mqzz_shi").val().trim();
                }
                else {
                    alert("【目前所在地】填写错误，请选择【市】");
                    return;
                }

                //目前住址--县
                if($("#divrybd_mqzz_xian option").length > 1)
                {
                    if ($("#divrybd_mqzz_xian").val().trim().length > 0) {
                        divrybd_mqzz_xian = $("#divrybd_mqzz_xian").val().trim();
                    }
                    else {
                        alert("【目前所在地】填写错误，请选择【区（县）】");
                        return;
                    }
                }
                else
                {
                    divrybd_mqzz_xian = ""
                }

                //目前住址--详细
                if ($("#divrybd_mqzz").val().trim().length >= 2) {
                    divrybd_mqzz = $("#divrybd_mqzz").val().trim();
                }
                else {
                    alert("【目前所在地】输入不合法，要求大于2字符");
                    return;
                }
                //本人身体状况
                if ($("#divrybd_brzz").val().trim().length >= 2) {
                    divrybd_brzz = $("#divrybd_brzz").val().trim();
                }
                else {
                    alert("【目前本人身体状况】输入不合法，要求大于2字符");
                    return;
                }

                //健康
                if ($("#divrybd_zz").val().trim().length >= 2) {
                    divrybd_zz = $("#divrybd_zz").val().trim();
                }
                else {
                    alert("【目前家庭成员身体状况】输入不合法，要求大于2字符");
                    return;
                }

                if (thesf == "学生")
                {
                    //计划返校时间
                    if ($("#divrybd_fxsj").val().trim().length > 4) {
                        divrybd_fxsj = $("#divrybd_fxsj").val();//计划返校时间
                    }
                    else {
                        alert("【计划返校时间】输入不合法，请选择");
                        return;
                    }
                    divrybd_wcjjgc = $("#divrybd_wcjjgc").val();//是否完成居家观察14天
                    divrybd_jztyfx = $("#divrybd_jztyfx").val();//家长是否同意返校
                    divrybd_fkks = $("#divrybd_fkks").val();//防控考试是否达80分
                    divrybd_erxy = $("#divrybd_erxy").val();//二级学院是否同意返校
                }
                //居家隔离管控
                if ($("#divrybd_jjglgk").val().trim().length >= 1) {
                    divrybd_jjglgk = $("#divrybd_jjglgk").val();
                }
                else {
                    alert("【居家观察管控】输入不合法，要求大于1字符");
                    return;
                }
                divrybd_bz = $("#divrybd_bz").val();//备注

                
                //是否来自武汉疫区
                 divwhyq_ddl = $("#divwhyq_ddl").val().trim();
                ////是否到达湖北地区
                 divdwhyq_ddl = $("#divdwhyq_ddl").val().trim();
                ////是否密切接触过来自或到达过武汉疫区人员
                 divmqjc_dll = $("#divmqjc_dll").val().trim();
                //是否在武汉出差、休假、旅游、探亲
                 divslry_dll = $("#divslry_dll").val().trim();
                //是否留校
                 divhjlx_dll = $("#divhjlx_dll").val();
                //是否顶岗学习
                 divhjlx_dgsx = $("#divhjlx_dgsx").val();
                //是否疑是病例
                 divkyzy_dll = $("#divkyzy_dll").val();
                //是否返校
                 divxsrcfk_sffx = $("#divxsrcfk_sffx").val();

                //是否来自武汉疫区
                /*
                 if (divwhyq_ddl == "是")
                 {
                     var iRet = SaveTab1();
                     switch (iRet) {
                         case 1:
                             //alert("保存成功");
                             break;
                         default:
                             alert("填报失败，【来自武汉疫区数据】保存失败");
                             return;
                             break;
                     }
                 }
                 */

                //是否到达湖北地区
                 if (divdwhyq_ddl == "是") {
                     var iRet = SaveTab2();
                     switch (iRet) {
                         case 1:
                             //alert("保存成功");
                             break;
                         default:
                             alert("填报失败，【到达湖北地区数据】保存失败");
                             return;
                             break;
                     }
                 }

                //密切接触疫区人员
                 if (divmqjc_dll == "是") {
                     var iRet = SaveTab3();
                     switch (iRet) {
                         case 1:
                             //alert("保存成功");
                             break;
                         default:
                             alert("填报失败，【密切接触疫区人员】保存失败");
                             return;
                             break;
                     }
                 }

                //疫区计划返柳
                /*
                 if (divslry_dll == "是") {
                     var iRet = SaveTab4();
                     switch (iRet) {
                         case 1:
                             //alert("保存成功");
                             break;
                         default:
                             alert("填报失败，【疫区计划返柳人员】保存失败");
                             return;
                             break;
                     }
                 }
                 */

                //留校
                 if (divhjlx_dll == "是") {
                     var iRet = SaveTab8();
                     switch (iRet) {
                         case 1:
                             //alert("保存成功");
                             break;
                         default:
                             alert("填报失败，【留校数据】保存失败");
                             return;
                             break;
                     }
                 }

                //疑是病例
                 if (divkyzy_dll == "是") {
                     var iRet = SaveTab10();
                     switch (iRet) {
                         case 1:
                             //alert("保存成功");
                             break;
                         default:
                             alert("填报失败，【可疑症状排查填表】保存失败");
                             return;
                             break;
                     }
                 }

                //返校后日常填报
                 if (divxsrcfk_sffx == "是") {
                     var iRet = SaveTab14();
                     switch (iRet) {
                         case 1:
                             //alert("保存成功");
                             break;
                         default:
                             alert("填报失败，【学生日常防控数据】保存失败");
                             return;
                             break;
                     }
                 }

                 if (confirm("您必须承诺自己填报数据真实有效，请确认") == false)
                 {
                     return;
                 }
                
                $.ajax({
                    url: 'Handler5.ashx?t=' + (new Date()).valueOf(),
                    type: 'POST',
                    data: {
                        'thedate':thedate,
                        'thexh':thexh,
                        'thenl':thenl,
                        'thedh':thedh,
                        'divrybd_ddllz': divrybd_ddllz,
                        'divrybd_wcdd1_sheng':divrybd_wcdd1_sheng,
                        'divrybd_wcdd1_shi':divrybd_wcdd1_shi,
                        'divrybd_wcdd1_xian':divrybd_wcdd1_xian,
                        'divrybd_mqzz_sheng':divrybd_mqzz_sheng,
                        'divrybd_mqzz_shi':divrybd_mqzz_shi,
                        'divrybd_mqzz_xian':divrybd_mqzz_xian,
                        'divrybd_llsj':divrybd_llsj,
                        'divrybd_wcdd1':divrybd_wcdd1,
                        'divrybd_wcdd2':divrybd_wcdd2,
                        'divrybd_wcsy':divrybd_wcsy,
                        'divrybd_fgsj':divrybd_fgsj,
                        'divrybd_flgz':divrybd_flgz,
                        'divrybd_mqzz':divrybd_mqzz,
                        'divrybd_zz': divrybd_zz,
                        'divrybd_brzz':divrybd_brzz,
                        'divwhyq_ddl':divwhyq_ddl,
                        'divdwhyq_ddl':divdwhyq_ddl,
                        'divmqjc_dll':divmqjc_dll,
                        'divslry_dll': divslry_dll,
                        'divhjlx_dll': divhjlx_dll,
                        'divhjlx_dgsx': divhjlx_dgsx,
                        'divkyzy_dll': divkyzy_dll,
                        'divrybd_sffhlz': divrybd_sffhlz,
                        'divxsrcfk_sffx':divxsrcfk_sffx,
                        'divrybd_fxsj':divrybd_fxsj,
                        'divrybd_wcjjgc':divrybd_wcjjgc,
                        'divrybd_jztyfx':divrybd_jztyfx,
                        'divrybd_fkks':divrybd_fkks,
                        'divrybd_erxy':divrybd_erxy,
                        'divrybd_jjglgk':divrybd_jjglgk,
                        'divrybd_bz': divrybd_bz
                    },
                    dataType: 'json',
                    timeout: 50000,
                    //contentType: 'application/json;charset=utf-8',  
                    success: function (response) {
                        switch(response*1)
                        {
                            case 0:
                                alert("保存失败");
                                break;
                            case 1:
                                alert("【"+thedate+","+thexm+"】填报成功");
                                break;
                            default:
                                alert("未知错误");
                                break;
                        }
                    },
                    error: function (err) {
                        alert("提交【出桂、柳人员】数据失败");
                    }

                });
                
            })
        });

        function SaveTab1()
        {
            var iRet = -1;
            thedate = thexh = whyq_yqjzd = whyq_lzjzd = whyq_ddlzy = whyq_lyrq = whyq_cc = whyq_tjd = whyq_txry = "";
            //填报日期
            thedate = $("#thedate").val().trim();
            //学号
            thexh = $("#thexh").val().trim();
            whyq_yqjzd = $("#whyq_yqjzd").val().trim();
            whyq_lzjzd = $("#whyq_lzjzd").val().trim();
            whyq_ddlzy = $("#whyq_ddlzy").val().trim();

            //离开武汉等疫区日期
            var reg = /^((((19|20)\d{2})-(0?[13-9]|1[012])-(0?[1-9]|[12]\d|30))|(((19|20)\d{2})-(0?[13578]|1[02])-31)|(((19|20)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|((((19|20)([13579][26]|[2468][048]|0[48]))|(2000))-0?2-29))$/;
            if (reg.test($("#whyq_lyrq").val().trim())) {
                    whyq_lyrq = $("#whyq_lyrq").val().trim();
                }
                else {
                alert("【离开武汉等疫区日期】不合法！如：2020-01-10");
                    return;
            }
            
            whyq_cc = $("#whyq_cc").val().trim();
            whyq_tjd = $("#whyq_tjd").val().trim();
            whyq_txry = $("#whyq_txry").val().trim();

            $.ajax({
                url: 'Handler1.ashx?t=' + (new Date()).valueOf(),
                type: 'POST',
                data: {
                    'thedate': thedate,
                    'thexh': thexh,
                    'whyq_yqjzd': whyq_yqjzd,
                    'whyq_lzjzd': whyq_lzjzd,
                    'whyq_ddlzy': whyq_ddlzy,
                    'whyq_lyrq': whyq_lyrq,
                    'whyq_cc': whyq_cc,
                    'whyq_tjd': whyq_tjd,
                    'whyq_txry': whyq_txry
                },
                dataType: 'json',
                async: false,//同步
                timeout: 50000,
                //contentType: 'application/json;charset=utf-8',  
                success: function (response) {
                    iRet = response * 1;
                },
                error: function (err) {
                    alert("提交【来自武汉疫区】数据失败");
                }

            });
            return iRet;
        }

        function SaveTab2() {
            var iRet = -1;
            thedate = thexh = divdwhyq_yqjzd = divdwhyq_lzjzd = divdwhyq_ddlzy = divdwhyq_lyrq = divdwhyq_cc = divdwhyq_tjd = divdwhyq_txry = divdwhyq_sfhlz = divdwhyq_yqjzd_shi = divdwhyq_yqjzd_xian = divdwhyq_fhlz = divdwhyq_yqjzd_sheng = divdwhyq_bz = "";
            //填报日期
            thedate = $("#thedate").val().trim();
            //学号
            thexh = $("#thexh").val().trim();
            
            divdwhyq_lzjzd = $("#divdwhyq_lzjzd").val().trim();
            divdwhyq_ddlzy = $("#divdwhyq_ddlzy").val().trim();
            divdwhyq_sfhlz = $("#divdwhyq_sfhlz").val().trim();

            //在湖北居住地--省
            if ($("#divdwhyq_yqjzd_sheng").val().trim().length > 0) {
                divdwhyq_yqjzd_sheng = $("#divdwhyq_yqjzd_sheng").val().trim();
            }
            else {
                alert("【在湖北居住地】填写错误，请选择【省份】");
                return;
            }

            //在湖北居住地--市
            if ($("#divdwhyq_yqjzd_shi").val().trim().length > 0) {
                divdwhyq_yqjzd_shi = $("#divdwhyq_yqjzd_shi").val().trim();
            }
            else {
                alert("【在湖北居住地】填写错误，请选择【市】");
                return;
            }

            //在湖北居住地--县
            if ($("#divdwhyq_yqjzd_xian option").length > 1) {
                if ($("#divdwhyq_yqjzd_xian").val().trim().length > 0) {
                    divdwhyq_yqjzd_xian = $("#divdwhyq_yqjzd_xian").val().trim();
                }
                else {
                    alert("【在湖北居住地】填写错误，请选择【区（县）】");
                    return;
                }
            }
            else
            {
                divdwhyq_yqjzd_xian = "";
            }
            //在湖北居住地--详细
            if ($("#divdwhyq_yqjzd").val().trim().length >= 2) {
                divdwhyq_yqjzd = $("#divdwhyq_yqjzd").val().trim();
            }
            else {
                alert("【在湖北居住地】详细地址不合法，要求大于2字符");
                return;
            }

            //离开武汉等疫区日期
            if($("#divdwhyq_lyrq").val().trim()!="无")
            {
                var reg = /^((((19|20)\d{2})-(0?[13-9]|1[012])-(0?[1-9]|[12]\d|30))|(((19|20)\d{2})-(0?[13578]|1[02])-31)|(((19|20)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|((((19|20)([13579][26]|[2468][048]|0[48]))|(2000))-0?2-29))$/;
                if (reg.test($("#divdwhyq_lyrq").val().trim())) {
                    divdwhyq_lyrq = $("#divdwhyq_lyrq").val().trim();
                }
                else {
                    alert("【离开湖北地区日期】不合法！要求如：2020-01-10");
                    return;
                }
            }
            else{
                divdwhyq_lyrq="无"
            }

            //到达柳州日期
            var reg = /^((((19|20)\d{2})-(0?[13-9]|1[012])-(0?[1-9]|[12]\d|30))|(((19|20)\d{2})-(0?[13578]|1[02])-31)|(((19|20)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|((((19|20)([13579][26]|[2468][048]|0[48]))|(2000))-0?2-29))$/;
            if (reg.test($("#divdwhyq_fhlz").val().trim())) {
                divdwhyq_fhlz = $("#divdwhyq_fhlz").val().trim();
            }
            else {
                alert("【"+$("#divdwhyq_lyrq_fhrq").html()+"】不合法！要求如：2020-01-10");
                return;
            }
            
            divdwhyq_cc = $("#divdwhyq_cc").val().trim();
            divdwhyq_tjd = $("#divdwhyq_tjd").val().trim();
            divdwhyq_txry = $("#divdwhyq_txry").val().trim();
            divdwhyq_bz = $("#divdwhyq_bz").val().trim();

            $.ajax({
                url: 'Handler2.ashx?t=' + (new Date()).valueOf(),
                type: 'POST',
                data: {
                    'thedate': thedate,
                    'thexh': thexh,
                    'divdwhyq_yqjzd': divdwhyq_yqjzd,
                    'divdwhyq_yqjzd_sheng':divdwhyq_yqjzd_sheng,
                    'divdwhyq_yqjzd_shi': divdwhyq_yqjzd_shi,
                    'divdwhyq_yqjzd_xian':divdwhyq_yqjzd_xian,
                    'divdwhyq_lzjzd': divdwhyq_lzjzd,
                    'divdwhyq_sfhlz':divdwhyq_sfhlz,
                    'divdwhyq_ddlzy': divdwhyq_ddlzy,
                    'divdwhyq_lyrq': divdwhyq_lyrq,
                    'divdwhyq_fhlz':divdwhyq_fhlz,
                    'divdwhyq_cc': divdwhyq_cc,
                    'divdwhyq_tjd': divdwhyq_tjd,
                    'divdwhyq_txry': divdwhyq_txry,
                    'divdwhyq_bz': divdwhyq_bz
                },
                dataType: 'json',
                async: false,//同步
                timeout: 50000,
                //contentType: 'application/json;charset=utf-8',  
                success: function (response) {
                    iRet = response * 1;
                },
                error: function (err) {
                    alert("提交【到达武汉疫区】数据失败");
                }

            });
            return iRet;
        }

        function SaveTab3() {
            var iRet = -1;
            thedate = thexh = divmqjc_lzjz = divmqjc_jcr = divmqjc_ddlzy = "";
            //填报日期
            thedate = $("#thedate").val().trim();
            //学号
            thexh = $("#thexh").val().trim();

            //请写目前在柳居住地
            if ($("#divmqjc_lzjz").val().trim().length >= 2) {
                divmqjc_lzjz = $("#divmqjc_lzjz").val().trim();
            }
            else {
                alert("【目前在柳居住地】输入不合法，要求大于2字符");
                return;
            }

            //接触过疫区人员的姓名
            if ($("#divmqjc_jcr").val().trim().length >= 2) {
                divmqjc_jcr = $("#divmqjc_jcr").val().trim();
            }
            else {
                alert("【接触过疫区人员的姓名】输入不合法，要求大于2字符");
                return;
            }
            
            //症状
            divmqjc_ddlzy = $("#divmqjc_ddlzy").val().trim();

            //接触时间
            var reg = /^((((19|20)\d{2})-(0?[13-9]|1[012])-(0?[1-9]|[12]\d|30))|(((19|20)\d{2})-(0?[13578]|1[02])-31)|(((19|20)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|((((19|20)([13579][26]|[2468][048]|0[48]))|(2000))-0?2-29))$/;
            if (reg.test($("#divmqjc_jcsj").val().trim())) {
                divmqjc_jcsj = $("#divmqjc_jcsj").val().trim();
            }
            else {
                alert("【接触时间】不合法！正确如：2020-01-10");
                return;
            }

            //具体描述
            if ($("#divmqjc_jtms").val().trim().length >= 2) {
                divmqjc_jtms = $("#divmqjc_jtms").val().trim();
            }
            else {
                alert("【密切接触过程的具体描述】输入不合法，要求大于5字符");
                return;
            }

            divmqjc_whwysbl = $("#divmqjc_whwysbl").val();
            if ($("#divmqjc_whwysbl").val().trim() == "是") {
                if ($("#divmqjc_whwysbl_xm").val().trim().length > 1) {
                    divmqjc_whwysbl_xm = $("#divmqjc_whwysbl_xm").val();
                }
                else {
                    alert("【疑例病人姓名】输入不合法，要求大于2字符");
                    return;
                }
            }
            else
            {
                divmqjc_whwysbl_xm = '无';
            }
            

            $.ajax({
                url: 'Handler3.ashx?t=' + (new Date()).valueOf(),
                type: 'POST',
                data: {
                    'thedate': thedate,
                    'thexh': thexh,
                    'divmqjc_lzjz': divmqjc_lzjz,
                    'divmqjc_jcr': divmqjc_jcr,
                    'divmqjc_jcsj': divmqjc_jcsj,
                    'divmqjc_jtms':divmqjc_jtms,
                    'divmqjc_whwysbl': divmqjc_whwysbl,
                    'divmqjc_whwysbl_xm':divmqjc_whwysbl_xm,
                    'divmqjc_ddlzy': divmqjc_ddlzy
                },
                dataType: 'json',
                async: false,//同步
                timeout: 50000,
                //contentType: 'application/json;charset=utf-8',  
                success: function (response) {
                    iRet = response * 1;
                },
                error: function (err) {
                    alert("提交【密切接触疫区人员】数据失败");
                }

            });
            return iRet;
        }

        function SaveTab4() {
            var iRet = -1;
            thedate = thexh = divslry_yqjz = divslry_lzjz = divslry_fl = "";
            //填报日期
            thedate = $("#thedate").val().trim();
            //学号
            thexh = $("#thexh").val().trim();
            divslry_yqjz = $("#divslry_yqjz").val().trim();
            divslry_lzjz = $("#divslry_lzjz").val().trim();
            divslry_fl = $("#divslry_fl").val().trim();
            divslry_zz = $("#divslry_zz").val().trim();

            $.ajax({
                url: 'Handler4.ashx?t=' + (new Date()).valueOf(),
                type: 'POST',
                data: {
                    'thedate': thedate,
                    'thexh': thexh,
                    'divslry_yqjz': divslry_yqjz,
                    'divslry_lzjz': divslry_lzjz,
                    'divslry_fl': divslry_fl,
                    'divslry_zz': divslry_zz
                },
                dataType: 'json',
                async: false,//同步
                timeout: 50000,
                //contentType: 'application/json;charset=utf-8',  
                success: function (response) {
                    iRet = response * 1;
                },
                error: function (err) {
                    alert("提交【疫区返柳人员】数据失败");
                }

            });
            return iRet;
        }

        function SaveTab8() {
            var iRet = -1;
            thedate = thexh = divhjlx_ssap = divhjlx_hqlx = divhjlx_yqlxsj = divhjlx_zz = "";
            //填报日期
            thedate = $("#thedate").val().trim();
            //学号
            thexh = $("#thexh").val().trim();
            divhjlx_ssap = $("#divhjlx_ssap").val().trim();
            divhjlx_hqlx = $("#divhjlx_hqlx").val().trim();
            //离校日期
            if ($("#divhjlx_yqlxsj").val().trim() != "无") {
                var reg = /^((((19|20)\d{2})-(0?[13-9]|1[012])-(0?[1-9]|[12]\d|30))|(((19|20)\d{2})-(0?[13578]|1[02])-31)|(((19|20)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|((((19|20)([13579][26]|[2468][048]|0[48]))|(2000))-0?2-29))$/;
                if (reg.test($("#divhjlx_yqlxsj").val().trim())) {
                    divhjlx_yqlxsj = $("#divhjlx_yqlxsj").val().trim();
                }
                else {
                    alert("【离校日期】不合法！填无，或离校日期(如2020-01-10)");
                    return;
                }
            }
            else
            {
                divhjlx_yqlxsj = "无";
            }
            
            divhjlx_zz = $("#divhjlx_zz").val().trim();

            $.ajax({
                url: 'Handler8.ashx?t=' + (new Date()).valueOf(),
                type: 'POST',
                data: {
                    'thedate': thedate,
                    'thexh': thexh,
                    'divhjlx_ssap': divhjlx_ssap,
                    'divhjlx_hqlx': divhjlx_hqlx,
                    'divhjlx_yqlxsj': divhjlx_yqlxsj,
                    'divhjlx_zz': divhjlx_zz
                },
                dataType: 'json',
                async: false,//同步
                timeout: 50000,
                //contentType: 'application/json;charset=utf-8',  
                success: function (response) {
                    iRet = response * 1;
                },
                error: function (err) {
                    alert("提交【留校】数据失败");
                }

            });
            return iRet;
        }

        function SaveTab10() {
            var iRet = -1;
            thedate = thexh = divhjlx_ssap = divhjlx_hqlx = divhjlx_yqlxsj = divhjlx_zz = "";
            //填报日期
            thedate = $("#thedate").val().trim();
            //学号
            thexh = $("#thexh").val().trim();
            //是否可疑症状
            divkyzy_dll = $("#divkyzy_dll").val().trim();
            //可疑症状说明
            if ($("#divkyzy_kyzzsm").val().trim().length >= 1) {
                divkyzy_kyzzsm = $("#divkyzy_kyzzsm").val().trim();
            }
            else {
                alert("【可疑症状说明】输入不合法，要求大于2字符");
                return;
            }
            divkyzy_yljg = $("#divkyzy_yljg").val().trim();
            divkyzy_ysbl = $("#divkyzy_ysbl").val().trim();
            divkyzy_ysblsm = $("#divkyzy_ysblsm").val().trim();
            divkyzy_fwqz = $("#divkyzy_fwqz").val().trim();
            divkyzy_fwqzsm = $("#divkyzy_fwqzsm").val().trim();
            //可疑症状消失时间
            if ($("#divkyzy_zzxssj").val().trim() != "无") {
                var reg = /^((((19|20)\d{2})-(0?[13-9]|1[012])-(0?[1-9]|[12]\d|30))|(((19|20)\d{2})-(0?[13578]|1[02])-31)|(((19|20)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|((((19|20)([13579][26]|[2468][048]|0[48]))|(2000))-0?2-29))$/;
                if (reg.test($("#divkyzy_zzxssj").val().trim())) {
                    divkyzy_zzxssj = $("#divkyzy_zzxssj").val().trim();
                }
                else {
                    alert("【可疑症状消失时间】不合法！填无，或离校日期(如2020-01-10)");
                    return;
                }
            }

            $.ajax({
                url: 'Handler10.ashx?t=' + (new Date()).valueOf(),
                type: 'POST',
                data: {
                    'thedate': thedate,
                    'thexh': thexh,
                    'divkyzy_dll':divkyzy_dll,
                    'divkyzy_kyzzsm': divkyzy_kyzzsm,
                    'divkyzy_yljg': divkyzy_yljg,
                    'divkyzy_ysbl': divkyzy_ysbl,
                    'divkyzy_ysblsm': divkyzy_ysblsm,
                    'divkyzy_fwqz':divkyzy_fwqz,
                    'divkyzy_fwqzsm':divkyzy_fwqzsm,
                    'divkyzy_zzxssj':divkyzy_zzxssj
                },
                dataType: 'json',
                async: false,//同步
                timeout: 50000,
                //contentType: 'application/json;charset=utf-8',  
                success: function (response) {
                    iRet = response * 1;
                },
                error: function (err) {
                    alert("提交【疑似症状说明】数据失败");
                }

            });
            return iRet;
        }

        function SaveTab14() {
            var iRet = -1;
            thedate = thexh = divxsrcfk_swtw = divxsrcfk_xwtw = divxsrcfk_fkjl = divxsrcfk_zz = divxsrcfk_zljl = divxsrcfk_jjgc = divxsrcfk_bz = "";
            //填报日期
            thedate = $("#thedate").val().trim();
            //学号
            thexh = $("#thexh").val().trim();

            //上午体温
            var reg = /^[3-4]{1}\d{1}\.\d{1}$/;
            if (reg.test($("#divxsrcfk_swtw").val().trim())) {
                divxsrcfk_swtw = $("#divxsrcfk_swtw").val().trim();
            }
            else {
                alert("【上午体温】输入不合法,要求一位小数");
                return;
            }

            //下午体温
            var reg = /^[3-4]{1}\d{1}\.\d{1}$/;
            if (reg.test($("#divxsrcfk_xwtw").val().trim())) {
                divxsrcfk_xwtw = $("#divxsrcfk_xwtw").val().trim();
            }
            else {
                alert("【下午体温】输入不合法,要求一位小数");
                return;
            }

            divxsrcfk_fkjl = $("#divxsrcfk_fkjl").val().trim();
            divxsrcfk_zz = $("#divxsrcfk_zz").val().trim();
            divxsrcfk_zljl = $("#divxsrcfk_zljl").val().trim();
            divxsrcfk_jjgc = $("#divxsrcfk_jjgc").val().trim();
            divxsrcfk_bz = $("#divxsrcfk_bz").val().trim();

            $.ajax({
                url: 'Handler14.ashx?t=' + (new Date()).valueOf(),
                type: 'POST',
                data: {
                    'thedate': thedate,
                    'thexh': thexh,
                    'divxsrcfk_swtw': divxsrcfk_swtw,
                    'divxsrcfk_xwtw': divxsrcfk_xwtw,
                    'divxsrcfk_fkjl': divxsrcfk_fkjl,
                    'divxsrcfk_zz': divxsrcfk_zz,
                    'divxsrcfk_zljl': divxsrcfk_zljl,
                    'divxsrcfk_jjgc': divxsrcfk_jjgc,
                    'divxsrcfk_bz': divxsrcfk_bz
                },
                dataType: 'json',
                async: false,//同步
                timeout: 50000,
                //contentType: 'application/json;charset=utf-8',  
                success: function (response) {
                    iRet = response * 1;
                },
                error: function (err) {
                    alert("提交【疑似症状说明】数据失败");
                }

            });
            return iRet;
        }


        function BindJBXX()
        {
            $("#thedate").val(thedate); //填报日期
            $("#thesf").val(thesf); //身份
            $("#thexh").val(thexh); //10位教师工号 
            $("#thesfz").val(thesfz); //身份证号 
            $("#thexm").val(thexm); //姓名
            $("#thexb").val(thexb); //性别
            $("#thenl").val(thenl); //年铃
            $("#thebm").val(thebm); //学院-部门
            $("#thebj").val(thebj); //班级
            $("#thedh").val(thedh); //联系电话

            if(thesf=="学生")
            {
                $("#divbj").show();
                $("#div2020lx").show();
                $("divmqjc_lzjz_span").val("•目前在柳居住地（填写学校宿舍号）*");
                $("#divrybd_xsdiv").show();
                //学生返校后启用
                $("#divxsrcf").hide();
            }
            else
            {
                $("#divbj").hide();
                $("#div2020lx").hide();
                $("#divrybd_xsdiv").hide();
                $("#divxsrcf").hide();
            }
        }

        function BindTab1() {
            $("#divwhyq_ddl option[value='是']").prop("selected", true);
            $("#divwhyq").show();

            $("#whyq_yqjzd").val(whyq_yqjzd);
            $("#whyq_lzjzd").val(whyq_lzjzd);
            $("#whyq_lyrq").val(whyq_lyrq);
            $("#whyq_cc").val(whyq_cc);
            $("#whyq_tjd").val(whyq_tjd);
            $("#whyq_txry").val(whyq_txry);
            if (whyq_ddlzy == "是") {
                $("#whyq_ddlzy option[value='是']").prop("selected", true);
            }
        }

        function BindTab2() {
            $("#divdwhyq_ddl option[value='是']").prop("selected", true);
            $("#divdwhyq").show();

            $("#divdwhyq_yqjzd").val(divdwhyq_yqjzd);
            $("#divdwhyq_lzjzd").val(divdwhyq_lzjzd);
            $("#divdwhyq_lyrq").val(divdwhyq_lyrq);
            $("#divdwhyq_cc").val(divdwhyq_cc);
            $("#divdwhyq_tjd").val(divdwhyq_tjd);
            $("#divdwhyq_txry").val(divdwhyq_txry);
            $("#divdwhyq_bz").val(divdwhyq_bz);

            if (divdwhyq_ddlzy == "是") {
                $("#divdwhyq_ddlzy option[value='是']").prop("selected", true);
            }
            if (divdwhyq_sfhlz == "是") {
                $("#divdwhyq_sfhlz option[value='是']").prop("selected", true);
                ////加载默认值数据
                $("#divdwhyq_lyrq_fhrq").html("•到达柳州时间*");
                $("#divdwhyq_cc_fs").html("•返柳交通工具*");
            }
            else
            {
                $("#divdwhyq_lyrq_fhrq").html("•拟返柳时间*");
                $("#divdwhyq_cc_fs").html("•拟返柳交通工具*");
            }
            $("#divdwhyq_fhlz").val(divdwhyq_fhlz);
        }

        function BindTab3() {
            $("#divmqjc_dll option[value='是']").prop("selected", true);
            $("#divmqjc").show();

            $("#divmqjc_lzjz").val(divmqjc_lzjz);
            $("#divmqjc_jcr").val(divmqjc_jcr);
            $("#divmqjc_jtms").val(divmqjc_jtms);
            $("#divmqjc_jcsj").val(divmqjc_jcsj);
            if (divmqjc_ddlzy == "是") {
                $("#divmqjc_ddlzy option[value='是']").prop("selected", true);
            }
            if (divmqjc_whwysbl == "是") {
                $("#divmqjc_whwysbl option[value='是']").prop("selected", true);
                $("#divmqjc_whwysbl_xm").val(divmqjc_whwysbl_xm);
                $("#divmqjc_whwysbl_xm_div").show();
            }
            else
            {
                $("#divmqjc_whwysbl_xm_div").hide();
                $("#divmqjc_whwysbl_xm").val("无");
            }

        }

        function BindTab4() {
            $("#divslry_dll option[value='是']").prop("selected", true);
            $("#divslry").show();

            $("#divslry_yqjz").val(divslry_yqjz);
            $("#divslry_lzjz").val(divslry_lzjz);
            $("#divslry_fl").val(divslry_fl);
            if (divslry_zz == "是") {
                $("#divslry_zz option[value='是']").prop("selected", true);
            }
        }

        function BindTab8() {
            $("#divhjlx_dll option[value='是']").prop("selected", true);
            $("#divhjlx").show();

            $("#divhjlx_ssap").val(divhjlx_ssap);
            $("#divhjlx_yqlxsj").val(divhjlx_yqlxsj);
            if (divhjlx_hqlx == "否") {
                $("#divhjlx_hqlx option[value='否']").prop("selected", true);
            }
            if (divhjlx_zz == "是") {
                $("#divhjlx_zz option[value='是']").prop("selected", true);
            }
        }

        function BindTab10()
        {
            $("#divkyzy_dll option[value='是']").prop("selected", true);
            $("#divkyzy").show();

            $("#divkyzy_kyzzsm").val(divkyzy_kyzzsm);
            $("#divkyzy_yljg").val(divkyzy_yljg);
            $("#divkyzy_ysblsm").val(divkyzy_ysblsm);
            $("#divkyzy_fwqzsm").val(divkyzy_fwqzsm);
            $("#divkyzy_zzxssj").val(divkyzy_zzxssj);

            if (divkyzy_ysbl == "是") {
                $("#divkyzy_ysbl option[value='是']").prop("selected", true);
            }
            if (divkyzy_fwqz == "是") {
                $("#divkyzy_fwqz option[value='是']").prop("selected", true);
            }
        }

        function BindTab14()
        {
            $("#divxsrcfk_sffx option[value='是']").prop("selected", true);
            $("#divxsrcfk_sffx_div").show();

            $("#divxsrcfk_swtw").val(divxsrcfk_swtw);
            $("#divxsrcfk_xwtw").val(divxsrcfk_xwtw);
            $("#divxsrcfk_fkjl").val(divxsrcfk_fkjl);
            $("#divxsrcfk_zljl").val(divxsrcfk_zljl);
            $("#divxsrcfk_jjgc").val(divxsrcfk_jjgc);
            $("#divxsrcfk_bz").val(divxsrcfk_bz);

            if (divxsrcfk_zz == "是") {
                $("#divxsrcfk_zz option[value='是']").prop("selected", true);
            }
        }

        function BindTab5() {

            //外出-省市县
            if (divrybd_wcdd1_sheng.length > 0 && divrybd_wcdd1_shi.length > 0)
            {
                $("#divrybd_wcdd1_ssx").distpicker({
                    province: divrybd_wcdd1_sheng,
                    city: divrybd_wcdd1_shi,
                    district: divrybd_wcdd1_xian
                });
            }
            else
            {
                $('#divrybd_wcdd1_ssx').distpicker('reset', true);
            }
            //目前住址-省市县
            if (divrybd_mqzz_sheng.length > 0 && divrybd_mqzz_shi.length > 0) {
                $("#divrybd_mqzz_ssx").distpicker({
                    province: divrybd_mqzz_sheng,
                    city: divrybd_mqzz_shi,
                    district: divrybd_mqzz_xian
                });
            }
            else {
                $('#divrybd_mqzz_ssx').distpicker('reset', true);
            }

            ////目前住址
            $("#divrybd_mqzz").val(divrybd_mqzz);
            $("#thedh").val(thedh);
            $("#divrybd_llsj").val(divrybd_llsj);
            $("#divrybd_fgsj").val(divrybd_fgsj);
            $("#divrybd_flgz").val(divrybd_flgz);
            $("#divrybd_wcdd1").val(divrybd_wcdd1);
            $("#divrybd_wcdd2").val(divrybd_wcdd2);
            $("#divrybd_wcsy").val(divrybd_wcsy);
            $("#divrybd_zz").val(divrybd_zz);
            $("#divrybd_brzz").val(divrybd_brzz);
            $("#divrybd_jjglgk").val(divrybd_jjglgk);//居家隔离管控
            $("#divrybd_bz").val(divrybd_bz);//备注

            //出柳（含已返柳）人员信息表--是否在柳州
            if (divrybd_ddllz == "是") {
                $("#divrybd_ddllz option[value='是']").prop("selected", true);
                //加载默认值数据
                $("#divrybd_ddllz_div").hide();
            }
            else {
                $("#divrybd_ddllz_div").show();
            }


            //是否返柳
            if (divrybd_sffhlz == "是") {
                $("#divrybd_sffhlz option[value='是']").prop("selected", true);
                //加载默认值数据
                $("#divrybd_sffhlz_shijian").html("返回柳州日期*");
                $("#divrybd_sffhlz_jtgj").html("返回柳州交通工具*");
            }
            else
            {
                $("#divrybd_sffhlz_shijian").html("拟返回柳州日期*");
                $("#divrybd_sffhlz_jtgj").html("拟返回柳州交通工具*");
            }

            //是否顶岗实习
            if (divhjlx_dgsx == "是") {
                $("#divhjlx_dgsx option[value='是']").prop("selected", true);
            }

            $("#divrybd_fxsj").val(divrybd_fxsj);//计划返校时间
            //是否完成居家观察14天
            if (divrybd_wcjjgc == "是") {
                $("#divrybd_wcjjgc option[value='是']").prop("selected", true);
            }
            //家长是否同意返校
            if (divrybd_jztyfx == "是") {
                $("#divrybd_jztyfx option[value='是']").prop("selected", true);
            }
            //防控考试是否达80分
            if (divrybd_fkks == "是") {
                $("#divrybd_fkks option[value='是']").prop("selected", true);
            }
            //二级学院是否同意返校
            if (divrybd_erxy == "是") {
                $("#divrybd_erxy option[value='是']").prop("selected", true);
            }

            //是否来自武汉疫区
            if (divwhyq_ddl == "是") {
                BindTab1();
            }
            //到达武汉疫区
            if (divdwhyq_ddl == "是") {
                BindTab2();
                //初始化省市县
                if (divdwhyq_yqjzd_shi.length > 0 && divdwhyq_yqjzd_xian.length > 0) {
                    $("#divdwhyq_yqjzd_ssx").distpicker({
                        province: divdwhyq_yqjzd_sheng,
                        city: divdwhyq_yqjzd_shi,
                        district: divdwhyq_yqjzd_xian
                    });
                }
                else
                {
                    $('#divdwhyq_yqjzd_ssx').distpicker('reset', true);
                    $('#divdwhyq_yqjzd_sheng option').each(function () {
                        if (!($(this).val() == "" || $(this).val() == "湖北省" || $(this).val() == "广东省" || $(this).val() == "浙江省" || $(this).val() == "河南省" || $(this).val() == "湖南省")) {
                            $(this).remove();
                        }
                    })
                }
            }
            else
            {
                $("#divdwhyq_ddl option[value='" + divdwhyq_ddl + "']").prop("selected", true);
                $('#divdwhyq_yqjzd_ssx').distpicker('reset', true);
                $('#divdwhyq_yqjzd_sheng option').each(function () {
                     if(!($(this).val() == "" || $(this).val() == "湖北省" || $(this).val() == "广东省" || $(this).val() == "浙江省" || $(this).val() == "河南省" || $(this).val() == "湖南省")){
                        $(this).remove();  
                     }
                })
            }

            //是否密切接触过来自或到达过武汉疫区人员
            if (divmqjc_dll == "是") {
                BindTab3();
            }

            //疫区返柳人员
            if (divslry_dll == "是") {
                BindTab4();
            }

            //是否留校
            if (divhjlx_dll == "是") {
                BindTab8();
            }

            //疑是病例
            if (divkyzy_dll == "是") {
                BindTab10();
            }

            //学生返校
            if (divxsrcfk_sffx == "是") {
                BindTab14();
            }

        }

    </script>
</head>
<body>
    <div class="f_20 c_ffffff mt_75 mb_75 at_c">柳州铁道职业技术学院防疫在线报告</div>
    <!-- 日期容器 -->
    <div id="datePlugin"></div>	
    <div class="top  ml_6 mr_6">
        <div><div class="f_14 fl"><img src="../imgs/4.png" align="absmiddle">&nbsp;基本信息</div><div class="fr"><input type="button" id="show_hide" value="展开/隐藏基本信息" /></div></div>
        <div class="cls"></div>
        <div class="mt_75 mb_75">
            <p class="mt_75 mb_75">•填报日期(截止当天22:00)：<br />
                <input type="text" class="txt" id="thedate" readonly="readonly" />
            </p>
            <p class="mt_75 mb_75">•姓名：<br />
                <input type="text" class="txt" id="thexm" placeholder="请输入姓名" readonly="readonly"  />
            </p>
            <p class="mt_75 mb_75">•个人及家庭联系方式*：<br />
                <input type="text" class="txt" id="thedh" placeholder="请输入不合法，填写固话或手机"  />
            </p>
                <div id="div_base" style="display:none">
                    <p class="mt_75 mb_75">•身份：<br />
                          <input type="text" class="txt" id="thesf" readonly="readonly" />
                    </p>
                    <p class="mt_75 mb_75"><span id="lblxh">•工号/学号</span>：<br />
                        <input type="text" class="txt" id="thexh"  placeholder="请输入10位教师工号" readonly="readonly"   />
                    </p>
                    <p class="mt_75 mb_75">•身份证：<br />
                        <input type="text" class="txt" id="thesfz" placeholder="请输入身份证号" readonly="readonly" />
                    </p>
                    <p class="mt_75 mb_75">•性别：<br />
                        <input type="text" class="txt" id="thexb" placeholder="请输入性别" readonly="readonly"  />
                    </p>
                    <p class="mt_75 mb_75">•年龄：<br />
                        <input type="text" class="txt" id="thenl" placeholder="请输入" readonly="readonly"  />
                    </p>
                     <p class="mt_75 mb_75">•学院/部门：<br />
                         <input type="text" class="txt" id="thebm" placeholder="请输入学院/部门" readonly="readonly"  />
                    </p>
                    <div  id="divbj">
                        <p class="mt_75 mb_75"><span id="lblbj">•班级</span>*：<br />
                            <input type="text" class="txt" id="thebj" placeholder="请输入班级" />
                        </p>
                    </div>
                </div>
            </div>
    </div>
    <div class="conent mt_6  ml_6 mr_6" style="display:none;">
        <div class="f_14"><img src="../imgs/2.png" align="absmiddle">&nbsp;来自武汉疫区人员情况表</div>
        <div class="mt_75 mb_75">
            <p class="c_red mt_75 mb_75">•是否来自武汉疫区*：<br />
                <select  id="divwhyq_ddl"  class="selecttxt">
                    <option value="否">否</option>
                    <option value="是">是</option>
                </select>
            </p>
            <div id="divwhyq" style="display:none;">
            <p class="c_red mt_75 mb_75">•在疫区居住地*：<br />
                <input type="text" class="txt" id="whyq_yqjzd" placeholder="请填写在疫区居住地"   />
            </p>
            <p class="c_red mt_75 mb_75">•目前在柳居住地：<br />
                <input type="text" class="txt" id="whyq_lzjzd" placeholder="请填写目前在柳居住地"   />
            </p>
            <p class="c_red mt_75 mb_75">•是否有咳嗽、胸闷、发烧等不适症状：<br />
                <select  id="whyq_ddlzy"  class="selecttxt">
                    <option value="否">否</option>
                    <option value="是">是</option>
                </select>
            </p>
            <p class="c_red mt_75 mb_75">•离开武汉等疫区日期*：<br />
                <input type="text" class="txt" id="whyq_lyrq" placeholder="请填离开武汉等疫区日期，如2020-01-10"   />
            </p>
            <p class="c_red mt_75 mb_75">•车次/航班/汽车/自驾*：<br />
                <input type="text" class="txt" id="whyq_cc" placeholder="请填写车次/航班/汽车/自驾"   />
            </p>
             <p class="c_red mt_75 mb_75"•>途经地*：<br />
                <input type="text" class="txt" id="whyq_tjd" placeholder="请输入来柳途经停留地点"  />
             </p>
            <p class="c_red mt_75 mb_75">•同行人员姓名*：<br />
                <input type="text" class="txt" id="whyq_txry" placeholder="请填写同行人员姓名"  />
            </p>
           </div>
        </div>
    </div>
    <div class="conent mt_6 ml_6 mr_6">
        <div class="f_14"><img src="../imgs/3.png" align="absmiddle">&nbsp;到达过湖北、广东、浙江、河南、湖南地区情况表</div>
        <div class="mt_75 mb_75">
            <p class="c_red mt_75 mb_75">•是否到达湖北、广东、浙江、河南、湖南*：<br />
                <select  id="divdwhyq_ddl"  class="selecttxt">
                    <option value="--请选择--">--请选择--</option>
                    <option value="否">否</option>
                    <option value="是">是</option>
                </select>
            </p>
            <div id="divdwhyq" style="display:none;">
            <div class="mt_75 mb_75"><span class="c_red">•所在地区详细居住地*</span>：
                <div id="divdwhyq_yqjzd_ssx"  class="mb_6">
                          <select id="divdwhyq_yqjzd_sheng" class="selecttxt1" style="width:73px;"></select>
                          <select id="divdwhyq_yqjzd_shi" class="selecttxt1" style="width:120px;"></select>
                          <select id="divdwhyq_yqjzd_xian" class="selecttxt1"></select>
                    </div>
                <input type="text" class="txt" id="divdwhyq_yqjzd" placeholder="请填写详细居住地，到xx街道，xx门牌"   />
            </div>
            <p class="c_red mt_75 mb_75">•在柳州常住地*：<br />
                <input type="text" class="txt" id="divdwhyq_lzjzd" placeholder="请填写目前在柳居住地"   />
            </p>
            <p class="c_red mt_75 mb_75">•是否有咳嗽、胸闷、发烧等不适症状：<br />
                <select  id="divdwhyq_ddlzy"  class="selecttxt">
                    <option value="否">否</option>
                    <option value="是">是</option>
                </select>
            </p>
            <p class="c_red mt_75 mb_75">•备注（特殊情况说明）*：<br />
                <input type="text" class="txt" id="divdwhyq_bz" placeholder="请填写其他情况说明"   />
            </p>
            <p class="c_red mt_75 mb_75">•离开湖北、广东、浙江、河南、湖南等地区日期*：<br />
                <input type="text" class="txt" id="divdwhyq_lyrq" placeholder="请填无，或离开湖北日期（如2020-01-10）"   />
            </p>
            <p class="c_red mt_75 mb_75">•是否回柳州：<br />
                <select  id="divdwhyq_sfhlz"  class="selecttxt">
                    <option value="否">否</option>
                    <option value="是">是</option>
                </select>
            </p>
            <p class="c_red mt_75 mb_75"><span id="divdwhyq_lyrq_fhrq">•拟返回柳州日期*</span>：<br />
                <input type="text" class="txt" id="divdwhyq_fhlz" placeholder="请填返回柳州日期，如2020-01-10"   />
            </p>
            <p class="c_red mt_75 mb_75"><span id="divdwhyq_cc_fs">•拟返回柳州交通工具*</span>：<br />
                <input type="text" class="txt" id="divdwhyq_cc" placeholder="请填写车次/航班/汽车/自驾"   />
            </p>
             <p class="c_red mt_75 mb_75">•途经地*：<br />
                <input type="text" class="txt" id="divdwhyq_tjd" placeholder="请输入来柳途经停留地点"  />
             </p>
            <p class="c_red mt_75 mb_75">•同行人员姓名*：<br />
                <input type="text" class="txt" id="divdwhyq_txry" placeholder="请填写同行人员姓名"  />
            </p>
           </div>
        </div>
    </div>
    <div class="conent mt_6 ml_6 mr_6">
        <div class="f_14"><img src="../imgs/8.png" align="absmiddle">&nbsp;密切接触过来自或到达过武汉疫区人员情况表</div>
        <div class="mt_75 mb_75">
            <p class="c_red mt_75 mb_75">•是否密切接触过来自或到达过武汉疫区人员*：<br />
                <select  id="divmqjc_dll"  class="selecttxt">
                    <option value="否">否</option>
                    <option value="是">是</option>
                </select>
            </p>
            <div id="divmqjc" style="display:none;">
            <p class="mt_75 mb_75"><span id="divmqjc_lzjz_span" class="c_red">•目前在柳居住地*</span>：<br />
                <input type="text" class="txt" id="divmqjc_lzjz" placeholder="请写目前在柳居住地"   /><br />
            </p>
            <p class="c_red mt_75 mb_75">•接触时间*：<br />
                <input type="text" class="txt" id="divmqjc_jcsj" placeholder="请填接触时间，如2020-01-10"   />
            </p>
            <p class="c_red mt_75 mb_75">•接触过疫区人员的姓名：<br />
                <input type="text" class="txt" id="divmqjc_jcr" placeholder="请填接触过疫区人员的姓名"   />
            </p>
            <p class="c_red mt_75 mb_75">•密切接触过程的具体描述*：<br />
                <input type="text" class="txt" id="divmqjc_jtms" placeholder="请填写具体描述"   /><br />
                <span style="color:#666;">在xx地方，与xx接触人，共同参与xx活动</span>
            </p>
            <p class="c_red mt_75 mb_75">•是否接触武汉外的疑例病例人员*：<br />
                <select  id="divmqjc_whwysbl"  class="selecttxt">
                    <option value="否">否</option>
                    <option value="是">是</option>
                </select>
            </p>
            <div id="divmqjc_whwysbl_xm_div" style="display:none;">
                <p class="c_red mt_75 mb_75">•疑例病人姓名*：<br />
                    <input type="text" class="txt" id="divmqjc_whwysbl_xm" placeholder="请填疑例病人姓名"   />
                </p>
            </div>
            <p class="c_red mt_75 mb_75">•是否有咳嗽、胸闷、发烧等不适症状：<br />
                <select  id="divmqjc_ddlzy"  class="selecttxt">
                    <option value="否">否</option>
                    <option value="是">是</option>
                </select>
            </p>
           </div>
        </div>
    </div>
    <div class="conent mt_6 ml_6 mr_6" style="display:none;">
        <div class="f_14"><img src="../imgs/13.png" align="absmiddle">&nbsp;现在武汉出差、休假、旅游、探亲且计划返柳人员表</div>
        <div class="mt_75 mb_75">
            <p class="c_red mt_75 mb_75">•是否在武汉出差、休假、旅游、探亲*：<br />
                <select  id="divslry_dll"  class="selecttxt">
                    <option value="否">否</option>
                    <option value="是">是</option>
                </select>
            </p>
            <div id="divslry" style="display:none;">
            <p class="c_red mt_75 mb_75">•在疫区居住地*：<br />
                <input type="text" class="txt" id="divslry_yqjz" placeholder="请填写在疫区居住地"   />
            </p>
            <p class="c_red mt_75 mb_75">•目前在柳居住地*：<br />
                <input type="text" class="txt" id="divslry_lzjz" placeholder="请填写在柳居住地"   />
            </p>
            <p class="c_red mt_75 mb_75">•返柳时间：<br />
                <input type="text" class="txt" id="divslry_fl" placeholder="请填无，或返柳时间(如2020-01-10)"   />
            </p>
            <p class="c_red mt_75 mb_75">•是否有咳嗽、胸闷、发烧等不适症状：<br />
                <select  id="divslry_zz"  class="selecttxt">
                    <option value="否">否</option>
                    <option value="是">是</option>
                </select>
            </p>
           </div>
        </div>
    </div>
    <div class="conent mt_6 ml_6 mr_6" id="div2020lx">
        <div class="f_14"><img src="../imgs/6.png" align="absmiddle">&nbsp;2020年寒假期间留校学生情况统计表</div>
        <div class="mt_75 mb_75">
            <p class="c_red mt_75 mb_75">•是否留校*：<br />
                <select  id="divhjlx_dll"  class="selecttxt">
                    <option value="否">否</option>
                    <option value="是">是</option>
                </select>
            </p>
            <p class="c_red mt_75 mb_75">•是在顶岗学习*：<br />
                <select  id="divhjlx_dgsx"  class="selecttxt">
                    <option value="否">否</option>
                    <option value="是">是</option>
                </select>
            </p>
            <div id="divhjlx" style="display:none;">
            <p class="c_red mt_75 mb_75">•宿舍安排*：<br />
                <input type="text" class="txt" id="divhjlx_ssap" placeholder="请填写宿舍楼和房号"   />
            </p>
            <p class="c_red mt_75 mb_75">•是否有咳嗽、胸闷、发烧等不适症状：<br />
                <select  id="divhjlx_zz"  class="selecttxt">
                    <option value="否">否</option>
                    <option value="是">是</option>
                </select>
            </p>
            <p class="c_red mt_75 mb_75">•后期是否离校：<br />
                <select  id="divhjlx_hqlx"  class="selecttxt">
                    <option value="是">是</option>
                    <option value="否">否</option>
                </select>
            </p>
            <p class="c_red mt_75 mb_75">•预计离校时间*：<br />
                <input type="text" class="txt" id="divhjlx_yqlxsj" placeholder="请填无,或离校时间(如2020-01-10)"   />
            </p>
           </div>
        </div>
    </div>
    <div class="conent mt_6 ml_6 mr_6">
        <div class="f_14"><img src="../imgs/7.png" align="absmiddle">&nbsp;可疑症状排查统计表</div>
        <div class="mt_75 mb_75">
            <p class="c_red mt_75 mb_75">•是否可疑症状*：<br />
                <select  id="divkyzy_dll"  class="selecttxt">
                    <option value="否">否</option>
                    <option value="是">是</option>
                </select>
            </p>
            <div id="divkyzy" style="display:none;">
            <p class="c_red mt_75 mb_75">•可疑症状出现时间及情况说明*：<br />
                <input type="text" class="txt" id="divkyzy_kyzzsm" placeholder="请填写出现的症状、症状出现的时间等"   />
            </p>
            <p class="c_red mt_75 mb_75">•就医及医疗机构*：<br />
                <input type="text" class="txt" id="divkyzy_yljg" placeholder="请填写无，或就医机构"   />
            </p>
            <p class="c_red mt_75 mb_75">•是否疑似病例*：<br />
                <select  id="divkyzy_ysbl"  class="selecttxt">
                    <option value="否">否</option>
                    <option value="是">是</option>
                </select>
            </p>
            <p class="c_red mt_75 mb_75">•疑似病例时间及情况说明说明*：<br />
                <input type="text" class="txt" id="divkyzy_ysblsm" placeholder="请填写就诊机构或隔离地，确诊时间，病情分类等"   />
            </p>
            <p class="c_red mt_75 mb_75">•是否为新型冠状病毒感染的肺炎确诊病例：<br />
                <select  id="divkyzy_fwqz"  class="selecttxt">
                    <option value="否">否</option>
                    <option value="是">是</option>
                </select>
            </p>
            <p class="c_red mt_75 mb_75">•确诊时间及情况说明说明*：<br />
                <input type="text" class="txt" id="divkyzy_fwqzsm" placeholder="请填写诊机构或隔离地，确诊时间，病情分类，治疗情况，病程等"   />
            </p>
            <p class="c_red mt_75 mb_75">•可疑症状消失时间*：<br />
                <input type="text" class="txt" id="divkyzy_zzxssj" placeholder="请填无,或症状消失时间(如2020-01-10)"   />
            </p>
           </div>
        </div>
    </div>
    <div class="conent mt_6 ml_6 mr_6">
        <div class="f_14"><img src="../imgs/1.png" align="absmiddle">&nbsp;昨天22:00~今天22:00出（返）柳人员信息表</div>
        <div class="mt_75 mb_75">
             <p class="c_red mt_75 mb_75">•是否在柳州市（昨天22时~今天22时）*：<br />
                <select  id="divrybd_ddllz"  class="selecttxt">
                    <option value="否">否</option>
                    <option value="是">是</option>
                </select>
            </p>
            <div id="divrybd_ddllz_div">
                <p class="c_red mt_75 mb_75">•离桂（柳）时间*：<br />
                    <input type="text" class="txt" id="divrybd_llsj" placeholder="请填写离桂（柳）时间，如2020-01-10"   />
                </p>
                <div class="mt_75 mb_75"><span class="c_red">•外出地点（昨天22时~今天22时）</span>*：
                    <div id="divrybd_wcdd1_ssx"  class="mb_6">
                          <select id="divrybd_wcdd1_sheng" class="selecttxt1" style="width:73px;"></select>
                          <select id="divrybd_wcdd1_shi" class="selecttxt1" style="width:120px;"></select>
                          <select id="divrybd_wcdd1_xian" class="selecttxt1" style="width:110px;"></select>
                    </div>
                    <div>
                         <input type="text" class="txt" id="divrybd_wcdd1" placeholder="请填详细地址，如xx乡镇村，门牌号"   />
                    </div>
                </div>
                <p><span class="c_red">•外出备注：（特殊情况说明）*：</span>：<br />
                    <textarea name="divrybd_wcdd2" id="divrybd_wcdd2" cols="40" rows="3" style="word-break: break-word;" class="txt" placeholder="特殊情况说明"></textarea><br />
                    <span style="color:#666;">其他无法说明的外出情况，逐一列出，如：</span><br />
                    <span style="color:#666;">2020-1-20到xx省、xx市、xx县区、xx乡镇村</span>
                </p>
                <p class="c_red mt_75 mb_75" style="display:none">•外出时间段2*：<br />
                    <input type="text" class="txt" id="divrybd_wcsd2" placeholder="请填写外出时间段"   />
                </p>
                <p class="c_red mt_75 mb_75">•外出事由*：<br />
                    <input type="text" class="txt" id="divrybd_wcsy" placeholder="请填写外出事由"   />
                    
                </p>
                <p class="c_red mt_75 mb_75">•是否返回柳州*：<br />
                    <select  id="divrybd_sffhlz"  class="selecttxt">
                        <option value="否">否</option>
                        <option value="是">是</option>
                    </select>
                 </p>
                <p class="c_red mt_75 mb_75"><span id="divrybd_sffhlz_shijian">•拟返柳时间*</span>：<br />
                    <input type="text" class="txt" id="divrybd_fgsj" placeholder="填写返柳时间，如2020-01-10"   />
                </p>
                <p class="c_red mt_75 mb_75"><span id="divrybd_sffhlz_jtgj">•返柳交通工具*</span>：<br />
                    <input type="text" class="txt" id="divrybd_flgz" placeholder="请填写返回车次/航班/汽车/自驾,已返回或已购票人员填写"   />
                </p>
            </div>
            <div class="mt_75 mb_75"><span class="c_red">•目前所在地*</span>：
                 <div id="divrybd_mqzz_ssx" class="mb_6">
                          <select id="divrybd_mqzz_sheng" class="selecttxt1" style="width:73px;"></select>
                          <select id="divrybd_mqzz_shi" class="selecttxt1" style="width:120px;"></select>
                          <select id="divrybd_mqzz_xian" class="selecttxt1" style="width:110px;"></select>
                 </div>
                <div>
                    <input type="text" class="txt" id="divrybd_mqzz" placeholder="请填写详细的所在地信息，如xx乡镇村，门牌号"  />
                </div>
            </div>
            <p class="c_red mt_75 mb_75"><span class="c_red">•目前本人身体状况*：</span><br />
                <input type="text" class="txt" id="divrybd_brzz" placeholder="本人身体状况说明"   /><br />
                <span style="color:#666;">默认健康，其他情况详细说明</span>
            </p>
            <p class="c_red mt_75 mb_75"><span class="c_red">•目前家庭主要成员身体状况*：</span><br />
                <input type="text" class="txt" id="divrybd_zz" placeholder="健康，或是否有咳嗽、胸闷、发烧等不适症状"   /><br />
                <span style="color:#666;">默认健康，其他情况以家庭成员为单位逐一填写</span>
            </p>
            <div id="divrybd_xsdiv">
                <p class="c_red mt_75 mb_75"><span class="c_red">•计划返校时间*：</span><br />
                    <input type="text" class="txt" id="divrybd_fxsj" placeholder="计划返校时间"   />
                </p>
                <p class="c_red mt_75 mb_75">•是否完成居家观察14天*：<br />
                    <select  id="divrybd_wcjjgc"  class="selecttxt">
                        <option value="否">否</option>
                        <option value="是">是</option>
                    </select><br />
                    <span style="color:#666;">在这14天里，没有确诊病例接触史，没有与湖北、湖南、广东、浙江、河南等省区人员接触史，没有咳嗽、发热、呼吸困难等症状</span>
                 </p>
                <p class="c_red mt_75 mb_75">•家长是否同意返校*：<br />
                    <select  id="divrybd_jztyfx"  class="selecttxt">
                        <option value="否">否</option>
                        <option value="是">是</option>
                    </select>
                 </p>
                <p class="c_red mt_75 mb_75">•防控考试是否达80分*：<br />
                    <select  id="divrybd_fkks"  class="selecttxt">
                        <option value="否">否</option>
                        <option value="是">是</option>
                    </select>
                 </p>
                <p class="c_red mt_75 mb_75">•二级学院是否同意返校*：<br />
                    <select  id="divrybd_erxy"  class="selecttxt">
                        <option value="否">否</option>
                        <option value="是">是</option>
                    </select>
                 </p>
            </div>
            <p class="c_red mt_75 mb_75"><span class="c_red">•居家观察管控情况*：</span><br />
                <input type="text" class="txt" id="divrybd_jjglgk" placeholder="填写居家观察管控情况"   /><br />
                <span style="color:#666;">社区是否随访，是否外出活动，买菜等</span>
            </p>
            <p class="c_red mt_75 mb_75"><span class="c_red">•备注*：</span><br />
                <input type="text" class="txt" id="divrybd_bz" placeholder="其他情况说明"   /><br />
            </p>
        </div>
    </div>
    <div class="conent mt_6 ml_6 mr_6" id="divxsrcf">
        <div class="f_14"><img src="../imgs/6.png" align="absmiddle">&nbsp;学生日常防控数据（每天填报）</div>
            <p class="c_red mt_75 mb_75">•是否返校*：<br />
                <select  id="divxsrcfk_sffx"  class="selecttxt">
                    <option value="否">否</option>
                    <option value="是">是</option>
                </select>
            </p>
            <div id="divxsrcfk_sffx_div" style="display:none;">
                <p class="c_red mt_75 mb_75">•上午体温*：<br />
                    <input type="text" class="txt" id="divxsrcfk_swtw" placeholder="请填上午体温，保留一位小数"   />
                </p>
                <p class="c_red mt_75 mb_75">•下午体温*：<br />
                    <input type="text" class="txt" id="divxsrcfk_xwtw" placeholder="请填下午体温，保留一位小数"   />
                </p>
                <p class="c_red mt_75 mb_75">•遵守防控纪律情况*：<br />
                    <input type="text" class="txt" id="divxsrcfk_fkjl" placeholder="请填遵守防控纪律情况"   />
                </p>
                <p class="c_red mt_75 mb_75">•是否有咳嗽、发热、呼吸困难等症状*：<br />
                    <select  id="divxsrcfk_zz"  class="selecttxt">
                        <option value="否">否</option>
                        <option value="是">是</option>
                    </select>
                </p>
                <p class="c_red mt_75 mb_75">•生病治疗情况记录*：<br />
                    <input type="text" class="txt" id="divxsrcfk_zljl" placeholder="请填写生病治疗情况记录"   />
                </p>
                <p class="c_red mt_75 mb_75">•居家观察情况*：<br />
                    <input type="text" class="txt" id="divxsrcfk_jjgc" placeholder="请填写居家观察情况"   />
                </p>
                <p class="c_red mt_75 mb_75">•备注*：<br />
                    <input type="text" class="txt" id="divxsrcfk_bz" placeholder="其他情况说明"   />
                </p>
            </div>
    </div>
    <div class="mt_75 ml_6 mr_6">
        <input type="button" name="btnsave" id="btnsave" value="【每天一报】保存并提交" class="btn btn_red f_24" />
    </div>	
    <div class="mt_75 ml_6 mr_6">
        <form id="form2" runat="server">
            <asp:Button ID="Button1" runat="server" Text="退出系统" CssClass="btn btn_green_out" OnClick="Button1_Click" />
         </form>
    </div>	
    <div class="mt_75  ml_6 mr_6 f_12 at_r">
         防控工作指挥部办公室
    </div>
	<script src="js/distpicker.data.js"></script>
	<script src="js/distpicker.js"></script>
</body>
</html>
