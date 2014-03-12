package ocpkata;

public class FizzBuzzFactory {

	public static FizzBuzz create() {
		Interpreter[] list = {
			new FizzBuzzInterpreter(),
			new BuzzInterpreter(),
			new FizzInterpreter(),
			new NumberInterpreter()
		};
		
		return new FizzBuzzTranslator(list);		
	}

}
