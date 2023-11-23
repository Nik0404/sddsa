<footer class="footer mt-auto py-3 bg-dark">
    <div class="container">
        <h5 class="text-center text-white">MusicHouse</h5>
    </div>
</footer>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>

<script>
    $(function () {
        $('#carousel').carousel({
            interval: 10000,
            keyboard: false,
            pause: 'hover',
            ride: 'carousel',
            wrap: false
        });
    });</script>

<script type="text/javascript">
    $(function () {
        var id = $(".box-cart").data("id");
        var uId = $(".box-cart").data('user');
        var cart = {};
        if (localStorage.getItem('cart')) {
            var cart = JSON.parse(localStorage.getItem('cart'));
            setLocalStorage(id, uId);
        } else {
            setLocalStorage(id, uId);
        }

        function setLocalStorage(id, uId) {
            $.ajax({
                url: '/e-commerce/count',
                method: 'get',
                dataType: 'json',
                data: {id: id, uid: uId},
                success: function (data) {
                    console.log(data);
                    data.forEach(function (post) {
                        cart["quantity_products_" + post.toolsId + "uid_" + post.userId] = post.count;
                        localStorage.setItem('cart', JSON.stringify(cart));
                        console.log(post.toolsId);
                    });

                },
                error: function (error) {
                    console.log('Error sending cart data');
                }
            });
        }

        $('.add-cart').click(function (e) {
            e.preventDefault();
            var id = $(this).data('id');
            var uId = $(this).data('user');

            console.log(111 + " " + cart["quantity_products_" + id + "uid_" + uId]);
            const box = $(this).closest(".box-cart");
            if (uId) {
                if (cart["quantity_products_" + id + "uid_" + uId] === undefined) {
                    cart["quantity_products_" + id + "uid_" + uId] = 1;
                } else {
                    cart["quantity_products_" + id + "uid_" + uId]++;
                    box.find('.quantity_cart').text(cart["quantity_products_" + id + "uid_" + uId]);
                }
            }
            localStorage.setItem('cart', JSON.stringify(cart));

            sendCartData(id, uId, cart);
        });

        function sendCartData(id, uId, cart) {
            if (id && uId) {
                $.ajax({
                    url: '/e-commerce/addCart',
                    method: 'post',
                    dataType: 'json',
                    data: {id: id, uid: uId, count: cart["quantity_products_" + id + "uid_" + uId]},
                    success: function (data) {
                        console.log('Cart data sent successfully');
                    },
                    error: function (error) {
                        console.log('Error sending cart data');
                    }
                });
            }
        }

        function removeCartData(id, uId, count, box) {
            if (id) {
                delete cart["quantity_products_" + id + "uid_" + uId];
                $.ajax({
                    url: '/e-commerce/removeCart',
                    method: 'get',
                    dataType: 'html',
                    data: {id: id, uid: uId, count: count},
                    success: function (data) {
                        console.log('Cart data removed successfully');
                        console.log(data);
                        if (data) {
                            box.remove();
                        }
                    },
                    error: function (error) {
                        console.log('Error removing cart data');
                    }
                });
            }
        }

        $('.add-quantity').click(function (e) {
            e.preventDefault();
            var id = $(this).data('id');
            var uId = $(this).data('user');
            const box = $(this).closest(".box-cart");

            if (cart["quantity_products_" + id + "uid_" + uId] == undefined) {
                cart["quantity_products_" + id + "uid_" + uId] = 1;
            } else {
                cart["quantity_products_" + id + "uid_" + uId]--;
                box.find('.quantity_cart').text(cart["quantity_products_" + id + "uid_" + uId]);
                if (cart["quantity_products_" + id + "uid_" + uId] == 0) {
                    removeCartData(id, uId, cart["quantity_products_" + id + "uid_" + uId], box);
                }
            }

            localStorage.setItem('cart', JSON.stringify(cart));

            sendCartData(id, uId, cart);
        });
    });
</script>