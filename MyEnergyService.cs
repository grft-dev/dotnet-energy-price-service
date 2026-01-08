namespace MyEnergyService;

public class EnergyPriceCalculator
{
    public static double GetPrice()
    {
        return new Random().Next(100, 105);
    }
}