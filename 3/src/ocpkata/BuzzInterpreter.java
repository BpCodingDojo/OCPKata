package ocpkata;

public class BuzzInterpreter implements Interpreter {

	public Boolean canHandle(int i) {
		return (i % 5) == 0;
	}

	public String translate(int i) {
		return "Buzz";
	}

}
