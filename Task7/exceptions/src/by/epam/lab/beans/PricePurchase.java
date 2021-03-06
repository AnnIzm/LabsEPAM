package by.epam.lab.beans;

public final class PricePurchase extends Purchase {
    private final Byn discount;

    public PricePurchase(String name, Byn price, int number, Byn discount) {
        super(name, price, number);
        if (discount.compareTo(price) > -1) {
            throw new IllegalArgumentException();
        }
        this.discount = discount;
    }

    @Override
    public Purchase getCopy() {
        return new PricePurchase(getName(), getPrice(), getNumber(), discount);
    }

    @Override
    public Byn getCost() {
        return super.getCost().sub(discount.mul(getNumber()));
    }

    @Override
    protected String fieldsToString() {
        return super.fieldsToString() + ";" + discount;
    }
}
