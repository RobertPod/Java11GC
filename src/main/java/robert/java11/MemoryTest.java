package robert.java11;

import java.math.BigInteger;

public class MemoryTest {

  public static void main(String... params) {
    // delay for start FlightRecorder
    try {
      Thread.sleep(2000);
    } catch (InterruptedException e) {
      e.printStackTrace();
    }

    BigInteger i = BigInteger.valueOf(2L);
    while (true) {
      BigInteger n = i;
      i = i.add(BigInteger.valueOf(1L));
      if (i.longValue() > 30000000L) {
        break;
      }
    }
  }
}
