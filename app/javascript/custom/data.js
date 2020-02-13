$(() => {
	$('#search-btn').on('click', () => {
		const query = $('#search-input').val();
    request(query, 1)
	});

  $('body').on('click', '#previous-page', () => {
    let page =$('#current-page').data('page') - 1;
    if (page <= 0) page = 1;
    const query = $('#search-input').val();
    request(query, page)
  });

  $('body').on('click', '#next-page', () => {
    const page = $('#current-page').data('page') + 1;
    const query = $('#search-input').val();
    request(query, page)
  });

  const request = (query, page) => {
    $.ajax({
      method: 'GET',
      url: URL,
      data: { query: query, page: page }
    }).done(() => {
    }).fail(() => {
      $('#repo-secion').html('<h4 class="text-center">Someting went wrong, plz try it again.</h4>');
    })
  }
});
