$(document).ready(function () {
	$(".task-sidebar>a").on("click", function()
	{
		var href, movieState;
		$(".task-sidebar>a").removeClass("active")
		$(".task-sidebar>a").removeAttr("data-movie")
		href = $(this).attr("href");
		$(this).addClass("active");
		$(".nav.navbar-nav li:first-child>a").attr("href", href);
		movieState = $(".content-header").data("movie");
		$(this).attr("data-movie", movieState)

	});
	$(".nav.navbar-nav li>a").on("click", function()
	{
		var movieState;
		movieState = $(".task-sidebar:first-child>a").data("movie")
		if (movieState == true) {
			$(".watchmovie").show();
		}
		else
		{
			$(".watchmovie").hide();	
		}
	})
})