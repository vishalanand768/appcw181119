<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cw1811.aspx.cs" Inherits="appcw181119.cw1811" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>F_Name</td>
               <td><asp:TextBox ID="txtf_name" runat="server"></asp:TextBox></td> 
            </tr>
            <tr>
                <td>L_Name</td>
               <td><asp:TextBox ID="txtl_name" runat="server"></asp:TextBox></td> 
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="Submit_btn" runat="server" Text="Submit" OnClick="Submit_btn_Click"/>

            </tr>
         <tr>
                <td></td>
                  <td><asp:GridView ID="grd" runat="server" OnRowCommand="grd_RowCommand" AutoGenerateColumns="false" >
                      <Columns>
                          <asp:TemplateField HeaderText="EmpId">
                              <ItemTemplate>
                                  <%#Eval("Empid") %>
                              </ItemTemplate>
                          </asp:TemplateField>

                          <asp:TemplateField HeaderText="Fname">
                              <ItemTemplate>
                                  <%#Eval("F_Name") %>
                              </ItemTemplate>
                          </asp:TemplateField>

                          <asp:TemplateField HeaderText="Lname">
                              <ItemTemplate>
                                  <%#Eval("L_Name") %>
                              </ItemTemplate>
                          </asp:TemplateField>

                           <asp:TemplateField>
                              <ItemTemplate>
                                  <asp:linkButton ID="btndelete" runat="server"  Text="Delete" CommandArgument='<%#Eval("Empid") %>'></asp:linkButton>
                              </ItemTemplate>
                          </asp:TemplateField>

                        </Columns>
                      </asp:GridView></td>
                       </tr>

        </table>

    
    </div>
    </form>
</body>
</html>
