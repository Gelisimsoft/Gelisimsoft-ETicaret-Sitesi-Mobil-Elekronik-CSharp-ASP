<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9" />
    <meta name="description" content="E-Ticaret Bilgi Sistemi" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <meta http-equiv="Cache-Control" content="max-age=0" />
    <meta name="revisit-after" content="1 Days" />
    <meta name="imagetoolbar" content="no" />
    <meta name="abstract" content="E-B�lten Bilgi Sistemi" />
    <meta name="author" content="Fatih �etinkaya info@fcyazilim.com www.fcyazilim.com" />
    <meta name="copyright" content="Fatih �etinkaya info@fcyazilim.com www.fcyazilim.com" />
    <link href="Acss/Giris_Style.css" rel="stylesheet" type="text/css" />
    <title>Y�netim Paneli | E-Ticaret Sistemi</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="main">
                <div class="form-2">
                    <h1>
                        <span class="login">E-Ticaret Y�netim Sistemi</span> <span style="color: Black;">|</span>
                        <span class="signup">G�R��</span>
                    </h1>
                    <div id="GirisEkraniDiv" runat="server">
                        <p class="float">
                            <label class="labelci">
                                <img src="images/user.png" />
                                KULLANICI ADI</label>
                            <asp:TextBox ID="EpostaBox" runat="server" CssClass="textboxcu" placeholder="E-Posta Adresi"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Kullan�c� Ad� Yaz�n�z." ValidationGroup="Giris" ControlToValidate="EpostaBox" Display="None"></asp:RequiredFieldValidator>
                        </p>
                        <p class="float">
                            <label class="labelci">
                                <img src="images/lock.png" />
                                ��FRE</label>
                            <asp:TextBox ID="Sifrebox" runat="server" CssClass="textboxcu" placeholder="�ifre"
                                TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="�ifreyi Yaz�n�z." ValidationGroup="Giris" ControlToValidate="Sifrebox" Display="None"></asp:RequiredFieldValidator>
                        </p>
                        <p class="clearfix">
                            <asp:Button ID="GirisBtn" CssClass="butoncukG" runat="server" Text="Giri�" Width="160px"
                                OnClick="GirisBtn_Click" ValidationGroup="Giris" />&nbsp;
                        <asp:Button ID="SifremiUnuttumBtn" CssClass="butoncukS" runat="server" Text="�ifremi Unuttum"
                            Width="160px" OnClick="SifremiUnuttumBtn_Click" />
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true" ShowSummary="false" ValidationGroup="Giris" />
                        </p>
                    </div>
                    <div id="SifreDiv" runat="server" class="SifremiUnuttum" visible="false">
                        <label class="labelci">
                            <img src="images/lock.png" />
                            KULLANICI ADI</label>
                        <asp:TextBox ID="EpostaHatirlatBox" runat="server" CssClass="textboxcu" placeholder="E-Posta Adresi" Width="300px"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="�ifreyi Yaz�n�z." ValidationGroup="Sifre" ControlToValidate="EpostaHatirlatBox" Display="None"></asp:RequiredFieldValidator>
                        <p class="clearfix">
                            <asp:Button ID="SifreGonderBtn" CssClass="butoncukS" runat="server" Text="�ifreyi G�nder"
                                Width="160px" OnClick="SifreGonderBtn_Click" ValidationGroup="Sifre" />&nbsp;
                        <asp:Button ID="VazgecBtn" CssClass="butoncukS" runat="server" Text="Vazge�" Width="160px"
                            OnClick="VazgecBtn_Click" /><asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="true" ValidationGroup="Sifre" ShowSummary="false" />
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
