( function( api ) {
	api.sectionConstructor['underboot-upsell'] = api.Section.extend( {
		attachEvents: function () {},

		isContextuallyActive: function () {
			return true;
		}
	} );

} )( wp.customize );
