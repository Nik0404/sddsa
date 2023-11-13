package com.DAO;

import com.entity.Cart;
import java.util.List;

public interface CartDao {
    public boolean addCart(Cart c);
    
    public Cart getCartItemByIdAndUserId(int id, int uId);
    
    public boolean updateCartCount(Cart c);
    
    public int quntityTools(int uid);
    
    public List<Cart> getToolsUser(int userId);
}
