<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QR_Code.aspx.cs" Inherits="Frigo.QR_Code" %>
<!DOCTYPE html>
<html>
<head runat="server">
  <title>Frigo</title>
  <style>
    * {
        box-sizing: border-box;
    }

    input[type=text], select, textarea {
        width: 100%;
        padding: 12px;
        border: 1px solid #ccc;
        border-radius: 8px;
        resize: vertical;
    }

    label {
        padding: 12px 12px 12px 0;
        display: inline-block;
    }

    input[type=submit] {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        float: right;
    }

    input[type=submit]:hover {
        background-color: #45a049;
    }

    .container {
        border-radius: 6px;
        background-color: #f2f2f2;
        padding: 20px;
    }

    .col-20 {
        float: left;
        width: 20%;
        min-width: 63px;
        margin-top: 6px;
    }

    .col-25 {
        float: left;
        width: 25%;
        margin-top: 6px;
    }

    .col-75 {
        float: left;
        width: 75%;
        margin-top: 6px;
    }


    .col-80 {
        float: left;
        width: 80%;
        display: block;
        margin-top: 6px;
    }

    /* Clear floats after the columns */
    .row:after {
        content: "";
        display: table;
        clear: both;
    }

    @media screen and (max-width: 390px) {
        .col-80 {
          float: left;
          width: calc(100% - 65px);
        }
    }
    /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
    @media screen and (max-width: 600px) {
        .col-25, .col-75, input[type=submit] {
            width: 100%;
            margin-top: 0;
        }
    }
  </style>
</head>
<body>
   

<h2>Genera QR Code Prodotto</h2>

<div class="container" runat="server">
  <form action="Qr_Code_Show.aspx" method="get">
    <div class="row">
      <div class="col-25">
        <label for="nmProd">Nome Prodotto</label>
      </div>
      <div class="col-75">
        <input type="text" id="nmProd" name="Nome_Prodotto" placeholder="Es. Mele">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="ps">Peso</label>
      </div>
      <div class="col-75">
        <div class="col-20">
          <select id="ps_u" name="Unita">
            <option value="Kg">Kg</option>
            <option value="g">g</option>
            <option value="L">L</option>
            <option value="ml">ml</option>
          </select>
        </div>
        <div class="col-80">
          <input type="text" id="ps" name="Peso" placeholder="2">
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="qt">Quantitativo</label>
      </div>
      <div class="col-75">
        <input type="text" id="qt" name="Quantitativo" placeholder="5">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="data">Data di Scadenza</label>
      </div>
      <div class="col-75">
           <% DateTime localDate = DateTime.Now; %>
        <div class="col-20">
          <select id="data_g" name="Data_Giorno">
              <%
                  for (int i = 1; i <= 31; i++)
                  {
                      if(i==localDate.Day)
                          Response.Write("<option value=\""+i+"\" selected >"+i+"</option>");
                      else
                          Response.Write("<option value=\""+i+"\">"+i+"</option>");
                  }
              %>
          </select>
        </div>
        <div class="col-20">
          <select id="data_m" name="Data_Mese">
              <%
                  for (int i = 1; i <= 31; i++)
                  {
                      if(i==localDate.Month)
                          Response.Write("<option value=\""+i+"\" selected >"+i+"</option>");
                      else
                          Response.Write("<option value=\""+i+"\">"+i+"</option>");
                  }
              %>
          </select>
        </div>
        <div class="col-20">
          <select id="data_a" name="Data_Anno">
              <%
                  for (int i = 2000; i <= 2050; i++)
                  {
                      if(i==localDate.Year)
                          Response.Write("<option value=\""+i+"\" selected >"+i+"</option>");
                      else
                          Response.Write("<option value=\""+i+"\">"+i+"</option>");
                  }
              %>
          </select>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="prov">Provenienza</label>
      </div>
      <div class="col-75">
        <input type="text" id="prov" name="Provenienza" placeholder="Italia">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="ma">Marca</label>
      </div>
      <div class="col-75">
        <input type="text" id="ma" name="Marca" placeholder="Melinda">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="all">Allergeni</label>
      </div>
      <div class="col-75">
        <textarea id="all" name="Allergeni" placeholder="..." style="height:200px"></textarea>
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Genera">
    </div>
  </form>
</div>

</body>
</html>
