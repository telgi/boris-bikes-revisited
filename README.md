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

## Features

### *Basics*

* Docking Station is an object that has as an empty container attribute [x]
* Bike starts as a dumb object that always works [x]
* Docking Station can store bikes in its container [x]
* Docking Station can release a bike from its container [x]
* Docking Station has a capacity of 20 bikes [x]
* Bike may or may not be working []
* Docking Station can only release a bike if it is working []

### *Edge Cases*

* Docking Station cannot release bike if there are none [x]
* Docking Station cannot dock bike if capacity has been reached []
