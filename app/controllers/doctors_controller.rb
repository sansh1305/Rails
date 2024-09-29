class DoctorsController < ApplicationController
  def patients
    @patients = Crud.all  # Fetch all records from the Cruds model
  end

  def statistics
    @patients_data = Crud.group_by_day(:day_registered).count.map do |date, count|
      { date: date.strftime("%Y-%m-%d"), count: count } # Format date to string
    end

    # Debugging output (optional)
    puts "Patients Data: #{@patients_data.inspect}"
  end
end
