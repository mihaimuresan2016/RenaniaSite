<?php echo $header; ?>
<div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
</div>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" class="search-page">
    <h1 class="heading-title"><?php echo $heading_title; ?></h1>
    <?php echo $content_top; ?>
  <h2><?php echo $text_critea; ?></h2>
  <div class="content">
    <div id="search_action_container">
      <?php if (VERSION === '1.5.4' || VERSION === '1.5.4.1') { /* v1541 compatibility */ ?>
        <?php if ($filter_name) { ?>
        <input type="text" name="filter_name" value="<?php echo $filter_name; ?>" />
        <?php } else { ?>
        <input type="text" name="filter_name" />
        <?php } ?>
        <select name="filter_category_id">
            <option value="0"><?php echo $text_category; ?></option>
            <?php foreach ($categories as $category_1) { ?>
            <?php if ($category_1['category_id'] == $filter_category_id) { ?>
            <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_1['children'] as $category_2) { ?>
            <?php if ($category_2['category_id'] == $filter_category_id) { ?>
            <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_2['children'] as $category_3) { ?>
            <?php if ($category_3['category_id'] == $filter_category_id) { ?>
            <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php } ?>
        </select>
        <span>
        <?php if ($filter_sub_category) { ?>
        <input type="checkbox" name="filter_sub_category" value="1" id="sub_category" checked="checked" />
        <?php } else { ?>
        <input type="checkbox" name="filter_sub_category" value="1" id="sub_category" />
        <?php } ?>
        <label for="sub_category"><?php echo $text_sub_category; ?></label>

      <?php if ($filter_description) { ?>
      <input type="checkbox" name="filter_description" value="1" id="description" checked="checked" />
      <?php } else { ?>
      <input type="checkbox" name="filter_description" value="1" id="description" />
      <?php } ?>
      </span>
    <?php } else { ?>


      <?php if ($search) { ?>
      <input class="see" type="text" name="search" value="<?php echo $search; ?>" />
      <?php } else { ?>
      <input class="not_see" type="text" name="search" value="<?php echo $search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" />
      <?php } ?>
        <select id="category_hidden_select" name="category_id" style="display: none">
            <option value="0"><?php echo $text_category; ?></option>
            <?php foreach ($categories as $category_1) { ?>
            <?php if ($category_1['category_id'] == $category_id) { ?>
            <option id="<?php echo $category_1['category_id']; ?>" value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
            <?php } else { ?>
            <option id="<?php echo $category_1['category_id']; ?>" value="<?php echo $category_1['category_id']; ?>">1<?php echo $category_1['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_1['children'] as $category_2) { ?>
            <?php if ($category_2['category_id'] == $category_id) { ?>
            <option id="<?php echo $category_2['category_id']; ?>" value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } else { ?>
            <option id="<?php echo $category_2['category_id']; ?>" value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
            <?php } ?>
            <?php foreach ($category_2['children'] as $category_3) { ?>
            <?php if ($category_3['category_id'] == $category_id) { ?>
            <option id="<?php echo $category_3['category_id']; ?>" value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } else { ?>
            <option id="<?php echo $category_3['category_id']; ?>" value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php } ?>
        </select>
      <?php  ?>
      <div id="search_category_sort">
          <div id="search_category_heading">
              <div class="down_arrow"></div>
              <p><?php echo $text_category; ?></p>
          </div>
          <?php  ?>
          <input type="hidden" name="" id="<?= $category_id ?>" />
          <?php  ?><?php// echo "<pre>"; print_r($categories); die(); ?>
          <ul>
              <?php foreach ($categories as $category_1) { ?>
                  <?php if ($category_1['category_id'] == $category_id) { ?>
                      <li><a id="<?php echo $category_1['category_id']; ?>" class="selected"><?php echo $category_1['name']; ?></a></li>
                  <?php } else { ?>
                      <li><a id="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></a></li>
                  <?php } ?>
                  <?php foreach ($category_1['children'] as $category_2) { ?>
                      <?php if ($category_2['category_id'] == $category_id) { ?>
                          <li><a id="<?php echo $category_2['category_id']; ?>" class="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></a></li>
                      <?php } else { ?>
                          <li><a id="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></a></li>
                      <?php } ?>
                      <?php foreach ($category_2['children'] as $category_3) { ?>
                          <?php if ($category_3['category_id'] == $category_id) { ?>
                              <li><a id="<?php echo $category_3['category_id']; ?>" classs="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></a></li>
                          <?php } else { ?>
                              <li><a id="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></a></li>
                          <?php } ?>
                      <?php } ?>
                  <?php } ?>
              <?php } ?>
          </ul>
      </div>
      <?php  ?>
      <span>
      <?php if ($sub_category) { ?>
      <input type="checkbox" name="sub_category" value="1" id="sub_category" checked="checked" />
      <?php } else { ?>
      <input type="checkbox" name="sub_category" value="1" id="sub_category" />
      <?php } ?>
      <label for="sub_category"><?php echo $text_sub_category; ?></label>

      <?php if ($description) { ?>
      <input type="checkbox" name="description" value="1" id="description" checked="checked" />
      <?php } else { ?>
      <input type="checkbox" name="description" value="1" id="description" />
      <?php } ?>
    <?php } // if (VERSION === '1.5.4' || VERSION === '1.5.4.1') ?>
    <label for="description"><?php echo $entry_description; ?></label>
    <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="button">
    </span>
   </div>
    <?php /* ?>
  <div class="buttons">
  </div>
    <?php */ ?>
  <h2><?php echo $text_search; ?></h2>
  <?php if ($products) { ?>
  <div class="product-filter">
    <div class="display"><a onclick="display('grid');" class="grid-view"><?php echo $this->journal2->settings->get("category_grid_view_icon", $text_grid); ?></a><a onclick="display('list');" class="list-view"><?php echo $this->journal2->settings->get("category_list_view_icon", $text_list); ?></a></div>
    <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
    <div class="limit"><?php echo $text_limit; ?>
      <select onchange="location = this.value;">
        <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?>
        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
    <div class="sort"><?php echo $text_sort; ?>
      <select onchange="location = this.value;">
        <?php foreach ($sorts as $sorts) { ?>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
  </div>
  <div class="main-products product-list">
    <?php foreach ($products as $product) { ?>
    <div class="<?php echo isset($product['labels']) && is_array($product['labels']) && isset($product['labels']['outofstock']) ? 'outofstock' : ''; ?>">
      <?php if ($product['thumb']) { ?>
        <div class="image">
            <a href="<?php echo $product['href']; ?>" <?php if(isset($product['thumb2']) && $product['thumb2']): ?> class="has-second-image" style="background: url('<?php echo $product['thumb2']; ?>') no-repeat;" <?php endif; ?>>
                <img class="lazy first-image" width="<?php echo $this->journal2->settings->get('config_image_width'); ?>" height="<?php echo $this->journal2->settings->get('config_image_height'); ?>" src="<?php echo $this->journal2->settings->get('product_dummy_image'); ?>" data-src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
            </a>
            <?php if (isset($product['labels']) && is_array($product['labels'])): ?>
            <?php foreach ($product['labels'] as $label => $name): ?>
            <?php if ($label === 'outofstock'): ?>
            <img class="outofstock" <?php echo Journal2Utils::getRibbonSize($this->journal2->settings->get('out_of_stock_ribbon_size')); ?> style="position: absolute; top: 0; left: 0" src="<?php echo Journal2Utils::generateRibbon($name, $this->journal2->settings->get('out_of_stock_ribbon_size'), $this->journal2->settings->get('out_of_stock_font_color'), $this->journal2->settings->get('out_of_stock_bg')); ?>" alt="" />
            <?php else: ?>
            <span class="label-<?php echo $label; ?>"><b><?php echo $name; ?></b></span>
            <?php endif; ?>
            <?php endforeach; ?>
            <?php endif; ?>
            <?php if($this->journal2->settings->get('product_grid_wishlist_icon_position') === 'image' && $this->journal2->settings->get('product_grid_wishlist_icon_display', '') === 'icon'): ?>
            <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');" class="hint--top" data-hint="<?php echo $button_wishlist; ?>"><i class="wishlist-icon"></i><span class="button-wishlist-text"><?php echo $button_wishlist;?></span></a></div>
            <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');" class="hint--top" data-hint="<?php echo $button_compare; ?>"><i class="compare-icon"></i><span class="button-compare-text"><?php echo $button_compare;?></span></a></div>
            <?php endif; ?>
        </div>
        <?php } else { ?>
        <div class="image">
            <a href="<?php echo $product['href']; ?>">
                <img class="first-image" width="<?php echo $this->journal2->settings->get('config_image_width'); ?>" height="<?php echo $this->journal2->settings->get('config_image_height'); ?>" src="<?php echo $this->journal2->settings->get('product_no_image'); ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
            </a>
            <?php if (isset($product['labels']) && is_array($product['labels'])): ?>
            <?php foreach ($product['labels'] as $label => $name): ?>
            <?php if ($label === 'outofstock'): ?>
            <img class="outofstock" <?php echo Journal2Utils::getRibbonSize($this->journal2->settings->get('out_of_stock_ribbon_size')); ?> style="position: absolute; top: 0; left: 0" src="<?php echo Journal2Utils::generateRibbon($name, $this->journal2->settings->get('out_of_stock_ribbon_size'), $this->journal2->settings->get('out_of_stock_font_color'), $this->journal2->settings->get('out_of_stock_bg')); ?>" alt="" />
            <?php else: ?>
            <span class="label-<?php echo $label; ?>"><b><?php echo $name; ?></b></span>
            <?php endif; ?>
            <?php endforeach; ?>
            <?php endif; ?>
            <?php if($this->journal2->settings->get('product_grid_wishlist_icon_position') === 'image' && $this->journal2->settings->get('product_grid_wishlist_icon_display', '') === 'icon'): ?>
                <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');" class="hint--top" data-hint="<?php echo $button_wishlist; ?>"><i class="wishlist-icon"></i><span class="button-wishlist-text"><?php echo $button_wishlist;?></span></a></div>
                <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');" class="hint--top" data-hint="<?php echo $button_compare; ?>"><i class="compare-icon"></i><span class="button-compare-text"><?php echo $button_compare;?></span></a></div>
            <?php endif; ?>
        </div>
      <?php } ?>
      <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
      <div class="description"><?php echo $product['description']; ?></div>
      <?php if ($product['price']) { ?>
      <div class="price">
        <?php if (!$product['special']) { ?>
        <?php echo $product['price']; ?>
        <?php } else { ?>
        <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new" <?php echo isset($product['date_end']) && $product['date_end'] ? "data-end-date='{$product['date_end']}'" : ""; ?>><?php echo $product['special']; ?></span>
        <?php } ?>
        <?php if ($product['tax']) { ?>
        <br />
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($product['rating']) { ?>
      <div class="rating"><img width="83" height="15" src="<?php echo Journal2Utils::staticAsset("catalog/view/theme/default/image/stars-{$product['rating']}.png"); ?>" alt="<?php echo $product['reviews']; ?>" /></div>
      <?php } ?>
        <?php if (Journal2Utils::isEnquiryProduct($this, $product['product_id'])): ?>
        <div class="cart enquiry-button">
            <a href="javascript:Journal.openPopup('<?php echo $this->journal2->settings->get('enquiry_popup_code'); ?>', '<?php echo $product['product_id']; ?>');" data-clk="addToCart('<?php echo $product['product_id']; ?>');" class="button hint--top" data-hint="<?php echo $this->journal2->settings->get('enquiry_button_text'); ?>"><?php echo $this->journal2->settings->get('enquiry_button_icon') . '<span class="button-cart-text">' . $this->journal2->settings->get('enquiry_button_text') . '</span>'; ?></a>
        </div>
        <?php else: ?>
      <div class="cart <?php echo isset($product['labels']) && is_array($product['labels']) && isset($product['labels']['outofstock']) ? 'outofstock' : ''; ?>">
        <a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button hint--top" data-hint="<?php echo $button_cart; ?>"><i class="button-left-icon"></i><span class="button-cart-text"><?php echo $button_cart; ?></span><i class="button-right-icon"></i></a>
      </div>
        <?php endif; ?>
          <div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');" class="hint--top" data-hint="<?php echo $button_wishlist; ?>"><i class="wishlist-icon"></i><span class="button-wishlist-text"><?php echo $button_wishlist;?></span></a></div>
          <div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');" class="hint--top" data-hint="<?php echo $button_compare; ?>"><i class="compare-icon"></i><span class="button-compare-text"><?php echo $button_compare;?></span></a></div>
      </div>
    <?php } ?>
  </div>
    <?php if ($this->journal2->settings->get('config_j2sf') === 'on') { ?>
    <script>if ($(location).attr('hash').replace('#/', '').replace('#', '')) { $('.main-products.product-list').html('<div class="sf-loader"><span><?php echo $this->journal2->settings->get('filter_loading_text'); ?></span></div>'); }</script>
    <?php } ?>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <div class="content"><p class="text-empty"><?php echo $text_empty; ?></p></div>
  <?php }?>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
<?php if (VERSION === '1.5.4' || VERSION === '1.5.4.1'): /* v1541 compatibility */ ?>
$('#content input[name=\'filter_name\']').keydown(function(e) {
  if (e.keyCode == 13) {
    $('#button-search').trigger('click');
  }
});

$('#button-search').bind('click', function() {
  url = 'index.php?route=product/search';

  var filter_name = $('#content input[name=\'filter_name\']').attr('value');

  if (filter_name) {
    url += '&filter_name=' + encodeURIComponent(filter_name);
  }

  var filter_category_id = $('#content select[name=\'filter_category_id\']').attr('value');

  if (filter_category_id > 0) {
    url += '&filter_category_id=' + encodeURIComponent(filter_category_id);
  }

  var filter_sub_category = $('#content input[name=\'filter_sub_category\']:checked').attr('value');

  if (filter_sub_category) {
    url += '&filter_sub_category=true';
  }

  var filter_description = $('#content input[name=\'filter_description\']:checked').attr('value');

  if (filter_description) {
    url += '&filter_description=true';
  }

  location = url;
});
<?php else: ?>
$('#content input[name=\'search\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').bind('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').attr('disabled', 'disabled');
		$('input[name=\'sub_category\']').removeAttr('checked');
	} else {
		$('input[name=\'sub_category\']').removeAttr('disabled');
	}
});

$('select[name=\'category_id\']').trigger('change');

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';

	var search = $('#content input[name=\'search\']').attr('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').attr('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').attr('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').attr('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});
<?php endif; ?>

function display(view) {
	if (view == 'list') {
        $('.main-products.product-grid').attr('class', 'main-products product-list');
        $('.display a.grid-view').removeClass('selected');
        $('.display a.list-view').addClass('selected');

        $('.main-products.product-list > div').each(function(index, element) {
            $(this).attr('class','product-list-item xs-100 sm-100 md-100 lg-100 xl-100' + ($(this).hasClass('outofstock') ? ' outofstock' : '')).attr('data-respond','start: 150px; end: 300px; interval: 10px;');

            var html = '';

            html += '<div class="left">';

            var image = $(element).find('.image').html();

            if (image != null) {
                html += '<div class="image">' + image + '</div>';
            }
            html += '  <div class="name">' + $(element).find('.name').html() + '</div>';

            var price = $(element).find('.price').html();

            if (price != null) {
                html += '<div class="price">' + price  + '</div>';
            }

            html += '  <div class="description">' + $(element).find('.description').html() + '</div>';

            var rating = $(element).find('.rating').html();

            if (rating != null) {
                html += '<div class="rating">' + rating + '</div>';
            }

            html += '</div>';

            html += '<div class="right">';
            html += '  <div class="' + $(element).find('.cart').attr('class') + '">' + $(element).find('.cart').html() + '</div>';
            html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
            html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
            html += '</div>';

            $(element).html(html);
		});

		$.totalStorage('display', 'list');
	} else {
        $('.main-products.product-list').attr('class', 'main-products product-grid');
        $('.display a.grid-view').addClass('selected');
        $('.display a.list-view').removeClass('selected');

        $('.main-products.product-grid > div').each(function(index, element) {
            $(this).attr('class',"product-grid-item <?php echo $this->journal2->settings->get('product_grid_classes'); ?> display-<?php echo $this->journal2->settings->get('product_grid_wishlist_icon_display'); ?> <?php echo $this->journal2->settings->get('product_grid_button_block_button'); ?>"  + ($(this).hasClass('outofstock') ? ' outofstock' : ''));

            var html = '';

			var image = $(element).find('.image').html();

			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
            html += '<div class="product-details">';
            html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';

			var price = $(element).find('.price').html();

			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}

			var rating = $(element).find('.rating').html();

			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
            html += '<hr>';
            html += '<div class="' + $(element).find('.cart').attr('class') + '">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
            html += '</div>';

            $(element).html('<div class="product-wrapper knockout-around">'+html+'</div>');
		});

		$.totalStorage('display', 'grid');
	}

    $(window).trigger('list_grid_change');
    Journal.itemsEqualHeight();
    Journal.equalHeight($(".main-products .product-wrapper"), '.description');

    $(".main-products img.lazy").lazy({
        bind: 'event',
        visibleOnly: false,
        effect: "fadeIn",
        effectTime: 250
    });

    <?php /* enable quickview */ ?>
    <?php if ($this->journal2->settings->get('quickview_status') == '1' && !Journal2Cache::$mobile_detect->isMobile() && !Journal2Cache::$mobile_detect->isTablet() && !$this->journal2->html_classes->hasClass("ie8")): ?>
        Journal.enableQuickView();
        Journal.quickViewStatus = true;
    <?php else: ?>
        Journal.quickViewStatus = false;
    <?php endif; ?>

    <?php /* enable countdown */ ?>
    <?php if ($this->journal2->settings->get('show_countdown', 'never') !== 'never'): ?>
    $('.main-products > div').each(function () {
        var $new = $(this).find('.price-new');
        if ($new.length && $new.attr('data-end-date')) {
            $(this).find('.image').append('<div class="countdown"></div>');
        }
        Journal.countdown($(this).find('.countdown'), $new.attr('data-end-date'));
    });
    <?php endif; ?>
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
    display('<?php echo $this->journal2->settings->get("product_view", "grid"); ?>');
}
$('#search_category_sort').live('mouseover', function () {
    if ($('.sort > ul').is(':hidden')) {
        $('.sort > ul').fadeIn();
    }
});

$('.sort').live('mouseleave', function () {
    if ($('.sort > ul').is(':visible')) {
        $('.sort > ul').fadeOut();
    }
});

    handle_search_category();

    function handle_search_category(){
        $("#search_category_sort > ul> li").each(function(key, li) {
            var selected_cat = "";
            if ( $(li).find('a').hasClass('selected') )
            {
                selected_cat = $(this).find('a').html();
                console.log('seelected ' + selected_cat);
                $('#search_category_heading > p').html(selected_cat);
                $('#search_category_heading > .down_arrow').hide();
            }
        });
    }

    $('#search_category_sort > ul> li').live('click', function(){
        var selected_cat = $(this).find('a').html();

        $('#search_category_heading > p').html(selected_cat);
        $('#search_category_heading > .down_arrow').hide();

        $("#search_category_sort > ul> li").each(function(key, li) {
            if ( $(li).find('a').hasClass('selected') ) {
                $(li).find('a').removeClass('selected');
            }
        });

        $("#search_category_sort > ul> li").each(function(key, li) {
            if ($(li).find('a').html() == selected_cat) {
                $(li).find('a').addClass('selected');
            }
        });
    });

//--></script>
<?php echo $footer; ?>