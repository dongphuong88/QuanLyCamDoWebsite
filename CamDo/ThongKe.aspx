<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root.master" CodeBehind="ThongKe.aspx.cs" Inherits="QuanLy.CamDo.ThongKe" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxFormLayout" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxSpreadsheet.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSpreadsheet" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="Content">
    <table class="OptionsTable BottomMargin">
        <tr>
            <td>
                <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Xem theo:" />
            </td>
            <td>
                <dx:ASPxComboBox runat="server" ID="cbGroupInterval" SelectedIndex="0" ValueType="System.String">
                    <Items>
                        <dx:ListEditItem Text="Tháng" Value="DateMonth" />
                        <dx:ListEditItem Text="Năm" Value="DateYear" />
                        <dx:ListEditItem Text="Ngày" Value="Date" />
                    </Items>
                    <ClientSideEvents SelectedIndexChanged="function(s, e) { grid.PerformCallback(s.GetSelectedItem().value) }" />
                </dx:ASPxComboBox>
            </td>
        </tr>
    </table>
    <dx:ASPxGridView ID="grid" ClientInstanceName="grid" runat="server" DataSourceID="SqlDataSourceTransaction" OnCustomUnboundColumnData="grid_CustomUnboundColumnData"
        KeyFieldName="STT" KeyWidth="100%" AutoGenerateColumns="False" OnCustomCallback="grid_CustomCallback" SummaryText="Tổng Cộng" OnCustomGroupDisplayText="grid_CustomGroupDisplayText" Width="100%">
        <Columns>
            <dx:GridViewCommandColumn ShowClearFilterButton="True" VisibleIndex="0">
            </dx:GridViewCommandColumn>
            <dx:GridViewDataTextColumn FieldName="STT" VisibleIndex="1" ReadOnly="True" Visible="False" >
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="RecordSTT" VisibleIndex="2" Caption="STT" >
                <PropertiesTextEdit DisplayFormatString="0-####">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="LoaiGiaoDich" VisibleIndex="3" Caption="Loại Giao Dịch" />
            <dx:GridViewDataTextColumn FieldName="TienCam" VisibleIndex="4" Caption="Tiền Cầm">
                <PropertiesTextEdit DisplayFormatString="{0:N0}.000">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="TuNgay" VisibleIndex="5" Visible="False">
                <PropertiesDateEdit DisplayFormatString="dd/MM/yyyy">
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataDateColumn FieldName="DenNgay" VisibleIndex="6" GroupIndex="0" Caption="Ngày Giao Dịch" PropertiesDateEdit-EditFormatString="dd/MM/yyyy">
                <Settings GroupInterval="DateMonth" />
                <PropertiesDateEdit DisplayFormatString="dd/MM/yyyy">
                </PropertiesDateEdit>
            </dx:GridViewDataDateColumn>
            <dx:GridViewDataTextColumn FieldName="LaiSuat" VisibleIndex="7" Caption="Lãi Suất" >
                <PropertiesTextEdit DisplayFormatString="N2">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TienLoi" VisibleIndex="8" Caption="Tiền Lời">
                <PropertiesTextEdit DisplayFormatString="{0:N0}.000">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TienThu" VisibleIndex="9" Caption="Tiền Thu">
                <PropertiesTextEdit DisplayFormatString="{0:N0}.000">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TienChi" Visible="False" VisibleIndex="10">
            </dx:GridViewDataTextColumn>
        </Columns>
        <TotalSummary>
            <dx:ASPxSummaryItem FieldName="TienCam" SummaryType="Count" DisplayFormat="Lượt giao dịch {0}" />
            <dx:ASPxSummaryItem FieldName="TienLoi" SummaryType="Sum" DisplayFormat="Tiền Lời: {0:N0}" />
            <dx:ASPxSummaryItem FieldName="TienThu" SummaryType="Sum" DisplayFormat="Tổng Cộng: {0:N0}" />
        </TotalSummary>
        <SettingsPager Mode="EndlessPaging">
        </SettingsPager>
        <Settings ShowGroupPanel="True" ShowFooter="True" ShowFilterRow="True" VerticalScrollableHeight="400" />
        <GroupSummary>
            <dx:ASPxSummaryItem FieldName="TienCam" SummaryType="Count" DisplayFormat="Lượt giao dịch {0}" />
            <dx:ASPxSummaryItem FieldName="TienLoi" SummaryType="Sum" DisplayFormat="Tiền Lời: {0:N0}" />
            <dx:ASPxSummaryItem FieldName="TienThu" SummaryType="Sum"  DisplayFormat="Tổng Cộng: {0:N0}"/>
        </GroupSummary>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSourceTransaction" runat="server" ConnectionString="<%$ ConnectionStrings:Cam_Do_DatabaseConnectionString %>" SelectCommand="SELECT * FROM [TRANSACTIONS]"></asp:SqlDataSource>
    <dx:ASPxButton ID="ASPxButton1" runat="server" Font-Size="Large" Height="50px" OnClick="ASPxButton1_Click" Text="Quay Lại" Width="200px">
    </dx:ASPxButton>
</asp:Content>


