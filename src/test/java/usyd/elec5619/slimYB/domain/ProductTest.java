package usyd.elec5619.slimYB.domain;
import junit.framework.TestCase;


public class ProductTest extends TestCase{
	
	private Product product;
	
	
	protected void setUp() throws Exception{
		product = new Product();
	}
	
	public void testSetAndGetName() {
		String testName = "aName";
		assertNull(product.getProductName());
		product.setProductName(testName);
		assertEquals(testName, product.getProductName());
	}
	

	public void testSetAndImagePath() {
		String testPath = "Path";
		assertNull(product.getImagePath());
		product.setImagePath(testPath);
		assertEquals(testPath, product.getImagePath());
	}
	
	public void testSetAndGetPrice() {
		double testPrice = 100;
		
		product.setPrice(testPrice);
		assertEquals(testPrice, product.getPrice());
	}
	
	public void testSetAndGetDescription() {
		String testDescription = "testDescription";
		
		product.setDescription(testDescription);
		assertEquals(testDescription, product.getDescription());
	}
	
}