public class Horse extends PackAnimal{
    public Horse() {
        setTitle("Лошадь");
    }

    @Override
    public String toString() {
        return getPackAnimals() + " - " + getTitle() + ": кличка " + getName() + ", порода " + getKind() + ", дата рождения " + getDateOfBirth();
    }

    public String toStringNew() {
        return getName() + "," + getKind() + "," + getDateOfBirth();
    }
    
}
