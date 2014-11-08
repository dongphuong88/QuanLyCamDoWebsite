<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root.master" CodeBehind="QuaHan.aspx.cs" Inherits="QuanLy.CamDo.QuaHan" %>


<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>



<asp:Content ID="Content1" runat="server" contentplaceholderid="Content">
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceQuaHan" KeyFieldName="STT" Width="100%" OnHtmlRowPrepared="ASPxGridView1_HtmlRowPrepared">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="STT" ReadOnly="True" VisibleIndex="0">
                <PropertiesTextEdit DisplayFormatString="0-####">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="Ten" VisibleIndex="1" Caption="Tên">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="DienThoai" VisibleIndex="7" Caption="Phone">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TenTaiSan" VisibleIndex="5" Caption="Món Đồ">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="LoaiVang" VisibleIndex="8" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TrongLuong" VisibleIndex="9" Visible="False">
                <PropertiesTextEdit DisplayFormatString="{0:N2} chỉ">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="SoTienCam" VisibleIndex="2" Caption="Tiền Cầm">
                <PropertiesTextEdit DisplayFormatString="{0:N0}.000">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="NgayCam" VisibleIndex="10" Visible="False">
                <PropertiesDateEdit DisplayFormatString="dd/MM/yyyy">
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="DenNgay" VisibleIndex="4" Caption="Ngày Hẹn">
                <PropertiesDateEdit DisplayFormatString="dd/MM/yyyy">
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="LaiSuatThang" VisibleIndex="11" Visible="False">
                <PropertiesTextEdit DisplayFormatString="N2">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="GhiChu" VisibleIndex="6" Caption="Ghi Chú">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="NgayQuaHan" ReadOnly="True" VisibleIndex="3" Caption="Số Ngày Quá Hạn">
            </dx:GridViewDataTextColumn>
        </Columns>
        <Settings VerticalScrollableHeight="400" VerticalScrollBarMode="Visible" />
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSourceQuaHan" runat="server" ConnectionString="<%$ ConnectionStrings:Cam_Do_DatabaseConnectionString %>" SelectCommand="SELECT * FROM [TransactionView] ORDER BY [NgayQuaHan] DESC"></asp:SqlDataSource>
    <dx:ASPxButton ID="ASPxButton1" runat="server" Font-Size="Large" Height="50px" OnClick="ASPxButton1_Click" Text="Quay Lại" Width="200px">
    </dx:ASPxButton>
</asp:Content>



