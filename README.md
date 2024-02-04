# NasaFuelCalculation

## Clone the app
```bash
git@github.com:alerkasun/NasaFuelCalculation.git
cd NasaFuelCalculation
```

## Install RVM

The app is using Ruby 3.2.x

```bash
rvm install ruby-3.2.0
rvm use ruby-3.2.0
```

Install bundler and gems

```bash
gem install bundler
bundle install
```

## How to use

```bash
./bin/calculate_fuel 14606 "[[:launch, 9.807], [:land, 3.711], [:launch, 3.711], [:land, 9.807]]"
./bin/calculate_fuel 28801 "[[:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 9.807]]"
./bin/calculate_fuel 75432 "[[:launch, 9.807], [:land, 1.62], [:launch, 1.62], [:land, 3.711], [:launch, 3.711], [:land, 9.807]]"
```
