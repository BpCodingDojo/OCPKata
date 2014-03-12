package ocpkata;

public class FizzBuzzTranslator implements FizzBuzz {
	
	private Interpreter[] fizzBuzzInterpreters;
		
	public FizzBuzzTranslator(Interpreter[] fizzBuzzInterpreters) {
		this.fizzBuzzInterpreters = fizzBuzzInterpreters;
	}


	public String say(int i) {
		for (Interpreter interpreter : fizzBuzzInterpreters) {
			if (interpreter.canHandle(i)) {
				return interpreter.translate(i); 
			}
		}		
		
		return "";
	}

	
	
}
