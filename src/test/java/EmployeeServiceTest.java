import com.mt.services.EmployeeService;
import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class EmployeeServiceTest {

    @Test
    public void testGetEmployeeDetails() {
        EmployeeService employeeService = new EmployeeService();
        String expected = "{\"Calling Name\":\"Mithun\",\"DOB\":\"08-Nov-2011\",\"Places he like\":\"His native place\",\"Hobbies\":\"Reading Technical Blogs,Teaching, Helping to Poor People..\",\"Name\":\"Mithun Technologies\"}";
        String actual = employeeService.uploadImage(null, null, null);
        assertEquals(expected, actual);
    }
}
