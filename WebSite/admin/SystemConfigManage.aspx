<%@ Page Title="" Language="C#" Theme="Default" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="SystemConfigManage.aspx.cs" Inherits="admin_SystemConfigManage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript">
    function CheckFileType() {
        var objButton = document.getElementById("ctl00_MainPage_btnImgOK"); //�ϴ���ť
        var objFileUpload = document.getElementById('ctl00_MainPage_fuImg'); //FileUpload
        var objMSG = document.getElementById('msg'); //��ʾ��ʾ��Ϣ�õ�DIV
        var FileName = new String(objFileUpload.value); //�ļ���
        var extension = new String(FileName.substring(FileName.lastIndexOf(".") + 1, FileName.length)); //�ļ���չ��

        if (extension == "exe" || extension == "EXE")//����������չ��
        {
           
        }
        else {
            objFileUpload.outerHTML = objFileUpload.outerHTML;
            alert("��ѡ��ͼƬ�������(*.exe|*.EXE)!");
        }
    }

    function CheckFileType2() {
        var objButton = document.getElementById("ctl00_MainPage_btnImgOK"); //�ϴ���ť
        var objFileUpload = document.getElementById('ctl00_MainPage_fuVideo'); //FileUpload
        var objMSG = document.getElementById('msg'); //��ʾ��ʾ��Ϣ�õ�DIV
        var FileName = new String(objFileUpload.value); //�ļ���
        var extension = new String(FileName.substring(FileName.lastIndexOf(".") + 1, FileName.length)); //�ļ���չ��

        if (extension == "exe" || extension == "EXE")//����������չ��
        {

        }
        else {
            objFileUpload.outerHTML = objFileUpload.outerHTML;
            alert("��ѡ��ͼƬ�������(*.exe|*.EXE)!");
        }
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPage" Runat="Server">
<table border="0" cellspacing="0" cellpadding="1" width="100%" class="StandardTable">
    <tr>
        <td class="trr">
            ͼƬ�������</td>
        <td class="trl">
            <asp:Label ID="lblImg" runat="server" Text=""></asp:Label><br />
            <asp:FileUpload ID="fuImg" Width="400px" runat="server" onChange="CheckFileType();" />
            <asp:Button ID="btnImgOK" runat="server"  Text="ȷ��" onclick="btnImgOK_Click" />
        </td>
    </tr>
    <tr>
        <td class="trr">
            ��Ƶ/��Ƶ��������</td>
        <td class="trl">
        <asp:Label ID="lblVideo" runat="server" Text=""></asp:Label><br />
             <asp:FileUpload ID="fuVideo" Width="400px" runat="server" onChange="CheckFileType2();" />
            <asp:Button ID="btnVideoOK" runat="server"  Text="ȷ��" onclick="btnVideoOK_Click" 
                 style="height: 26px" /><div id="Div1"></div>
        </td>
    </tr>
 </table>
</asp:Content>

