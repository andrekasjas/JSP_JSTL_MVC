<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
		crossorigin="anonymous">
		<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">
<title>Insertar Producto</title>
</head>
<body>
<script src="https://cdn01.jotfor.ms/static/prototype.forms.js?3.3.39584" type="text/javascript"></script>
<script src="https://cdn02.jotfor.ms/static/jotform.forms.js?3.3.39584" type="text/javascript"></script>
<script defer src="https://cdnjs.cloudflare.com/ajax/libs/punycode/1.4.1/punycode.js"></script>
<script type="text/javascript">	JotForm.newDefaultTheme = true;
	JotForm.extendsNewTheme = false;
	JotForm.singleProduct = false;
	JotForm.newPaymentUIForNewCreatedForms = false;
	JotForm.newPaymentUI = true;

	JotForm.init(function(){
	/*INIT-START*/
      setTimeout(function() {
          $('input_14').hint('Ej: A1245');
       }, 20);
      JotForm.description('input_14', 'Inserte el Codigod el producto');
      setTimeout(function() {
          $('input_15').hint('Ej: Alimentos');
       }, 20);
      JotForm.description('input_15', 'Inserte la Seccion del producto');
      setTimeout(function() {
          $('input_16').hint('Ej: Plato');
       }, 20);
      JotForm.description('input_16', 'Inserte el Nombre del producto');
      setTimeout(function() {
          $('input_17').hint('Ej: 20000');
       }, 20);
      JotForm.description('input_17', 'Inserte el Precio del producto');
      setTimeout(function() {
          $('input_19').hint('Ej: EEUU');
       }, 20);
      JotForm.description('input_19', 'Pais de origen del producto');
	/*INIT-END*/
	});

   JotForm.prepareCalculationsOnTheFly([null,null,null,null,null,null,null,null,null,null,null,null,null,{"name":"clickTo","qid":"13","text":"Insertar Producto","type":"control_head"},{"description":"Inserte el Codigod el producto","name":"codigo","qid":"14","subLabel":"Codigo del producto","text":"Codigo","type":"control_email"},{"description":"Inserte la Seccion del producto","name":"codigo15","qid":"15","subLabel":"Seccion del producto","text":"Seccion","type":"control_email"},{"description":"Inserte el Nombre del producto","name":"codigo16","qid":"16","subLabel":"Nombre del producto","text":"Nombre","type":"control_email"},{"description":"Inserte el Precio del producto","name":"codigo17","qid":"17","subLabel":"Precio del producto","text":"Precio","type":"control_email"},null,{"description":"Pais de origen del producto","name":"importado","qid":"19","subLabel":"Pais del producto","text":"Pais","type":"control_email"},{"name":"enviar","qid":"20","text":"Enviar","type":"control_button"},{"description":"","name":"importado21","qid":"21","text":"Importado","type":"control_radio"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,null,null,null,null,null,null,null,null,null,null,null,null,{"name":"clickTo","qid":"13","text":"Insertar Producto","type":"control_head"},{"description":"Inserte el Codigod el producto","name":"codigo","qid":"14","subLabel":"Codigo del producto","text":"Codigo","type":"control_email"},{"description":"Inserte la Seccion del producto","name":"codigo15","qid":"15","subLabel":"Seccion del producto","text":"Seccion","type":"control_email"},{"description":"Inserte el Nombre del producto","name":"codigo16","qid":"16","subLabel":"Nombre del producto","text":"Nombre","type":"control_email"},{"description":"Inserte el Precio del producto","name":"codigo17","qid":"17","subLabel":"Precio del producto","text":"Precio","type":"control_email"},null,{"description":"Pais de origen del producto","name":"importado","qid":"19","subLabel":"Pais del producto","text":"Pais","type":"control_email"},{"name":"enviar","qid":"20","text":"Enviar","type":"control_button"},{"description":"","name":"importado21","qid":"21","text":"Importado","type":"control_radio"}]);}, 20); 
</script>
<style type="text/css">@media print{.form-section{display:inline!important}.form-pagebreak{display:none!important}.form-section-closed{height:auto!important}.page-section{position:initial!important}}</style>
<link type="text/css" rel="stylesheet" href="https://cdn01.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?v=3.3.39584&themeRevisionID=5f30e2a790832f3e96009402"/>
<link type="text/css" rel="stylesheet" href="https://cdn02.jotfor.ms/css/styles/payment/payment_styles.css?3.3.39584" />
<link type="text/css" rel="stylesheet" href="https://cdn03.jotfor.ms/css/styles/payment/payment_feature.css?3.3.39584" />
<style type="text/css" id="form-designer-style">
    /* Injected CSS Code */
