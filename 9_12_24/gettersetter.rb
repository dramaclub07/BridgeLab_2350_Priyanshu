class Car
    def initialize(brand, speed)
        @brand = brand  # Instance variable for brand
        @speed = speed  # Instance variable for speed
    end

    def get_brand
        @brand  # Return the brand
    end

    def set_brand(brand)
        @brand = brand  # Set the brand
    end 

    def get_speed
        @speed  # Return the speed
    end

    def set_speed(speed)
        if speed < 0
            raise ArgumentError, "Speed cannot be negative"  # Raise an error if speed is negative
        end
        @speed = speed  # Set the speed
    end
end

# Main program to get user input
puts "Enter the brand of the car:"
brand = gets.chomp  # Get user input for brand

puts "Enter the speed of the car IN KM/H (must be a non-negative number):"
speed_input = gets.chomp  # Get user input for speed

# Convert the speed input to an integer
begin
    speed = Integer(speed_input)  # Convert to integer
    car = Car.new(brand, speed)    # Create a new Car instance
    puts "Car created successfully!"
    puts "Brand: #{car.get_brand}, Speed: #{car.get_speed}"
rescue ArgumentError => e
    puts e.message  # Handle negative speed error
rescue ArgumentError
    puts "Invalid input for speed. Please enter a valid number."
end