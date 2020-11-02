<?php
/**
 * Template part for displaying search form in the lightbox.
 * 
 * @package underboot
 */
?>

<!-- Modal -->
<div class="modal fade" id="searchModalCenter" tabindex="-1" role="dialog" aria-labelledby="searchModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-body">
		<form class="form modal-search" method="get" id="modal-search" action="<?php echo esc_url( home_url( '/' ) ); ?>" role="search">
			<label class="assistive-text screen-reader-text" for="s">
				<?php esc_html_e( 'Search', 'underboot' ); ?>
			</label>
			<div class="input-group">
				<input class="field form-control" id="s" name="s" type="text" placeholder="<?php esc_attr_e( 'Search &hellip;', 'underboot' ); ?>" value="<?php the_search_query(); ?>">
				<span class="input-group-append">
					<input class="submit btn btn-primary" id="searchsubmit" name="submit" type="submit" value="<?php esc_attr_e( 'Search', 'underboot' ); ?>">
				</span>
			</div>
		</form>
      </div>
    </div>
  </div>
</div>