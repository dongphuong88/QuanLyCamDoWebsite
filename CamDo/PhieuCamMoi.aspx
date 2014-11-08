<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Root.master" CodeBehind="PhieuCamMoi.aspx.cs" Inherits="QuanLy.CamDo.PhieuCamMoi" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxFormLayout" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v14.1, Version=14.1.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="Content">
    <script type="text/javascript">
        // <![CDATA[
        var lastItem = null;
        function OnItemChanged(dropItem) {
            if (dropItemSubType.InCallback())
                lastItem = dropItem.GetValue().toString();
            else
                dropItemSubType.PerformCallback(dropItem.GetValue().toString());
        }
        function OnEndCallback(s, e) {
            if (lastItem) {
                cmbCity.PerformCallback(lastItem);
                lastItem = null;
            }
        }
        // ]]> 
    </script>
    <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server" ColCount="4">
        <Items>
            <dx:LayoutItem Caption="STT" VerticalAlign="Middle">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxSpinEdit ID="seSTT" runat="server" Number="0" DisplayFormatString="0-####" Font-Size="Large" ForeColor="Red" HorizontalAlign="Right" ReadOnly="True" Width="100px" Enabled="False">
                            <SpinButtons ShowIncrementButtons="False">
                            </SpinButtons>
                            <CaptionSettings HorizontalAlign="Left" VerticalAlign="Middle" />
                            <CaptionCellStyle Width="120px">
                            </CaptionCellStyle>
                            <CaptionStyle Font-Size="Large">
                            </CaptionStyle>
                        </dx:ASPxSpinEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            
            <dx:LayoutItem Caption="Lãi Suất" VerticalAlign="Middle">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxSpinEdit ID="seLaiSuat" runat="server" Number="0" DisplayFormatString="N1" Font-Size="Large" Width="70px" HorizontalAlign="Right" Increment="0.1">
                            <CaptionSettings VerticalAlign="Middle" />
                            <CaptionStyle Font-Size="Large">
                            </CaptionStyle>
                        </dx:ASPxSpinEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:EmptyLayoutItem ColSpan="2">
            </dx:EmptyLayoutItem>
            <dx:LayoutItem Caption="Tên Khách" ColSpan="3" VerticalAlign="Middle">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxComboBox ID="dropCustomer" runat="server" DataSourceID="SqlDataSourceCustomer" DropDownStyle="DropDown" Font-Size="Large" IncrementalFilteringMode="Contains" TextFormatString="{0}" ValueField="STT" Width="400px" CallbackPageSize="10" EnableCallbackMode="True" FilterMinLength="2">
                            
                            <Columns>
                                <dx:ListBoxColumn FieldName="Ten" Caption="Tên" />
                                <dx:ListBoxColumn FieldName="DienThoai" Caption="Phone" />
                                <dx:ListBoxColumn FieldName="CMNDSo" Caption="Số CMND" />
                                <dx:ListBoxColumn FieldName="DiaChi" Caption="Địa Chỉ" />
                            </Columns>
                            <ValidationSettings>
                                <ErrorFrameStyle Font-Size="Small">
                                </ErrorFrameStyle>
                                <RequiredField ErrorText="Không hợp lệ." IsRequired="True" />
                            </ValidationSettings>
                        </dx:ASPxComboBox>
                        <asp:SqlDataSource ID="SqlDataSourceCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:Cam_Do_DatabaseConnectionString %>" SelectCommand="SELECT [STT], [Ten], [CMNDSo], [DiaChi], [DienThoai] FROM [CUSTOMERS]"></asp:SqlDataSource>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButton ID="bKhachMoi" UseSubmitBehavior="false" runat="server" Text="Khách Mới" Font-Size="Large" OnClick="bKhachMoi_Click" AutoPostBack="false" CausesValidation="False">
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:LayoutGroup Caption="" ColCount="4" ColSpan="4">
                <Border BorderStyle="None" />
                <Items>
                    <dx:LayoutItem Caption="Món Đồ" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="seNum" runat="server" Number="1" Font-Size="Large" HorizontalAlign="Right" Width="40px">
                                    <CaptionSettings HorizontalAlign="Left" VerticalAlign="Middle" />
                                    <CaptionCellStyle Width="110px">
                                    </CaptionCellStyle>
                                    <CaptionStyle Font-Size="Large">
                                    </CaptionStyle>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxComboBox ID="dropItemType" runat="server" DataSourceID="SqlDataSourceItemType" Font-Size="Large" Width="150px" TextField="TenLoaiDoChinh" ValueField="TenLoaiDoChinh">
                                    <ClientSideEvents SelectedIndexChanged="function(s, e) {
	OnItemChanged(s);
}" />
                                    <CaptionSettings VerticalAlign="Middle" />
                                    <CaptionStyle Font-Size="Large">
                                    </CaptionStyle>
                                </dx:ASPxComboBox>
                                <asp:SqlDataSource ID="SqlDataSourceItemType" runat="server" ConnectionString="<%$ ConnectionStrings:Cam_Do_DatabaseConnectionString %>" SelectCommand="SELECT DISTINCT [TenLoaiDoChinh] FROM [ITEM_TYPES]"></asp:SqlDataSource>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="" ColSpan="2">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxComboBox ID="dropItemSubType" runat="server" ClientInstanceName="dropItemSubType" Font-Size="Large" Width="150px" DataSourceID="SqlDataSourceItemSubType" OnCallback="dropItemSubType_Callback" TextField="TenLoaiDoPhu" ValueField="TenLoaiDoPhu">
                                    <ClientSideEvents EndCallback="OnEndCallback" />
                                    <CaptionSettings VerticalAlign="Middle" />
                                    <CaptionStyle Font-Size="Large">
                                    </CaptionStyle>
                                </dx:ASPxComboBox>
                                <asp:SqlDataSource ID="SqlDataSourceItemSubType" runat="server" ConnectionString="<%$ ConnectionStrings:Cam_Do_DatabaseConnectionString %>" SelectCommand="SELECT DISTINCT [TenLoaiDoPhu] FROM [ITEM_TYPES] WHERE ([TenLoaiDoChinh] = @TenLoaiDoChinh)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="dropItemType" Name="TenLoaiDoChinh" PropertyName="Value" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Loại Vàng">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxComboBox ID="dropLoaiVang" runat="server" Font-Size="Large" Width="70px" HorizontalAlign="Right">
                                    <Items>
                                        <dx:ListEditItem Text="24K" Value="24K" />
                                        <dx:ListEditItem Text="18K" Value="18K" />
                                        <dx:ListEditItem Text="Khác" Value="Khác" />
                                    </Items>
                                    <CaptionSettings VerticalAlign="Middle" />
                                    <CaptionStyle Font-Size="Large">
                                    </CaptionStyle>
                                </dx:ASPxComboBox>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Trọng Lượng" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="seCanNang" runat="server" DisplayFormatString="N2" Font-Size="Large" Increment="0.1" Width="90px" HorizontalAlign="Right">
                                    <Buttons>
                                        <dx:EditButton Enabled="False" Text="Chỉ">
                                        </dx:EditButton>
                                    </Buttons>
                                    <ButtonStyle ForeColor="Black">
                                    </ButtonStyle>
                                    <CaptionSettings VerticalAlign="Middle" />
                                    <CaptionStyle Font-Size="Large">
                                    </CaptionStyle>
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="Giá Trị" VerticalAlign="Middle">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxSpinEdit ID="seGiaTri" runat="server" DisplayFormatString="N0" Font-Size="Large" Width="130px" HorizontalAlign="Right">
                                    <SpinButtons ShowIncrementButtons="False">
                                    </SpinButtons>
                                    <Buttons>
                                        <dx:EditButton Enabled="False" Text=".000">
                                        </dx:EditButton>
                                    </Buttons>
                                    <ButtonStyle ForeColor="Black">
                                    </ButtonStyle>
                                    <CaptionSettings VerticalAlign="Middle" />
                                </dx:ASPxSpinEdit>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <CaptionStyle Font-Size="Large">
                        </CaptionStyle>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxButton ID="bAddItem" UseSubmitBehavior="false" runat="server" Text="Thêm" OnClick="bAddItem_Click" Font-Size="Large" CausesValidation="False">
                                </dx:ASPxButton>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                    <dx:LayoutItem Caption="" ColSpan="4">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer runat="server">
                                <dx:ASPxLabel ID="lItemNote" runat="server" Text="Món đồ không được để trống." Visible="False" Font-Size="Small" ForeColor="Red">
                                </dx:ASPxLabel>
                                <dx:ASPxGridView ID="tableGrid" runat="server">
                                    <SettingsText EmptyDataRow=" " />
                                </dx:ASPxGridView>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                    </dx:LayoutItem>
                </Items>
            </dx:LayoutGroup>
            <dx:LayoutItem Caption="Tiền Cầm" ColSpan="2" VerticalAlign="Middle">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxSpinEdit ID="seTienCam" runat="server" DisplayFormatString="N0" Font-Size="Large" Width="130px" HorizontalAlign="Right">
                            <SpinButtons ShowIncrementButtons="False">
                            </SpinButtons>
                            <ClientSideEvents KeyPress="function(s, e) {
	if(e.htmlEvent.keyCode == 13) {
            ASPxClientUtils.PreventEventAndBubble(e.htmlEvent);
        }
}" />
                            <Buttons>
                                <dx:EditButton Enabled="False" Text=".000">
                                </dx:EditButton>
                            </Buttons>
                            <ButtonStyle ForeColor="Black">
                            </ButtonStyle>
                            <CaptionSettings VerticalAlign="Middle" />
                            <ValidationSettings ErrorDisplayMode="Text" Display="Static" ErrorTextPosition="Bottom" SetFocusOnError="true">
                                <ErrorFrameStyle Font-Size="Small">
                                </ErrorFrameStyle>
                                <RequiredField IsRequired="true" ErrorText="Không hợp lệ." />
                            </ValidationSettings>
                        </dx:ASPxSpinEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="Ngày Cầm" VerticalAlign="Middle">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxDateEdit ID="dateNgayCam" runat="server" DisplayFormatString="dd/MM/yyyy" EditFormat="Custom" EditFormatString="dd/MM/yyyy" Font-Size="Large" HorizontalAlign="Left" Width="120px" AutoPostBack="True">
                            <CaptionSettings HorizontalAlign="Left" VerticalAlign="Middle" />
                            <ValidationSettings>
                                <ErrorFrameStyle Font-Size="Small">
                                </ErrorFrameStyle>
                                <RequiredField ErrorText="Không hợp lệ" IsRequired="True" />
                            </ValidationSettings>
                            <CaptionCellStyle Width="120px">
                            </CaptionCellStyle>
                        </dx:ASPxDateEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="Hẹn Lấy" VerticalAlign="Middle">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxSpinEdit ID="seSoNgayHen" runat="server" Number="90" Font-Size="Large" Increment="30" Width="100px" HorizontalAlign="Right">
                            <ClientSideEvents KeyPress="function(s, e) {
	if(e.htmlEvent.keyCode == 13) {
            ASPxClientUtils.PreventEventAndBubble(e.htmlEvent);
        }
}" />
                            <Buttons>
                                <dx:EditButton Enabled="False" Text="ngày">
                                </dx:EditButton>
                            </Buttons>
                            <ButtonStyle ForeColor="Black">
                            </ButtonStyle>
                            <CaptionSettings VerticalAlign="Middle" />
                        </dx:ASPxSpinEdit>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="Ghi Chú" ColSpan="4" VerticalAlign="Middle">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxTextBox ID="seNote" runat="server" Width="600px" Font-Size="Large" HorizontalAlign="Left" Text=" ">
                            <CaptionSettings HorizontalAlign="Left" VerticalAlign="Middle" />
                            <CaptionCellStyle Width="120px">
                            </CaptionCellStyle>
                        </dx:ASPxTextBox>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
                <CaptionStyle Font-Size="Large">
                </CaptionStyle>
            </dx:LayoutItem>
            <dx:LayoutItem Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButton ID="bBack" UseSubmitBehavior="false" runat="server" Font-Size="Large" Height="50px" OnClick="bBack_Click" Text="Quay Lại" Width="50px" CausesValidation="False">
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
            <dx:EmptyLayoutItem ColSpan="2">
            </dx:EmptyLayoutItem>
            <dx:LayoutItem Caption="">
                <LayoutItemNestedControlCollection>
                    <dx:LayoutItemNestedControlContainer runat="server">
                        <dx:ASPxButton ID="bConfirm" UseSubmitBehavior="false" runat="server" Font-Size="Large" Height="50px" OnClick="bConfirm_Click" Text="Xác Nhận" Width="200px" AutoPostBack="False">
                        </dx:ASPxButton>
                    </dx:LayoutItemNestedControlContainer>
                </LayoutItemNestedControlCollection>
            </dx:LayoutItem>
        </Items>
    </dx:ASPxFormLayout>
</asp:Content>

