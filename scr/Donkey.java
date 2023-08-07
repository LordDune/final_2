public class Donkey extends PackAnimal{
    public Donkey() {
        setTitle("Осёл");
    }

    @Override
    public String toString() {
        return getPackAnimals() + " - " + getTitle() + ": кличка " + getName() + ", порода " + getKind() + ", дата рождения " + getDateOfBirth();
    }

    public String toStringNew() {
        return getName() + "," + getKind() + "," + getDateOfBirth();
    }
    
}
