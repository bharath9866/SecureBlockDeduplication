package pack;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.URL;
import java.net.URLConnection;

public class Ftpcon
{
	private URLConnection m_client;
	
    private String host="ftp.drivehq.com";
   
    private String user="bharath.bk";
   
    private String password="91a397";
   
    private String remoteFile;
    
    public synchronized boolean connect()
	{
        try
        {
			URL url = new URL("ftp://" + user + ":" + password + "@" + host + "/" + remoteFile + ";type=i");
            
			m_client = url.openConnection();
        
            return true;

        }//try

		catch (Exception ex)
		{
            ex.printStackTrace();
            
			StringWriter sw0 = new StringWriter();
            
			PrintWriter p0 = new PrintWriter(sw0, true);
            
			ex.printStackTrace(p0);
           
			return false;

        }//catch

    }//connect
    
    public synchronized boolean upload(File file)
    {
       remoteFile=file.getName();
       
       System.out.println("my uploaded file path is \t"+remoteFile);
       
      if(connect())
      {
    	  try
          {
       	   FileInputStream is=new FileInputStream(file);
       	   
   		   OutputStream os = m_client.getOutputStream();
              
   		   BufferedOutputStream bos = new BufferedOutputStream(os);
              
   		   int readCount=0;

   		   byte[] buffer= new byte[1024];

   		   while ((readCount =is.read(buffer)) > 0)
   		   {
   				bos.write(buffer, 0, readCount);

   			}//while
   			
   		    is.close();
   		    
   			bos.close();

   			System.out.println("file uploadded successfully");
   			
          }//try

   		  catch (Exception ex)
   		  {
              ex.printStackTrace();

              return false;

         }//catch
      }
      else
      {
    	  return false;
      }
       
	   return true;
	   
   }//upLoad

}
