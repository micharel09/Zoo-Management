package sample.cart;

import java.util.ArrayList;
import java.util.List;

public class Cart {

    private List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public List<Item> getItems() {
        return items;
    }

    public int getQuantityById(String id) {
        return getItemById(id).getQuantity();
    }

    private Item getItemById(String id) {
        for (Item i : items) {
            if (i.getProduct().getTid().equals(id)) {
                return i;
            }
        }
        return null;
    }

    public void addItem(Item t) {
        if (getItemById(t.getProduct().getTid()) != null) {
            Item m = getItemById(t.getProduct().getTid());
            m.setQuantity(m.getQuantity() + t.getQuantity());
        } else {
            items.add(t);
        }
    }

    public void removeItem(String id) {
        if (getItemById(id) != null) {
            items.remove(getItemById(id));
        }
    }

        public double getTotalMoney() {
            double t = 0;
            for (Item i : items) {
                t += (i.getQuantity() * i.getPrice());
            }
            return t;
        }

    private Product getProductById(String id, List<Product> list) {
        for (Product i : list) {
            if (i.getTid().equals(id)) {
                return i;
            }
        }
        return null;
    }

    public Cart(String txt, List<Product> list) {
        items = new ArrayList<>();
        try {
            if (txt != null && txt.length() != 0) {
                String[] s = txt.split("_");
                for (String i : s) {
                    String[] n = i.split(":");
                    String id = n[0];
                    int quantity = Integer.parseInt(n[1]);
                    Product p = getProductById(id, list);
                    Item t = new Item(p, quantity, p.getPrice());
                    addItem(t);
                }
            }
        } catch (Exception e) {
            // Handle the exception appropriately
        }
    }
    
}

