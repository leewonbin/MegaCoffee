/**
 * 
 */
function ajaxCall(url,type,form,callbackFnc){
	if(typeof form === "string"){
		  form = form.indexOf("#") < 0?$("#"+form):$(form)
	  }
		var formData;
		  
		  if(form == null){
			  formData = {};
		  }else if(typeof form == "object" && Object.create(form).__proto__.__proto__.jquery == undefined){
			  formData = new FormData();
			  for(var i in form){
				  formData.append(i,form[i]);
			  }
		  }else{
			  formData = new FormData(form[0]);
			  
		  }
		  
		  $.ajax({
		      url: url,
		      type: type,
		      data: formData,         
		      cache: false,
		      processData: false,
		      contentType:false,
			  enctype : "POST" == type.toUpperCase() ? 'multipart/form-data': 'application/json',
		      success: function(result) {
			   if(typeof callbackFnc == "function"){
					callbackFnc(result)
			   }
		      },
			  error : function(request, status, error){
			  		alert(request.status + " " +request.responseText);
			  		
			  }
		 });
}