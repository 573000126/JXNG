<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true"
    CodeFile="UsersManage.aspx.cs" Inherits="admin_UsersManage" Theme="Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPage" runat="Server">
    <table border="0" cellspacing="0" cellpadding="1" width="100%" class="StandardTable">
        <tr>
            <td class="trr">
                ������
            </td>
            <td class="trl">
                <asp:TextBox ID="TXT_USERNAME" runat="server"></asp:TextBox>
            </td>
            <td class="trr">
                �ʺţ�
            </td>
            <td class="trl">
                <asp:TextBox ID="TXT_USERCODE" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="trr">
                ���ţ�
            </td>
            <td class="trl">
                <asp:DropDownList ID="DDL_DEPT" runat="server">
                </asp:DropDownList>
            </td>
            <td class="trr">
                ��λ��
            </td>
            <td class="trl">
                 <asp:DropDownList ID="DDL_POST" runat="server">
                </asp:DropDownList>
            </td>
            
        </tr>
        <tr>
            <td class="trr">
                &nbsp;
            </td>
            <td class="trl" colspan="3">
                <asp:Button ID="btnQuery" runat="server" Text="��ѯ" OnClick="btnQuery_Click" />
                <asp:Button ID="btnAdd" runat="server" Text="����" OnClick="btnAdd_Click"/>
                <asp:Button ID="btnClear" runat="server" onclick="btnClear_Click" Text="����" />
            </td>
            
        </tr>
        <tr>
            <td class="trc" colspan="4">
                <br />
                <div class="GridViewPagerStyle">    
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId"
                    Width="99%" PageSize="15" AllowPaging="True"
                        OnPageIndexChanging="GridView1_PageIndexChanging" 
                        onrowdatabound="GridView1_RowDataBound" onrowdeleting="GridView1_RowDeleting" 
                        onrowediting="GridView1_RowEditing" 
                        onselectedindexchanging="GridView1_SelectedIndexChanging" >
                    <Columns>
                        <asp:BoundField SortExpression="UserCode" DataField="UserCode" HeaderText="�ʺ�" />
                        <asp:BoundField SortExpression="UserName" DataField="UserName" HeaderText="����" />
                        <asp:BoundField SortExpression="DeptName" DataField="DeptName" HeaderText="����" />
                        <asp:BoundField SortExpression="PostName" DataField="PostName" HeaderText="��λ" />
                        <asp:BoundField SortExpression="Address" DataField="Address" HeaderText="��ϵ��ַ" Visible="false"/>
                        <asp:BoundField SortExpression="Telephone" DataField="Telephone" HeaderText="�绰" />
                        <asp:BoundField SortExpression="Mobile" DataField="Mobile" HeaderText="�ƶ��绰" Visible="false"/>
                        <asp:BoundField SortExpression="Email" DataField="Email" HeaderText="�����ʼ�" />
                        <asp:TemplateField HeaderText="������ɫ" HeaderStyle-Width="105px">
                            <ItemTemplate>
                                <asp:DropDownList ID="drpRole" runat="server" CssClass="select" Width="100px">
                                </asp:DropDownList>
                            </ItemTemplate>
                            <HeaderStyle Width="105px"></HeaderStyle>
                        </asp:TemplateField>
                        <asp:CommandField SelectText="�����ɫ" ShowSelectButton="True" HeaderText="�����ɫ" />
                        <asp:CommandField ShowCancelButton="False" ShowEditButton="True" HeaderText="�༭" EditText="�༭" />
                        <asp:CommandField HeaderText="ɾ��" DeleteText="ɾ��" ShowDeleteButton="True" ShowHeader="True" />
                    </Columns>
                    <PagerSettings FirstPageText="��ҳ" LastPageText="ĩҳ" NextPageText="��һҳ" PageButtonCount="5"
                        PreviousPageText="��һҳ" />
                    <PagerStyle BorderColor="#66FF66" Font-Names="����" Font-Size="12px" />
                </asp:GridView></div>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
