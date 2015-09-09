<!-- Brands -->
<?php
global $config, $loader, $registry, $db, $session;

$store_id = $config->get('config_store_id');
$lang = $config->get('config_language_id');

if ($store_id == 0) {
    $customisation_general = $config->get('customisation_general');
    $customisation_translation = $config->get('customisation_translation');
} else {
    $customisation_general = $config->get('customisation_general_store');
    $customisation_translation = $config->get('customisation_translation_store');
    if (isset($customisation_translation[$lang]["brands_title"][$store_id])) {$customisation_translation[$lang]["brands_title"] = $customisation_translation[$lang]["brands_title"][$store_id];}

}

?>
<section class="<?php echo (isset($customisation_general['homepage_mode']) && $customisation_general['homepage_mode'] == 'boxed' ? '' : 'container'); ?> content-row brands_block">
    <h3><?php echo (!isset($customisation_translation[$lang]["brands_title"]) ? 'BRANDS' : $customisation_translation[$lang]["brands_title"]); ?></h3>
    <div class="brands carouFredSel row">
        <div class="carouFredSel-controls">
            <div class="carouFredSel-buttons">
                <a id="brands-carousel-prev" class="prev"></a>
                <a id="brands-carousel-next" class="next"></a>
            </div>
        </div>
        <div class="brands-carousel">
            <ul class="slides">
                <?php foreach ($banners as $banner) : ?>
                    <li>
                        <?php if ($banner['link']) : ?><a href="<?php echo $banner['link']; ?>"><?php endif; ?>
                        <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" />
                        <?php if ($banner['link']) : ?></a><?php endif; ?>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
</section>
<!-- //end Brands -->


<script type="text/javascript"><!--
var brandsCarousel = $(".brands-carousel ul");
var brandsCarouselMax = 6;
if ($(".content-center .brands-carousel ul").length > 0) {  brandsCarouselMax = 4 }

jQuery(function() {

    brandsCarousel.carouFredSel({
    responsive: true,
    width: '100%',
    scroll: 1,
    prev: '#brands-carousel-prev',
    next: '#brands-carousel-next',
    items: {
        width:170,
        height:48,
        visible: {
            min: 1,
            max: brandsCarouselMax
        }
    }
});
});

//--></script>