<section class="left_block block_category">
    <h3><?php echo $heading_title; ?></h3>
    <ul class="expander-list">
      <?php foreach ($categories as $category) : ?>

      <li class="<?php echo ($category['category_id'] == $category_id ? 'active7' : 'non-active'); ?>">
          <span class="name">
              <?php if ($category['children']) : ?><span class="expander">-</span><?php endif; ?>
              <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
          </span>


        <?php if ($category['children']) : ?>
            <ul>
              <?php foreach ($category['children'] as $child) { ?>
                  <li>
                      <span class="name">
                          <a <?php if ($child['category_id'] == $child_id) { ?> style="font-weight: bold;" <?php } ?> href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                      </span>
                  </li>
              <?php } ?>
            </ul>
        <?php endif; ?>
      </li>

      <?php endforeach; ?>
    </ul>
</section>

