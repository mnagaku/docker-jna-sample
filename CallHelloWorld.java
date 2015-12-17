import java.io.*;
import helloworld.HelloWorld;

class CallHelloWorld {
    public static void main(String[] args) {
        int x;
        HelloWorld hw = new HelloWorld();
        while (true) {
            System.out.print("input integer: ");
            InputStreamReader isr = new InputStreamReader(System.in);
            BufferedReader br = new BufferedReader(isr);
            try{
                String buf = br.readLine();
                x = Integer.parseInt(buf);
            }catch(Exception e){
                x = 0;
            }
            for(int i = 0; i < x; i++) {
                System.out.println("count = " + (i+1) + "/" + x);
                hw.call();
            }
        }
    }
}
