<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroProdutos.aspx.cs" Inherits="PatraoAutoPecas.UI.CadastroProdutos1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/style.css" rel="stylesheet" type="text/css" media="screen" /><script type='text/javascript' src="../Scripts/WebForms/Modal.js"></script><br />          
&nbsp;&nbsp;<a href="#cadastrar" rel="modal">Cadastrar Novo Produto</a>
    <br />   
     <br />
     &nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="Pesquisar Produto:"></asp:Label>
     &nbsp;&nbsp;<asp:TextBox ID="txtPesquisar" runat="server" Width ="400"  ToolTip="Aperte Enter ou clique no botão pesquisar" />
     <asp:ImageButton ID="imgBtnPesquisar" runat="server"  onclick="imgBtnPesquisar_Click" ToolTip="Pesquisar" Width="30px" ImageUrl="~/Images/buscar.gif" />
    <br />   
     <br /> 
    &nbsp;&nbsp;<asp:Label ID="lblQuantidadText" runat="server" Text="Quantidade de produtos cadastrados:"></asp:Label><asp:Label ID="lblQuantidade" runat="server" Text="  -"></asp:Label>
    <br />   
     <br />
    <asp:GridView ID="dgvResultado" runat="server" CellPadding="2" ForeColor="#8c9195" GridLines="None" HorizontalAlign="center" 
         AutoGenerateColumns="False" AllowPaging="True" EnableModelValidation="True" PageSize ="20"
         onpageindexchanging="dgvResultado_PageIndexChanging" onrowcommand="dgvResultado_RowCommand" OnRowDeleting="dgvResultado_RowDeleting" Height="500px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <%--0--%>
             <asp:BoundField DataField="ID" HeaderText="ID" ItemStyle-Width="20" 
                InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="true" >
                <ItemStyle Width="20px"></ItemStyle>
             </asp:BoundField>
            <%--1--%>
            <asp:BoundField DataField="ESTOQUE" HeaderText="ESTOQUE" ItemStyle-Width="200" 
                InsertVisible="False" ReadOnly="True" SortExpression="ESTOQUE" >
                <ItemStyle Width="200px"></ItemStyle>
             </asp:BoundField>
            <%--2--%>
            <asp:BoundField DataField="PRODUTO" HeaderText="PRODUTO" ItemStyle-Width="200" HtmlEncode="false"
                InsertVisible="False" ReadOnly="True" SortExpression="PRODUTO" >
                <ItemStyle Width="200px"></ItemStyle>
             </asp:BoundField>
            <%--3--%>
            <asp:BoundField DataField="ESTADO_PECA" HeaderText="ESTADO_PECA" ItemStyle-Width="200" HtmlEncode="false"  
                InsertVisible="true"  ReadOnly="True" SortExpression="ESTADO_PECA" >
                <ItemStyle Width="200px"></ItemStyle>
             </asp:BoundField>
            <%--4--%>
            <asp:BoundField DataField="QUANTIDADE" HeaderText="QUANTIDADE"  
                InsertVisible="False" ReadOnly="True" SortExpression="QUANTIDADE">
                  <ItemStyle Width="200px"></ItemStyle>
             </asp:BoundField>
             <%--5--%>
            <asp:BoundField DataField="FABRICANTE" HeaderText="FABRICANTE" ItemStyle-Width="150"
                InsertVisible="False" ReadOnly="True" SortExpression="FABRICANTE" >
                <ItemStyle Width="150px"></ItemStyle>
             </asp:BoundField>
            <%--6--%>
            <asp:BoundField DataField="MODELO" HeaderText="MODELO" ItemStyle-Width="150"
                InsertVisible="true"  ReadOnly="True" SortExpression="MODELO" >
                <ItemStyle Width="150px"></ItemStyle>
             </asp:BoundField>
             <%--7--%>
            <asp:BoundField DataField="POSICAO" HeaderText="POSICAO" ItemStyle-Width="150" HtmlEncode="false"
                InsertVisible="true"  ReadOnly="True" SortExpression="POSICAO" >
                <ItemStyle Width="150px"></ItemStyle>
             </asp:BoundField>
             <%--8--%>
            <asp:BoundField DataField="COR" HeaderText="COR" 
                InsertVisible="true"  ReadOnly="True" SortExpression="COR" >
             <ItemStyle Width="150px"></ItemStyle>
            </asp:BoundField>
             <%--9--%>
            <asp:BoundField DataField="ANO" HeaderText="ANO"   HtmlEncode="false"
                InsertVisible="true"  ReadOnly="True" SortExpression="ANO">
                <ItemStyle Width="150px"></ItemStyle>
            </asp:BoundField>
             <%--10--%>
            <asp:BoundField DataField="VALOR" HeaderText="VALOR"  
                InsertVisible="true"  ReadOnly="True" SortExpression="VALOR">
                <ItemStyle Width="150px"></ItemStyle>
            </asp:BoundField>
             <%--11--%>
            <asp:BoundField DataField="OBSERVACAO" HeaderText="OBSERVACAO"  
                InsertVisible="true"  ReadOnly="True" SortExpression="OBSERVACAO" ItemStyle-Width="5px" >
                <ItemStyle Width="5px" ></ItemStyle>
            </asp:BoundField>
            <asp:ButtonField CommandName="Editar" HeaderText ="Editar"  ButtonType="Image" ImageUrl ="~/Images/editar.gif"/>
            <asp:ButtonField CommandName="Delete" HeaderText ="Delete" ButtonType="Image" ImageUrl ="~/Images/deletar.gif"/>
        </Columns>
        <EditRowStyle BackColor="#FFFDF8" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"  Font-Size ="Small" HorizontalAlign ="Center" VerticalAlign="Top" />
        <HeaderStyle BackColor="#8B8989" Font-Bold="True" ForeColor="White" />
        <PagerSettings FirstPageText="FIRST" LastPageText="LAST" Mode="NumericFirstLast" PageButtonCount="5" />
        <PagerStyle BackColor="#8B8989" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle"   Height="5px" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>

    <div class="window" id="cadastrar">
	<a href="#CadastroProduto" class="fechar">X Fechar</a>
	<h3>Cadastro de Produtos:</h3>
    
        <table id="tbFormulario">
            <tr>
                <td>
                    <label for="nome">Local do Estoque:</label>
                </td>
                <td>
                    <label for="nome">Produto:</label>
                </td>
                <td>
                    <label for="nome">Novo Produto:</label>
                </td>
               
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlLocalEstoque" runat="Server" Width ="200"></asp:DropDownList>
                </td>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel10" runat="server">
                         <ContentTemplate>
                            <asp:DropDownList ID="ddlDescricao" runat="Server" Width ="310"  AutoPostBack="true" OnSelectedIndexChanged ="ddlProduto_SelectedIndexChanged"></asp:DropDownList>
                        </ContentTemplate> 
                    </asp:UpdatePanel> 
                </td>
                <td> 
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                         <ContentTemplate>
                            <asp:TextBox ID="txtNovoProduto" runat="server" Width ="200" />
                            <asp:CheckBox ID="chbNovoProduto" runat="server" ToolTip ="Incluir Produto"  OnCheckedChanged="chbNovoProduto_CheckedChanged" AutoPostBack ="true"/> 
                        </ContentTemplate> 
                   </asp:UpdatePanel> 
                </td>
               
            </tr>
            <tr>
               
                <td>
                    <label for="nome">Posição da Peça:</label>
                </td>
                <td>
                    <label for="nome">Estado da Peça:</label>
                </td>
                <td>
                    <label for="nome">Quantidade:</label>
                </td>
               
            </tr>
            <tr>
               
                <td>
                    <asp:DropDownList ID="ddPosicaoPeca" runat="Server" Width ="200">
                        <asp:ListItem Text="DIANTEIRO" Value="1" />
                        <asp:ListItem Text="TRAZEIRO" Value="2" />
                        <asp:ListItem Text="DIREITO" Value="3" />
                        <asp:ListItem Text="ESQUERDO" Value="4" />
                        <asp:ListItem Text="TETO" Value="2" />
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlEstado" runat="Server" Width ="310">
                        <asp:ListItem Text="PEÇA NOVA" Value="1" />
                        <asp:ListItem Text="PEÇA RECUPERADA" Value="2" />
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlQuantidade" runat="Server" Width="200">
                        <asp:ListItem Text="0" Value="0" />
                        <asp:ListItem Text="1" Value="1" />
                        <asp:ListItem Text="2" Value="2" />
                        <asp:ListItem Text="3" Value="3" />
                        <asp:ListItem Text="4" Value="4" />
                        <asp:ListItem Text="5" Value="5" />
                        <asp:ListItem Text="6" Value="6" />
                        <asp:ListItem Text="7" Value="7" />
                        <asp:ListItem Text="8" Value="8" />
                        <asp:ListItem Text="9" Value="9" />
                        <asp:ListItem Text="10" Value="10" />
                        <asp:ListItem Text="11" Value="11" />
                        <asp:ListItem Text="12" Value="12" />
                        <asp:ListItem Text="13" Value="13" />
                        <asp:ListItem Text="14" Value="14" />
                        <asp:ListItem Text="15" Value="15" />
                        <asp:ListItem Text="16" Value="16" />
                        <asp:ListItem Text="17" Value="17" />
                        <asp:ListItem Text="18" Value="18" />
                        <asp:ListItem Text="19" Value="19" />
                        <asp:ListItem Text="20" Value="20" />
                    </asp:DropDownList>
                </td>
               
            </tr>
            <tr>
                
                <td>
                    <label for="nome">Côr da Peça:</label>
                </td>
                <td>
                     <label for="nome">Nova Côr:</label>
                </td>
                <td>
                     <label for="nome">Ano:</label>
                </td>
                  
            </tr>
            <tr>
            
                <td>
                     <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                         <ContentTemplate>
                             <asp:DropDownList ID="ddlCorPeca" runat="Server" Width ="200" AutoPostBack="true" OnSelectedIndexChanged ="ddlCorPeca_SelectedIndexChanged"></asp:DropDownList>
                         </ContentTemplate> 
                     </asp:UpdatePanel> 
                </td>
                <td> 
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                         <ContentTemplate>
                            <asp:TextBox ID="txtNovaCor" runat="server" Width ="280"/>
                            <asp:CheckBox ID="chbCor" runat="server" ToolTip ="Incluir Côr"  OnCheckedChanged="chbCor_CheckedChanged" AutoPostBack ="true"/> 
                        </ContentTemplate> 
                    </asp:UpdatePanel> 
                </td>
                <td>
                    <asp:DropDownList ID="ddlAno" runat="Server" Width="200">
                          <asp:ListItem Text="1990" Value="1" />
                          <asp:ListItem Text="1991" Value="2" />
                          <asp:ListItem Text="1992" Value="3" />
                          <asp:ListItem Text="1993" Value="4" />
                          <asp:ListItem Text="1994" Value="5" />
                          <asp:ListItem Text="1995" Value="6" />
                          <asp:ListItem Text="1996" Value="7" />
                          <asp:ListItem Text="1997" Value="8" />
                          <asp:ListItem Text="1998" Value="9" />
                          <asp:ListItem Text="1999" Value="10" />
                          <asp:ListItem Text="2000" Value="11" />
                          <asp:ListItem Text="2001" Value="12" />
                          <asp:ListItem Text="2002" Value="13" />
                          <asp:ListItem Text="2003" Value="14" />
                          <asp:ListItem Text="2004" Value="15" />
                          <asp:ListItem Text="2005" Value="16" />
                          <asp:ListItem Text="2006" Value="17" />
                          <asp:ListItem Text="2007" Value="18" />
                          <asp:ListItem Text="2008" Value="19" />
                          <asp:ListItem Text="2009" Value="20" />
                          <asp:ListItem Text="2010" Value="21" />
                          <asp:ListItem Text="2011" Value="22" />
                          <asp:ListItem Text="2012" Value="23" />
                          <asp:ListItem Text="2013" Value="24" />
                          <asp:ListItem Text="2014" Value="25" />
                          <asp:ListItem Text="2015" Value="26" />
                          <asp:ListItem Text="2016" Value="27" />
                          <asp:ListItem Text="2017" Value="28" />
                          <asp:ListItem Text="2018" Value="29" />
                          <asp:ListItem Text="2019" Value="30" />
                          <asp:ListItem Text="2020" Value="31" />
                    </asp:DropDownList> 
                </td>
             
            </tr>
            <tr>
               
                 <td>
                     <label for="nome">Fabricante:</label>
                </td>
                 <td>
                     <label for="nome">Modelo:</label>
                </td>
                 <td>
                     <label for="nome">Novo Modelo:</label>
                </td>
               
            </tr>
            <tr>
           
                 <td>
                     <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                         <ContentTemplate>
                             <asp:DropDownList ID="ddlFabricante" runat="Server" AutoPostBack="true" OnSelectedIndexChanged ="ddlFabricante_SelectedIndexChanged" Width="200"></asp:DropDownList> 
                         </ContentTemplate> 
                    </asp:UpdatePanel>
                 </td>
                 <td>
                     <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                         <ContentTemplate>
                            <asp:DropDownList ID="ddlModelo" runat="Server" Width="300" OnSelectedIndexChanged ="ddlModelo_SelectedIndexChanged" AutoPostBack ="true" ></asp:DropDownList> 
                         </ContentTemplate> 
                    </asp:UpdatePanel>
                </td>
                 <td>
                       <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                         <ContentTemplate>
                            <asp:TextBox ID="txtNovoModelo" runat="server" Width ="200"/>
                            <asp:CheckBox ID="chbModelo" runat="server" ToolTip ="Incluir Modelo"  OnCheckedChanged="chbModelo_CheckedChanged" AutoPostBack ="true"/> 
                         </ContentTemplate> 
                    </asp:UpdatePanel>
                </td>
           
            </tr>
        </table>
        <table> 
            <tr>
                <td>
                    <label for="nome">Valor Unitário:</label>
                      <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                         <ContentTemplate>
                    <asp:TextBox ID="txtValor" runat="server" Width ="200"  /> 
                  <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate = "txtValor"
                        ErrorMessage="Campo Obrigatório!"></asp:RequiredFieldValidator>--%>
                              </ContentTemplate>
                     </asp:UpdatePanel>  
                </td>
            </tr> 
            <tr>
                <td>
                    <label for="nome">Observação:</label>
                       <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                         <ContentTemplate>
                    <asp:TextBox ID="txtObservacao" TextMode="MultiLine"  runat="server" Width ="805" Rows ="3"/> 
                              </ContentTemplate>
                     </asp:UpdatePanel>  
                </td>
            </tr>
         </table>
        <table>
             <tr>
                 <td><%--class="salvar" --%>
                     <asp:Button ID="btnSalvar" runat="server" ToolTip ="Salvar" Text="Salvar"  OnClick="btnSalvar_Click" />
                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                         <ContentTemplate>
                            <asp:Button ID="btnSalvarContinuar" runat="server" ToolTip ="Salvar Continuar" Text="Salvar Continuar"  OnClick="btnSalvarContinuar_Click" />
                         </ContentTemplate>
                     </asp:UpdatePanel>   
                </td>
            </tr>
        </table>
     </div> 

    <!-- mascara para cobrir o site -->	
<div id="mascara"></div>
</asp:Content>
