class Journey

    attr_reader :entry_station, :exit_station

    PENALTY_FARE = 6

    def initialize(entry_station = nil)
    @entry_station = entry_station
    @exit_station = nil
    @complete = false
    end

    def complete?
      !entry_station.nil? && !exit_station.nil?  
    end

    def fare
        return PENALTY_FARE if !complete?
        return 1
    end

    def finish(station)
        @exit_station = station
        return self
    end
end
