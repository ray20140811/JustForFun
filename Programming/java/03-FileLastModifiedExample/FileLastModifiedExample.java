import java.io.File;
import java.util.Date;

public class FileLastModifiedExample {
    public static void main(String[] args) throws Exception {
	File file = new File("testfile.txt");
	Date filelastmodifieddate = new Date(file.lastModified());

	System.out.println(filelastmodifieddate.toString());
    }
}