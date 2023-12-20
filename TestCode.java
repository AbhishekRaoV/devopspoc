import org.junit.Test;
import static org.junit.Assert.assertEquals;

public class EmployeeServiceTest {

    @Test
    public void testGetEmployeeDetails() {
        EmployeeService employeeService = new EmployeeService();
        String expected = "{\"Name\":\"Mithun Technologies\",\"Calling Name\":\"Mithun\",\"DOB\":\"08-Nov-2011\",\"Hobbies\":\"Reading Technical Blogs,Teaching, Helping to Poor People..\",\"Places he like\":\"His native place\"}";
        String actual = employeeService.uploadImage(null, null, null);
        assertEquals(expected, actual);
    }
}
