namespace EnergyPriceService;

public class EnergyPriceService
{
    public static double GetPrice()
    {
        return new Random().Next(100, 105);
    }
}