# Boris Bikes

Using Ruby Object Oriented Programming to design docking stations for Boris Bikes.

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

### *Edge Cases*

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

* Docking Station is an object that has as an empty container attribute for storing bikes [x]
* Bike starts as a dumb object that always works [x]
* Docking Station can store bikes in its container [x]
* Docking Station can release a bike from its container [x]
* Docking Station has a default capacity of 20 bikes [x]
* Docking Station capacity is flexible depending on user demand []
* Bike may or may not be working [x]
* Docking Station can only release bike if it is working [x]

### *Edge Cases*

* Docking Station cannot release bike if there are none [x]
* Docking Station cannot dock bike if capacity has been reached [x]

### *Broken Bikes*

* Bike has a status to see if it is "working" or "broken" [x]
* If bike is broken, user can report bike as broken [x]
* Docking Station still allows the docking of broken bikes [x]
* Docking Station cannot release a bike if it is broken [x]

### *Bike Delivery*

* Garage is an object that has as an empty container attribute for storing vans [x]
* Garage can add a new van to match user demand [x]
* Garage also has as an empty container attribute for storing bikes [x]
* Garage can release a van from its container [x]
* Van is an object that has as an empty container attribute for storing bikes [x]
* Van can dock a broken bike [x]
* Van cannot dock a working bike [x]
* Van can release a bike in transit []
* Garage can store a van into its container []
* Garage can fix a bike and change its status to 'working' []
* Van can deliver fixed bike back to docking station []
