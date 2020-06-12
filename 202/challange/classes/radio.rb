class Radio

  VOLUME_RANGE = 0..10
  FREQ_RANGE = {am: 540.0..1600.0, fm: 88.0..108.0}
  DEFAULT_FREQ = {am: 1000.0, fm: 95.4}

  def initialize(options = {})
    self.band = options[:band] || :fm
    self.freq = options[:freq] || DEFAULT_FREQ[@band]
    self.volume = options[:volume] || 5
  end

  def self.am
    Radio.new(band: 'am')
  end

  def self.fm
    Radio.new(band: 'fm')
  end

  def band
    @band.upcase
  end

  def status
    "station: #{@freq} #{band}, volume: #{@volume}"
  end

  def freq=(frequency)
    @freq = frequency.to_f if FREQ_RANGE[@band].include? frequency
  end

  def increase_freq(value = 5)
    @freq = [@freq + value, FREQ_RANGE[@band].last].min
  end

  def decrease_freq(value = 5)
    @volume = [@freq - value, FREQ_RANGE[@band].first].max
  end

  def volume=(volume = 5)
    @volume = volume if VOLUME_RANGE.include?(volume)
  end

  def increase_volume(value = 1)
    @volume = [@volume + value, VOLUME_RANGE.last].min
  end

  def decrease_volume(value = 1)
    @volume = [@volume - value, VOLUME_RANGE.first].max
  end

  private

  def band=(value)
    case value.downcase
    when :am, 'am'
      @band = :am
    when :fm, 'fm'
      @band = :fm
    else
      raise "Unsupported band: #{value}"
    end
  end

end
