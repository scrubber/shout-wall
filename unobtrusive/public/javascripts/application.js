$(document).ready(function() {		  
  $("#message-form").ajaxForm({success: handleNewMessage});

  function handleNewMessage(response, statusText) {
		$("#messages").prepend(response).effect("highlight", {}, 1500);				
  }		
});
