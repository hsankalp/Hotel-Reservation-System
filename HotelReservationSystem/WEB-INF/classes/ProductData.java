import java.util.HashMap;

public class ProductData {
    
    private HashMap products = new HashMap();
    

    public HashMap getProducts() {
        return products;
    }
    
    public ProductData() {
        
			products.put("1", new Product("1","Superior Room"));
			products.put("2", new Product("2","Deluxe Room"));
			products.put("3", new Product("3","Premier Room"));
			products.put("4", new Product("4","Premier Plus Room"));
			products.put("5", new Product("5","Executive Suite"));
			products.put("6", new Product("6","Presidential Suite"));
			products.put("7", new Product("7","Royal Suite"));
			products.put("8", new Product("8","Imperial Suite"));
			products.put("9", new Product("9","Indian Style Spa"));
			products.put("10", new Product("10","Fitness Centre"));
			products.put("11", new Product("11","Sauna"));
			products.put("12", new Product("12","Cloud Gate Kids Club"));
			products.put("13", new Product("13","Heritage Buffet"));
			products.put("14", new Product("14","La Cuisine Buffet"));
			products.put("15", new Product("15","Toela's European Buffet"));
			
    }

}
