<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root.master" CodeBehind="KhachMoi.aspx.cs" Inherits="QuanLy.CamDo.KhachMoi" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxFormLayout" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="Content">
    <dx:ASPxFormLayout ID="CustomerForm" runat="server" ColCount="3" DataSourceID="SqlDataSourceCustomer">
        <Items>
            <dx:LayoutItem FieldName="STT" Visible="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxSpinEdit ID="ASPxFormLayout1_E1" runat="server">
                        </dx:ASPxSpinEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="Tên" ColSpan="2" FieldName="Ten">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="Ten" runat="server" Font-Size="Large" Width="100%">
                        </dx:ASPxTextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTen" runat="server" ControlToValidate="Ten" ErrorMessage="Tên không được để trống." ForeColor="Red"></asp:RequiredFieldValidator>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="Phone" FieldName="DienThoai">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="Phone" runat="server" Font-Size="Large">
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="Địa Chỉ" ColSpan="3" FieldName="DiaChi">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="Address" runat="server" Font-Size="Large" Width="100%">
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="Số CMND" FieldName="CMNDSo">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="CMNDSo" runat="server" Font-Size="Large">
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="Ngày Cấp" FieldName="CMNDNgayCap">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxDateEdit ID="CMNDNgayCap" runat="server" Font-Size="Large">
                        </dx:ASPxDateEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="Nơi Cấp" FieldName="CMNDNoiCap">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="CMNDNoiCap" runat="server" Font-Size="Large">
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButton ID="CustomerForm_E1" UseSubmitBehavior="false" runat="server" Font-Overline="False" Font-Size="Large" Text="Quay Lại" CausesValidation="False" OnClick="CustomerForm_E1_Click">
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:EmptyLayoutItem>
            </dx:EmptyLayoutItem>
            <dx:LayoutItem Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButton ID="bConfirm" UseSubmitBehavior="false" runat="server" Font-Size="Large" Text="Xác Nhận" OnClick="bConfirm_Click">
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
        </Items>
    </dx:ASPxFormLayout>
    <asp:SqlDataSource ID="SqlDataSourceCustomer" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Cam_Do_DatabaseConnectionString %>" 
        InsertCommand="INSERT INTO [CUSTOMERS] ([Ten], [CMNDSo], [CMNDNgayCap], [CMNDNoiCap], [DiaChi], [DienThoai]) VALUES (@Ten, @CMNDSo, @CMNDNgayCap, @CMNDNoiCap, @DiaChi, @DienThoai)" >
        <InsertParameters>
            <asp:ControlParameter ControlID="CustomerForm$Ten" Name="Ten" Type="String" />
            <asp:ControlParameter ControlID="CustomerForm$Phone" Name="DienThoai" Type="String" />
            <asp:ControlParameter ControlID="CustomerForm$Address" Name="DiaChi" Type="String" />
            <asp:ControlParameter ControlID="CustomerForm$CMNDSo" Name="CMNDSo" Type="String" />
            <asp:ControlParameter ControlID="CustomerForm$CMNDNgayCap" Name="CMNDNgayCap" Type="String" />
            <asp:ControlParameter ControlID="CustomerForm$CMNDNoiCap" Name="CMNDNoiCap" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
    </asp:Content>