/*PREFERENCES STYLE*/
    .form-all {
      font-family: Inter, sans-serif;
    }
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-family: Inter, sans-serif;
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-family: Inter, sans-serif;
    }
    .form-header-group {
      font-family: Inter, sans-serif;
    }
    .form-label {
      font-family: Inter, sans-serif;
    }
  
    .form-label.form-label-auto {
      
    display: inline-block;
    float: left;
    text-align: left;
  
    }
  
    .form-line {
      margin-top: 12px 36px 12px 36px px;
      margin-bottom: 12px 36px 12px 36px px;
    }
  
    .form-all {
      max-width: 752px;
      width: 100%;
    }
  
    .form-label.form-label-left,
    .form-label.form-label-right,
    .form-label.form-label-left.form-label-auto,
    .form-label.form-label-right.form-label-auto {
      width: 230px;
    }
  
    .form-all {
      font-size: 16px
    }
    .form-all .qq-upload-button,
    .form-all .qq-upload-button,
    .form-all .form-submit-button,
    .form-all .form-submit-reset,
    .form-all .form-submit-print {
      font-size: 16px
    }
    .form-all .form-pagebreak-back-container,
    .form-all .form-pagebreak-next-container {
      font-size: 16px
    }
  
    .supernova .form-all, .form-all {
      background-color: #fff;
    }
  
    .form-all {
      color: #2C3345;
    }
    .form-header-group .form-header {
      color: #2C3345;
    }
    .form-header-group .form-subHeader {
      color: #2C3345;
    }
    .form-label-top,
    .form-label-left,
    .form-label-right,
    .form-html,
    .form-checkbox-item label,
    .form-radio-item label,
    span.FITB .qb-checkbox-label,
    span.FITB .qb-radiobox-label,
    span.FITB .form-radio label,
    span.FITB .form-checkbox label,
    [data-blotid][data-type=checkbox] [data-labelid],
    [data-blotid][data-type=radiobox] [data-labelid],
    span.FITB-inptCont[data-type=checkbox] label,
    span.FITB-inptCont[data-type=radiobox] label {
      color: #2C3345;
    }
    .form-sub-label {
      color: #464d5f;
    }
  
    .supernova {
      background-color: #ecedf3;
    }
    .supernova body {
      background: transparent;
    }
  
    .form-textbox,
    .form-textarea,
    .form-dropdown,
    .form-radio-other-input,
    .form-checkbox-other-input,
    .form-captcha input,
    .form-spinner input {
      background-color: #fff;
    }
  
      .supernova {
        height: 100%;
        background-repeat: repeat;
        background-attachment: scroll;
        background-position: center top;
      }
      .supernova {
        background-image: url("https://www.jotform.com/uploads/anil/form_files/luca-bravo-177552.498.jpg");
      }
      #stage {
        background-image: url("https://www.jotform.com/uploads/anil/form_files/luca-bravo-177552.498.jpg");
      }
    
    .form-all {
      background-image: none;
    }
  
  .ie-8 .form-all:before { display: none; }
  .ie-8 {
    margin-top: auto;
    margin-top: initial;
  }
  
  /*PREFERENCES STYLE*//*__INSPECT_SEPERATOR__*/.form-label.form-label-auto {
        
        display: inline-block;
        float: left;
        text-align: left;
      
      }
    /* Injected CSS Code */
</style>

