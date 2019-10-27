package usyd.elec5619.slimYB.service;

import junit.framework.TestCase;
import usyd.elec5619.slimYB.domain.Forum;
import usyd.elec5619.slimYB.domain.Product;
import usyd.elec5619.slimYB.domain.User;

import java.util.*;

public class ProductManagerTest extends TestCase{

	private ProductManager productManager;
	
	protected void setUp() throws Exception {
		productManager=new ProductManager();
		
		User u = new User();
		u.setEmail("testEmail");
		u.setId(0);
		u.setPassword("testPassword");
		u.setUsername("testUsername");
		
		//list of products
		Product p1 = new Product();
		p1.setDescription("testDescription");
		p1.setId(0);
		p1.setImagePath("testImagePath");
		p1.setPrice(10.0);
		p1.setProductName("testProductName");
		p1.setUserId(u);
		
		Product p2 = new Product();
		p2.setDescription("testDescription");
		p2.setId(1);
		p2.setImagePath("testImagePath");
		p2.setPrice(10.0);
		p2.setProductName("testProductName");
		p2.setUserId(u);
		
		productManager.setTestProduct(p1);
	}
	
	public void testGetProductById() {
		productManager = new ProductManager();
		assertNull(productManager.getTestProduct(0));		
	}
	
	public void testGetProduct() {
		Product p = productManager.getTestProduct(0);
		assertNotNull(p);
		
		Product product = p;
		assertEquals("testDescription", product.getDescription());
		assertEquals("testImagePath", product.getImagePath());
		assertEquals("testProductName", product.getProductName());
		assertEquals(10.0, product.getPrice());
	}
}
