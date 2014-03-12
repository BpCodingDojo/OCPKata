package ocpkata;

public class FizzBuzzInterpreter implements Interpreter {

	@Override
	public Boolean canHandle(int i) {
		return (new FizzInterpreter()).canHandle(i) && (new BuzzInterpreter()).canHandle(i); 		
	}

	@Override
	public String translate(int i) {
		return (new FizzInterpreter()).translate(i) + (new BuzzInterpreter()).translate(i);
	}

}
