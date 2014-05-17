<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="PatraoAutoPecas.Contact" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Contato do Desenvolvedor.</h2>
    </hgroup>

    <section class="contact">
        <header>
            <h3>Telefone:</h3>
        </header>
        <p>
            <span class="label">Celular:</span>
            12 - 99729 - 0310
        </p>
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Suporte:</span>
            <span><a href="mailto:Support@example.com">charlesnet19@gmail.com</a></span>
        </p>
        <p>
            &nbsp;</p>
    </section>

    <section class="contact">
    </section>
</asp:Content>