<form class="jotform-form" action="ControladorProductos" method="get">
<input type="hidden" name="instruccion" value="actualizarBD">
<input type="hidden" name="q14_codigo" value="${elProducto.codigo }">

  <div role="main" class="form-all">
    <style>
      .form-all:before
      {
        background: none;
      }
    </style>
    <ul class="form-section page-section">
      <li id="cid_13" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-large">
          <div class="header-text httal htvam">
            <h1 id="header_13" class="form-header" data-component="header">Actualizar Producto</h1>
          </div>
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_email" id="id_15"><label class="form-label form-label-left form-label-auto" id="label_15" for="input_15"> Seccion<span class="form-required">*</span> </label>
        <div id="cid_15" class="form-input jf-required" data-layout="half"> <span class="form-sub-label-container" style="vertical-align:top"><input type="text" id="input_15" name="q15_codigo15" class="form-textbox validate[required]" data-defaultvalue="" style="width:310px" size="310" value="${elProducto.seccion}" placeholder="Ej: Alimentos" data-component="email" aria-labelledby="label_15 sublabel_input_15" required="" /><label class="form-sub-label" for="input_15" id="sublabel_input_15" style="min-height:13px" aria-hidden="false">Seccion del producto</label></span> </div>
      </li>
      <li class="form-line jf-required" data-type="control_email" id="id_16"><label class="form-label form-label-left form-label-auto" id="label_16" for="input_16"> Nombre<span class="form-required">*</span> </label>
        <div id="cid_16" class="form-input jf-required" data-layout="half"> <span class="form-sub-label-container" style="vertical-align:top"><input type="text" id="input_16" name="q16_codigo16" class="form-textbox validate[required]" data-defaultvalue="" style="width:310px" size="310" value="${elProducto.nombre}" placeholder="Ej: Plato" data-component="email" aria-labelledby="label_16 sublabel_input_16" required="" /><label class="form-sub-label" for="input_16" id="sublabel_input_16" style="min-height:13px" aria-hidden="false">Nombre del producto</label></span> </div>
      </li>
      <li class="form-line jf-required" data-type="control_email" id="id_17"><label class="form-label form-label-left form-label-auto" id="label_17" for="input_17"> Precio<span class="form-required">*</span> </label>
        <div id="cid_17" class="form-input jf-required" data-layout="half"> <span class="form-sub-label-container" style="vertical-align:top"><input type="number" id="input_17" name="q17_codigo17" class="form-textbox validate[required]" data-defaultvalue="" style="width:310px" size="310" value="${elProducto.precio}" placeholder="Ej: 20000" data-component="email" aria-labelledby="label_17 sublabel_input_17" required="" /><label class="form-sub-label" for="input_17" id="sublabel_input_17" style="min-height:13px" aria-hidden="false">Precio del producto</label></span> </div>
      </li>
      <li class="form-line jf-required" data-type="control_radio" id="id_21"><label class="form-label form-label-left form-label-auto" id="label_21" for="input_21"> Importado<span class="form-required">*</span> </label>
        <div id="cid_21" class="form-input jf-required" data-layout="full">
          <div class="form-single-column" role="group" aria-labelledby="label_21" data-component="radio"><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span>
          
          <input <c:if test="${elProducto.importado == 'Verdadero'}"> checked</c:if> type="radio" aria-describedby="label_21" class="form-radio validate[required]" id="input_21_0" name="q21_importado21" value="Verdadero" required="" /><label id="label_input_21_0" for="input_21_0">Verdadero</label></span><span class="form-radio-item" style="clear:left"><span class="dragger-item"></span>
          <input <c:if test="${elProducto.importado == 'Falso'}"> checked</c:if> type="radio" aria-describedby="label_21" class="form-radio validate[required]" id="input_21_1" name="q21_importado21" value="Falso" required="" /><label id="label_input_21_1" for="input_21_1">Falso</label></span></div>
          
        </div>
      </li>
      <li class="form-line jf-required" data-type="control_email" id="id_19"><label class="form-label form-label-left form-label-auto" id="label_19" for="input_19"> Pais<span class="form-required">*</span> </label>
        <div id="cid_19" class="form-input jf-required" data-layout="half"> <span class="form-sub-label-container" style="vertical-align:top"><input type="text" id="input_19" name="q19_importado" class="form-textbox validate[required]" data-defaultvalue="" style="width:310px" size="310" value="${elProducto.pais}" placeholder="Ej: EEUU" data-component="email" aria-labelledby="label_19 sublabel_input_19" required="" /><label class="form-sub-label" for="input_19" id="sublabel_input_19" style="min-height:13px" aria-hidden="false">Pais del producto</label></span> </div>
      </li>
      <li class="form-line" data-type="control_button" id="id_20">
        <div id="cid_20" class="form-input-wide" data-layout="full">
          <div data-align="auto" class="form-buttons-wrapper form-buttons-auto   jsTest-button-wrapperField"><button id="input_20" type="submit" class="form-submit-button submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">Actualizar</button></div>
        </div>
      </li>
      <li style="display:none">Should be Empty: <input type="text" name="website" value="" /></li>
    </ul>
  </div>
  <script>
    JotForm.showJotFormPowered = "new_footer";
  </script>
  <script>
    JotForm.poweredByText = "Powered by Jotform";
  </script><input type="hidden" class="simple_spc" id="simple_spc" name="simple_spc" value="230525761092655" />
  <script type="text/javascript">
    var all_spc = document.querySelectorAll("form[id='230525761092655'] .si" + "mple" + "_spc");
    for (var i = 0; i < all_spc.length; i++)
    {
      all_spc[i].value = "230525761092655-230525761092655";
    }
  </script>
</form><script type="text/javascript">JotForm.ownerView=true;</script><script src="https://cdn.jotfor.ms//js/vendor/smoothscroll.min.js?v=3.3.39584"></script>
<script src="https://cdn.jotfor.ms//js/errorNavigation.js?v=3.3.39584"></script>

</body>
</html>