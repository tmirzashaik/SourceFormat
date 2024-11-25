public class TemperatureConverter {
    // Takes a Fahrenheit temperature and returns the Celsius equivalent.-test
    public static Decimal FahrenheitToCelsius(Decimal fh) {
        Decimal cs = (fh - 32) * 5/9;
        return cs.setScale(2);
    }
    
    //Testing Deepak case(testing with re commit) and testing auto resolve with new user story
  
}
//test for metadatada disappearing - commit 4