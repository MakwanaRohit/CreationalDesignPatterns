
# BuildPattern

// Usage

    let biberBurger = BurgerShop()

BiberBurger() class has prebuild formulas, and uses a HamburgerBuilder() instance. With the same instance formula is saved everytime it's used.

    let hamburgerBuilder = HamburgerBuilder()
    print(cheeseBurger.description)

    let cheeseBurger = biberBurger.createCheeseBurger(using: hamburgerBuilder)

If BiberBuger wants to build on a new default burger, they can use new instance.

    let vegBurger = biberBurger.createVegetarianBurger(using: HamburgerBuilder())
    print(vegBurger.description)
