# Boris Bikes

Using Ruby Object Oriented Programming to design the supply and demand of Boris Bikes / Santander Cycles.

## Aim of Learning

To revisit the 1st week of Makers and complete the weekly challenge in 1 weekend using TDD.

## Installation

`git clone git@github.com:telgi/boris-bikes-revisited.git`

## Usage

Feature Driven in irb:

`irb`

## Running Tests

Unit Testing with RSpec:

`rspec`

## User Stories

### *Basics*

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.
```

### *Capacity Edge Cases*

```
As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.

As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.
```

### *Broken Bikes*

```
As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).
```

### *Bike Delivery*

```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to take broken bikes from docking stations and deliver them to garages to be fixed.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like vans to collect working bikes from garages and distribute them to docking stations.
```

## Features

### *Basics*

* Docking Station stores bikes with a default capacity of 20 [x]
* Docking Station capacity is flexible depending on user demand [x]
* Docking Station can release a bike to user [x]
* Bike may or may not be working [x]
* Docking Station can only release bike to user if it is working [x]

### *Capacity Edge Cases*

* Docking Station cannot release bike if there are none [x]
* Docking Station cannot dock bike if capacity has been reached [x]

### *Broken Bikes*

* Bike has status to see if it is "broken" or not [x]
* If bike is broken, user can report bike as broken [x]
* Docking Station allows the docking of broken bikes [x]
* Docking Station cannot release a bike to user if it is broken [x]

### *Bike Delivery*

* Garage stores vans and bikes with a default capacity of 20 [x]
* Van stores bikes with a default capacity of 20 [x]
* Van can take a broken bike from a docking station [x]
* Van cannot take a working bike from a docking station [x]
* Garage can dock a van [x]
* Garage can unload a broken bike from a van [x]
* Garage can fix bikes [x]
* Garage can load a fixed bike into a van [x]
* Garage can release a van [x]
* Van can re-stock docking station with a working bike [x]

## Screenshot

![Alt text](/assets/images/irb_example.png?raw=true "Example of Code via irb")
