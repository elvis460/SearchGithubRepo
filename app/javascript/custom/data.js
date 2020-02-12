$(() => {
	$('#search-btn').on('click', () => {
		const query = $('#search-input').val();

		$.ajax({
      method: 'GET',
		  url: URL,
      data: { query: query }
		}).done(() => {
		}).fail(() => {
			$('#repo-secion').html('<h4 class="text-center">Someting went wrong, plz try it again.</h4>');
  	})
	});
});
