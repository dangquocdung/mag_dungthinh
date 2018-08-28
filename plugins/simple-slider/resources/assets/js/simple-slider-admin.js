var initSort = function () {
    $.each($('#simple-slider-items-table_wrapper tbody'), function (index, el) {
        Sortable.create(el, {
            group: el + '_' + index, // or { name: "...", pull: [true, false, clone], put: [true, false, array] }
            sort: true, // sorting inside list
            delay: 0, // time in milliseconds to define when the sorting should start
            disabled: false, // Disables the sortable if set to true.
            store: null, // @see Store
            animation: 150, // ms, animation speed moving items when sorting, `0` — without animation
            handle: 'tbody tr',
            ghostClass: 'sortable-ghost', // Class name for the drop placeholder
            chosenClass: 'sortable-chosen', // Class name for the chosen item
            dataIdAttr: 'data-id',

            forceFallback: false, // ignore the HTML5 DnD behaviour and force the fallback to kick in
            fallbackClass: 'sortable-fallback', // Class name for the cloned DOM Element when using forceFallback
            fallbackOnBody: false,  // Appends the cloned DOM Element into the Document's Body

            scroll: true, // or HTMLElement
            scrollSensitivity: 30, // px, how near the mouse must be to an edge to start scrolling.
            scrollSpeed: 10, // px

            // dragging ended
            onEnd: function () {
                var $box = $(el).closest('.widget-body');
                $box.find('.btn-save-sort-order').addClass('sort-button-active').show();
                $.each($box.find('tbody tr'), function (index, sort) {
                    $(sort).find('.order-column').text(index + 1);
                });
            }
        });
    });

    $('.btn-save-sort-order').off('click').on('click', function (event) {
        event.preventDefault();
        if ($(this).hasClass('sort-button-active')) {
            var _self = $(this);
            var $box = $(this).closest('.box-body');
            var items = [];
            $.each($box.find('tbody tr'), function (index, sort) {
                items.push($(sort).data('id'));
                $(sort).find('.order-column').text(index + 1);
            });
            $.ajax({
                type: 'POST',
                cache: false,
                url: $box.find('tbody').data('url'),
                data: {
                    items: items
                },
                success: function (res) {
                    Botble.showNotice('success', res.message);
                    $box.find('.btn-save-sort-order').hide();
                    _self.removeClass('sort-button-active');
                },
                error: function (res) {
                    Botble.showNotice('error', res.message);
                    _self.removeClass('sort-button-active');
                }
            });
        }
    });
};

$(document).ready(function () {
    initSort();
});