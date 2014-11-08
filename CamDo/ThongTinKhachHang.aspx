<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.master" CodeBehind="ThongTinKhachHang.aspx.cs" Inherits="QuanLy.CamDo.ThongTinKhachHang" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxFormLayout" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="Content">
    <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" ColCount="3" DataSourceID="SqlDataSourceCustomer">
        <Items>
            <dx:LayoutItem FieldName="STT" Visible="False">
                <layoutitemnestedcontrolcollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxSpinEdit ID="ASPxFormLayout1_E1" runat="server">
                        </dx:ASPxSpinEdit>
                    </dx:LayoutItemNestedControlContainer>
                </layoutitemnestedcontrolcollection>
            </dx:LayoutItem>
            <dx:LayoutItem ColSpan="2" FieldName="Ten" VerticalAlign="Middle">
                <layoutitemnestedcontrolcollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="ASPxFormLayout1_E2" runat="server" Font-Size="Large" Width="400px">
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </layoutitemnestedcontrolcollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem FieldName="DienThoai" VerticalAlign="Middle">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="ASPxFormLayout1_E7" runat="server" Font-Size="Large">
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem ColSpan="3" FieldName="DiaChi" VerticalAlign="Middle">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="ASPxFormLayout1_E6" runat="server" Font-Size="Large" Width="700px">
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem FieldName="CMNDSo" VerticalAlign="Middle">
                <layoutitemnestedcontrolcollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="ASPxFormLayout1_E3" runat="server" Font-Size="Large">
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </layoutitemnestedcontrolcollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem FieldName="CMNDNgayCap" VerticalAlign="Middle">
                <layoutitemnestedcontrolcollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxDateEdit ID="ASPxFormLayout1_E4" runat="server" Font-Size="Large">
                        </dx:ASPxDateEdit>
                    </dx:LayoutItemNestedControlContainer>
                </layoutitemnestedcontrolcollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem FieldName="CMNDNoiCap" VerticalAlign="Middle">
                <layoutitemnestedcontrolcollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="ASPxFormLayout1_E5" runat="server" Font-Size="Large">
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </layoutitemnestedcontrolcollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="">
                <layoutitemnestedcontrolcollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButton ID="ASPxFormLayout1_E8" UseSubmitBehavior="false" runat="server" Font-Size="Large" Text="Quay Lại">
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </layoutitemnestedcontrolcollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="" ColSpan="2">
                <layoutitemnestedcontrolcollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButton ID="ASPxFormLayout1_E9" UseSubmitBehavior="false" runat="server" Font-Size="Large" Text="Xác Nhận" Width="200px" OnClick="ASPxFormLayout1_E9_Click">
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </layoutitemnestedcontrolcollection>
            </dx:LayoutItem>
        </Items>
    </dx:ASPxFormLayout>
    <asp:SqlDataSource ID="SqlDataSourceCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:Cam_Do_DatabaseConnectionString %>" DeleteCommand="DELETE FROM [CUSTOMERS] WHERE [STT] = @STT" InsertCommand="INSERT INTO [CUSTOMERS] ([Ten], [CMNDSo], [CMNDNgayCap], [CMNDNoiCap], [DiaChi], [DienThoai]) VALUES (@Ten, @CMNDSo, @CMNDNgayCap, @CMNDNoiCap, @DiaChi, @DienThoai)" SelectCommand="SELECT * FROM [CUSTOMERS] WHERE ([STT] = @STT)" UpdateCommand="UPDATE [CUSTOMERS] SET [Ten] = @Ten, [CMNDSo] = @CMNDSo, [CMNDNgayCap] = @CMNDNgayCap, [CMNDNoiCap] = @CMNDNoiCap, [DiaChi] = @DiaChi, [DienThoai] = @DienThoai WHERE [STT] = @STT">
        <DeleteParameters>
            <asp:Parameter Name="STT" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="CMNDSo" Type="String" />
            <asp:Parameter Name="CMNDNgayCap" Type="DateTime" />
            <asp:Parameter Name="CMNDNoiCap" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="DienThoai" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="STT" QueryStringField="STT" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="CMNDSo" Type="String" />
            <asp:Parameter Name="CMNDNgayCap" Type="DateTime" />
            <asp:Parameter Name="CMNDNoiCap" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="DienThoai" Type="String" />
            <asp:Parameter Name="STT" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>