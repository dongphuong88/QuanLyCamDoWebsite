<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root.master" CodeBehind="ThongTinDoCam.aspx.cs" Inherits="QuanLy.CamDo.ThongTinDoCam" %>

<%@ Register Assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxFormLayout" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>


<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dx" %>


<asp:Content ID="Content1" runat="server" contentplaceholderid="Content">
    <dx:ASPxFormLayout ID="ThongTinDoCamFormLayout" runat="server" ColCount="3" DataSourceID="SqlDataSourceThongTinRecord">
        <Items>
            <dx:LayoutItem FieldName="STT" Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButtonEdit ID="beSTT" runat="server" Caption="STT" DisplayFormatString="0-####" Font-Size="Large" ForeColor="Red" OnButtonClick="beSTT_ButtonClick" ReadOnly="True" Width="150px">
                            <Buttons>
                                <dx:EditButton Text="Sửa">
                                </dx:EditButton>
                            </Buttons>
                            <Paddings PaddingLeft="20px" />
                            <CaptionSettings HorizontalAlign="Left" VerticalAlign="Middle" />
                            <CaptionCellStyle Width="100px">
                                <Paddings PaddingLeft="10px" />
                            </CaptionCellStyle>
                            <CaptionStyle ForeColor="Black">
                            </CaptionStyle>
                        </dx:ASPxButtonEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem FieldName="Status" Caption="" ShowCaption="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxLabel ID="ThongTinDoCamFormLayout_E1" runat="server" Font-Size="Medium" ForeColor="Red" Visible="False">
                        </dx:ASPxLabel>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem FieldName="LaiSuatThang" Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxSpinEdit ID="ASPxFormLayout2_E12" runat="server" Caption="Lãi Suất (Tháng)" DisplayFormatString="N2" Font-Size="Large" Number="0" ReadOnly="True" Width="70px" HorizontalAlign="Right">
                            <SpinButtons ShowIncrementButtons="False">
                            </SpinButtons>
                            <CaptionSettings HorizontalAlign="Left" VerticalAlign="Middle" />
                            <CaptionCellStyle Width="180px">
                            </CaptionCellStyle>
                        </dx:ASPxSpinEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem FieldName="Ten" Caption="" ColSpan="2">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButtonEdit ID="beTen" runat="server" Caption="Tên" Font-Size="Large" OnButtonClick="beTen_ButtonClick" ReadOnly="True" Width="400px">
                            <Buttons>
                                <dx:EditButton Text="Sửa">
                                </dx:EditButton>
                            </Buttons>
                            <Paddings PaddingLeft="20px" />
                            <CaptionSettings HorizontalAlign="Left" VerticalAlign="Middle" />
                            <CaptionCellStyle Width="100px">
                            </CaptionCellStyle>
                        </dx:ASPxButtonEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem FieldName="DienThoai" Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="ASPxFormLayout2_E3" runat="server" Width="170px" Caption="Điện Thoại" Font-Size="Large" ReadOnly="True">
                            <CaptionSettings HorizontalAlign="Left" VerticalAlign="Middle" />
                            <CaptionCellStyle Width="180px">
                            </CaptionCellStyle>
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem FieldName="DiaChi" Caption="" ColSpan="2">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="ASPxFormLayout2_E4" runat="server" Width="400px" Caption="Địa Chỉ" Font-Size="Large" ReadOnly="True">
                            <Paddings PaddingLeft="20px" />
                            <CaptionSettings HorizontalAlign="Left" VerticalAlign="Middle" />
                            <CaptionCellStyle Width="100px">
                            </CaptionCellStyle>
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem FieldName="CMNDSo" Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="ASPxFormLayout2_E5" runat="server" Caption="CMND Số" Font-Size="Large" ReadOnly="True" Width="170px">
                            <CaptionSettings HorizontalAlign="Left" VerticalAlign="Middle" />
                            <CaptionCellStyle Width="180px">
                            </CaptionCellStyle>
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem FieldName="CMNDNgayCap" Visible="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxDateEdit ID="ASPxFormLayout2_E6" runat="server">
                        </dx:ASPxDateEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem FieldName="CMNDNoiCap" Visible="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="ASPxFormLayout2_E7" runat="server" Width="170px">
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem FieldName="SoTienCam" Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxSpinEdit ID="ASPxFormLayout2_E8" runat="server" Caption="Tiền Cầm" DisplayFormatString="{0:N0}.000" Font-Size="Large" Number="0" ReadOnly="True" Width="150px" Enabled="False" ForeColor="Black" HorizontalAlign="Right">
                            <SpinButtons ShowIncrementButtons="False">
                            </SpinButtons>
                            <Paddings PaddingLeft="20px" />
                            <CaptionSettings HorizontalAlign="Left" VerticalAlign="Middle" />
                            <CaptionCellStyle Width="100px">
                            </CaptionCellStyle>
                        </dx:ASPxSpinEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem FieldName="NgayCam" Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxDateEdit ID="ASPxFormLayout2_E9" runat="server" Caption="Ngày Cầm" DisplayFormatString="dd/MM/yyyy" Font-Size="Large" ReadOnly="True" Width="120px">
                            <CaptionSettings HorizontalAlign="Left" VerticalAlign="Middle" />
                        </dx:ASPxDateEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem FieldName="DenNgay" Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxDateEdit ID="ASPxFormLayout2_E10" runat="server" Caption="Đến Ngày" DisplayFormatString="dd/MM/yyyy" Font-Size="Large" ReadOnly="True">
                            <CaptionSettings HorizontalAlign="Left" VerticalAlign="Middle" />
                            <CaptionCellStyle Width="180px">
                            </CaptionCellStyle>
                        </dx:ASPxDateEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem FieldName="LaiSuatNgay" Visible="False">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxSpinEdit ID="ASPxFormLayout2_E11" runat="server" Number="0">
                        </dx:ASPxSpinEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="" ColSpan="3" FieldName="GhiChu">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="ASPxFormLayout2_E13" runat="server" Caption="Ghi Chú" Font-Size="Large" ReadOnly="True" Width="850px">
                            <Paddings PaddingLeft="20px" />
                            <CaptionSettings HorizontalAlign="Left" VerticalAlign="Middle" />
                            <CaptionCellStyle Width="100px">
                            </CaptionCellStyle>
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
        </Items>
    </dx:ASPxFormLayout>
    <asp:SqlDataSource ID="SqlDataSourceThongTinRecord" runat="server" ConnectionString="<%$ ConnectionStrings:Cam_Do_DatabaseConnectionString %>" SelectCommand="SELECT * FROM [ThongTinCamDoView] WHERE ([STT] = @STT)">
        <SelectParameters>
            <asp:QueryStringParameter Name="STT" QueryStringField="STT" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <dx:ASPxGridView ID="ItemGridView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceItem" Font-Bold="False" Font-Overline="False" Font-Size="Large" KeyFieldName="STT">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="STT" ReadOnly="True" Visible="False" VisibleIndex="0">
                <EditFormSettings Visible="False" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="RecordSTT" Visible="False" VisibleIndex="1">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TenTaiSan" VisibleIndex="2" Caption="Tên Món Đồ">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="LoaiVang" VisibleIndex="3" Caption="Loại Vàng">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="TrongLuong" VisibleIndex="4" Caption="Trọng Lượng">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="ChuanDo" VisibleIndex="5" Visible="False">
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="GiaTriVatCam" VisibleIndex="6" Caption="Giá Trị Vật Cầm">
                <PropertiesTextEdit DisplayFormatString="{0:N0}.000">
                </PropertiesTextEdit>
            </dx:GridViewDataTextColumn>
        </Columns>
        <Paddings PaddingLeft="50px" />
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSourceItem" runat="server" ConnectionString="<%$ ConnectionStrings:Cam_Do_DatabaseConnectionString %>" SelectCommand="SELECT * FROM [ITEM_DETAILS] WHERE ([RecordSTT] = @RecordSTT)">
        <SelectParameters>
            <asp:QueryStringParameter Name="RecordSTT" QueryStringField="STT" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    

    <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" ColCount="4">
        <Items>
            <dx:LayoutItem Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButton ID="ChuocButton" runat="server" Font-Size="Medium" Height="50px" Text="Chuộc" Width="200px" OnClick="ChuocButton_Click">
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButton ID="GiaHanButton" runat="server" Font-Size="Medium" Height="50px" Text="Gia Hạn" Width="200px" OnClick="GiaHanButton_Click">
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButton ID="ThemBotButton" runat="server" Font-Size="Medium" Height="50px" Text="Thêm / Bớt" Width="200px" OnClick="ThemBotButton_Click">
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButton ID="bBack" runat="server" Font-Size="Medium" Height="50px" Text="Quay Lại" Width="100px" OnClick="bBack_Click">
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
        </Items>
    </dx:ASPxFormLayout>

    
    </asp:Content>




