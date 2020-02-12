$(() =>
	$('#search-btn').on('click', () => {
		const query = $('#search-input').val();

		$.ajax({
      method: 'GET',
		  url: URL,
      data: { query: query }
		}).done( () => {
			console.log('success');
		}).fail( () => {
   		console.log( "error" );
  	})
	})
);
