package ocpkata;

import static org.junit.Assert.*;

import org.junit.Ignore;
import org.junit.Test;


public class FizzBuzzTest {

	@Test
	public void given1_return1() throws Exception {
		FizzBuzz fizzBuzz = FizzBuzzFactory.create();
		assertEquals("1", fizzBuzz.say(1));		
	}

	@Test
	public void given2_return2() throws Exception {
		FizzBuzz fizzBuzz = FizzBuzzFactory.create();
		assertEquals("2", fizzBuzz.say(2));		
	}
	
	@Test
	public void given3_returnFizz() throws Exception {
		FizzBuzz fizzBuzz = FizzBuzzFactory.create();
		assertEquals("Fizz", fizzBuzz.say(3));		
	}
	
	@Test
	public void given4_return4() throws Exception {
		FizzBuzz fizzBuzz = FizzBuzzFactory.create();
		assertEquals("4", fizzBuzz.say(4));		
	}
	
	@Test
	public void given5_returnBuzz() throws Exception {
		FizzBuzz fizzBuzz = FizzBuzzFactory.create();
		assertEquals("Buzz", fizzBuzz.say(5));		
	}
	
	@Test
	public void given15_returnFizzBuzz() throws Exception {
		FizzBuzz fizzBuzz = FizzBuzzFactory.create();
		assertEquals("FizzBuzz", fizzBuzz.say(15));		
	}
	

}
