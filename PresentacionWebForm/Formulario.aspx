﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="PresentacionWebForm.Formulario" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <script type="text/javascript">
        $('form').keyup(function txtLlenos() {
            var objeto = [document.getElementById("<%=txtDNI.ClientID%>"),
                document.getElementById("<%=txtNombre.ClientID%>"),
                document.getElementById("<%=txtApellido.ClientID%>"),
                document.getElementById("<%=txtEmail.ClientID%>"),
                document.getElementById("<%=txtTelefono.ClientID%>"),
                document.getElementById("<%=txtCalle.ClientID%>"),
                document.getElementById("<%=txtNumeracion.ClientID%>"),
                document.getElementById("<%=txtLocalidad.ClientID%>")]
            success = true;
            for (var i = 0; i < 8; i++) {
                if (!objeto[i].classList.contains("border-success")) {
                    success = false;
                }
            }
            if (success) {
                document.getElementById("<%=btnMesaUno.ClientID%>").disabled = false;
                document.getElementById("<%=btnMesaDos.ClientID%>").disabled = false;
                document.getElementById("<%=btnMesaTres.ClientID%>").disabled = false;
                document.getElementById("<%=btnMesaCuatro.ClientID%>").disabled = false;
                document.getElementById("<%=btnMesaCinco.ClientID%>").disabled = false;
                document.getElementById("<%=btnMesaSeis.ClientID%>").disabled = false;
                document.getElementById("<%=btnMesaSiete.ClientID%>").disabled = false;
                document.getElementById("<%=btnMesaOcho.ClientID%>").disabled = false;


            }
            else {
                document.getElementById("<%=btnMesaUno.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaDos.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaTres.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaCuatro.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaCinco.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaSeis.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaSiete.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaOcho.ClientID%>").disabled = true;
            }
            });


            $(document).ready(function () {
                document.getElementById("<%=btnMesaUno.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaDos.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaTres.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaCuatro.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaCinco.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaSeis.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaSiete.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaOcho.ClientID%>").disabled = true;

            var objeto = [document.getElementById("<%=txtDNI.ClientID%>"),
                document.getElementById("<%=txtNombre.ClientID%>"),
                document.getElementById("<%=txtApellido.ClientID%>"),
                document.getElementById("<%=txtEmail.ClientID%>"),
                document.getElementById("<%=txtTelefono.ClientID%>"),
                document.getElementById("<%=txtCalle.ClientID%>"),
                document.getElementById("<%=txtNumeracion.ClientID%>"),
                document.getElementById("<%=txtLocalidad.ClientID%>")]
            for (var i = 0; i < 8; i++) {
                if (objeto[i].value != "" && objeto[i].value.length >= 3) {
                    objeto[i].className += " border border-success";
                }
            }
            if (!objeto[0].classList.contains("border-success")) {
                document.getElementById("<%=btnMesaUno.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaDos.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaTres.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaCuatro.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaCinco.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaSeis.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaSiete.ClientID%>").disabled = true;
                document.getElementById("<%=btnMesaOcho.ClientID%>").disabled = true;
                }

                if (objeto[3].value != "" && objeto[3].value.length >= 8)
                {
                    objeto[3].className += "border border-success";
                }

        });

        function validarEmail() {
            objeto = document.getElementById("<%=txtEmail.ClientID%>");
            valueForm = objeto.value;
            var patron = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
            if (valueForm.search(patron) == 0) {
                objeto.className = "form-control border border-success";
                objeto.style.boxShadow = "0 0 0 0.2rem rgba(79, 162, 51, 0.25)";
            } else {
                objeto.className = "form-control border border-danger";
                objeto.style.boxShadow = "0 0 0 0.2rem rgba(255, 0, 0, 0.23)";
            }
            }



                                $( document ).ready(function() {
                $( ".numOnly" ).keypress(function(e) {
                    var key = e.keyCode;
                    if (key > 31 && (key < 48 || key > 57)) {
                        e.preventDefault();
                    }
                });
            });


                    $( document ).ready(function() {
                $( ".txtOnly" ).keypress(function(e) {
                    var key = e.keyCode;
                    if (key >= 48 && key <= 57) {
                        e.preventDefault();
                    }
                });
            });

        function enFoco(text) {
            objeto = document.getElementById(text);
            if (objeto.classList.contains("border-success")) {
                objeto.style.boxShadow = "0 0 0 0.2rem rgba(79, 162, 51, 0.25)";
            } else {
                objeto.className = "form-control border border-danger";
                objeto.style.boxShadow = "0 0 0 0.2rem rgba(255, 0, 0, 0.23)";
            }
        }

        function sacarFoco(text) {
            objeto = document.getElementById(text);
            objeto.style.boxShadow = "0 0 0 0.2rem rgba(0,123,255,0)";
        }

            function botonOculto() {
                if (document.getElementById("<%=txtDNI.ClientID%>").value != "") {
                    document.getElementById("<%=btnValidar.ClientID%>").click();
                }
                else {
                    alert("No has ingresado ningún DNI.")
                }
            }
        

        function validarDNI() {
            objeto = document.getElementById("<%=txtDNI.ClientID%>");
            valueForm = objeto.value;
            if (valueForm.length < 7) {
                objeto.className = "form-control border border-danger";
                btnValidar.disabled = true;
            }
            else {
                objeto.className = "form-control border border-success";
                btnValidar.disabled = false;
            }
        }

        function validarVacio(text) {
            objeto = document.getElementById(text);
            valueForm = objeto.value;
            if (valueForm != "" && valueForm.length >= 3) {
                objeto.className = "form-control border border-success";
                objeto.style.boxShadow = "0 0 0 0.2rem rgba(79, 162, 51, 0.25)";
            }
            else {
                objeto.className = "form-control border border-danger";
                objeto.style.boxShadow = "0 0 0 0.2rem rgba(255, 0, 0, 0.23)";
            }
        }
    </script>
  
    <div style="font-family: 'Roboto', sans-serif;">

        <h1>Completanos tus datos personales </h1>
                        <br />
        <div>
            <asp:Label ID="lblDNI" runat="server" Text="DNI"></asp:Label>
            <br />
            <div class="row">
                <div class="col-sm-4">
                    <asp:TextBox ID="txtDNI" runat="server" class="form-control numOnly" placeholder="XXXXXXXX" onkeyup="validarDNI()" MaxLength="8" onblur="javascript:sacarFoco(this.id)"></asp:TextBox>
                                </div>
                <div class="col-sm-1">
                    <asp:Button ID="btnValidar" runat="server" Text="Validar" OnClick="btnHide_Click" class="btn btn-info" />
                </div>
            </div>
            <br />
        </div>
        <div class="row">
            <div class="col-sm-4">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
            </div>
            <div class="col-sm-4">
                <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
            </div>
            <div class="col-sm-4">
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <asp:TextBox ID="txtNombre" runat="server" class="form-control txtOnly" placeholder="Juan" onKeyUp="javascript:validarVacio(this.id)" onblur="javascript:sacarFoco(this.id)" onfocus="javascript:enFoco(this.id)"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:TextBox ID="txtApellido" runat="server" class="form-control txtOnly" placeholder="Gómez" onKeyUp="javascript:validarVacio(this.id)" onblur="javascript:sacarFoco(this.id)" onfocus="javascript:enFoco(this.id)"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:TextBox ID="txtEmail" runat="server" class="form-control" onKeyUp="javascript:validarEmail()" onfocus="javascript:validarEmail()" onblur="javascript:sacarFoco(this.id)" placeholder="jgomez@gmail.com"></asp:TextBox>
            </div>
        </div>
        <br />
                <div class="row">
            <div class="col-sm-4">
                <asp:Label ID="lblTelefono" runat="server" Text="Telefono"></asp:Label>
            </div>
            <div class="col-sm-4">
                <asp:Label ID="lblCalle" runat="server" Text="Calle"></asp:Label>
            </div>
            <div class="col-sm-4">
                <asp:Label ID="lblNumeracion" runat="server" Text="Numeracion"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <asp:TextBox ID="txtTelefono" runat="server" class="form-control numOnly" placeholder="45124400" onKeyUp="javascript:validarVacio(this.id)" MaxLength="12" onblur="javascript:sacarFoco(this.id)" onfocus="javascript:enFoco(this.id)"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:TextBox ID="txtCalle" runat="server" class="form-control txtOnly" placeholder="Cazón" onKeyUp="javascript:validarVacio(this.id)" onblur="javascript:sacarFoco(this.id)" onfocus="javascript:enFoco(this.id)"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                 <asp:TextBox ID="txtNumeracion" runat="server" class="form-control numOnly" placeholder="1514" onKeyUp="javascript:validarVacio(this.id)" MaxLength="6" onblur="javascript:sacarFoco(this.id)" onfocus="javascript:enFoco(this.id)"></asp:TextBox>
              </div>
        </div>
        <br />
                        <div class="row">
            <div class="col-sm-4">
                <asp:Label ID="lblLocalidad" runat="server" Text="Localidad"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <asp:TextBox ID="txtLocalidad" runat="server" class="form-control txtOnly" placeholder="Tigre" onKeyUp="javascript:validarVacio(this.id)" onblur="javascript:sacarFoco(this.id)" onfocus="javascript:enFoco(this.id)"></asp:TextBox>
            </div>
             </div>
                 <br />
                                <div class="row">
            <div class="col-sm-4">
                <asp:Label ID="lblFecNac" runat="server" Text="Fecha de Nacimiento"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <asp:Calendar ID="cldFechaNac" runat="server" SelectedDate="<%# DateTime.Today %>"></asp:Calendar>
            </div>
             </div>
             
        <br />
        <br />
                <h2>Reservá ahora! </h2>
                <br />
            <div class="row">
            <div class="col-sm-4">
            <asp:Button runat="server" class="btn btn-primary btn-lg" ID="btnMesaUno" Text="Mesa 1 (2 asientos)" OnClick="btnReservarUno_Click" />
            </div>
            <div class="col-sm-4">
            <asp:Button runat="server" class="btn btn-primary btn-lg" ID="btnMesaDos" Text="Mesa 2 (2 asientos)" OnClick="btnReservarDos_Click" />
            </div>
            <div class="col-sm-4">
            <asp:Button runat="server" class="btn btn-primary btn-lg" ID="btnMesaTres" Text="Mesa 3 (2 asientos)" OnClick="btnReservarTres_Click" />
            </div>
            </div>
            <br />
            <div class="row">
            <div class="col-sm-4">
            <asp:Button runat="server" class="btn btn-primary btn-lg" ID="btnMesaCuatro" Text="Mesa 4 (2 asientos)" OnClick="btnReservarCuatro_Click" />
            </div>
            <div class="col-sm-4">
            <asp:Button runat="server" class="btn btn-primary btn-lg" ID="btnMesaCinco" Text="Mesa 5 (4 asientos)" OnClick="btnReservarCinco_Click" />
            </div>
            <div class="col-sm-4">
            <asp:Button runat="server" class="btn btn-primary btn-lg" ID="btnMesaSeis" Text="Mesa 6 (4 asientos)" OnClick="btnReservarSeis_Click" />
            </div>
            </div>
            <br />
            <div class="row">
            <div class="col-sm-4">
            <asp:Button runat="server" class="btn btn-primary btn-lg" ID="btnMesaSiete" Text="Mesa 7 (8 asientos)" OnClick="btnReservarSiete_Click" />
            </div>
            <div class="col-sm-4">
            <asp:Button runat="server" class="btn btn-primary btn-lg" ID="btnMesaOcho" Text="Mesa 8 (12 asientos)" OnClick="btnReservarOcho_Click" />
            </div>
            </div>
           </div>
    <br />
                                            <div class="row">
            <div class="col-sm-4">
                <asp:Label ID="lblFechaReserva" runat="server" Text="Fecha de reserva"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <asp:Calendar ID="cldReserva" runat="server" SelectedDate="<%# DateTime.Today %>"></asp:Calendar>
            </div>
             </div>
        <br />


</asp:Content>
