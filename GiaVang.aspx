<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="GiaVang.aspx.cs" Inherits="QuanLy.GiaVang" %>

<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
    <table>
        <tr style="height:350px">
            <td rowspan="2" style="width:50%">
                <div style="width:400px; height:450px">
                    <iframe scrolling="no" width="650px" height="770px" src="https://www.vietcombank.com.vn/exchangerates/" style="position:relative; left:-230px; top:-300px">
                        <p>Your browser does not support iframes.</p>
                    </iframe>
                </div>
            </td>
            <td style="width:50%">
                <div style="height:350px">
                    <iframe scrolling="no" width="500px" height="530px" src="http://sjccantho.vn/" style="position:relative; top:-200px">
                        <p>Your browser does not support iframes.</p>
                    </iframe>
                </div>
            </td>
            
            
        </tr>
        <tr>
            <td style="width:50%">
                <img src="http://www.kitco.com/images/live/gold.gif" style="width:100%"></img>
            </td>
        </tr>
        </table>

    
    
</asp:Content>
