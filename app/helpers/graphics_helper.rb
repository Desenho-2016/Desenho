module GraphicsHelper

  @@sr = 0
  @@ii = 0
  @@mi = 0
  @@mm = 0
  @@ms = 0
  @@ss = 0

  def self.build_mention
    mention = Mention.all
    mention.each do |m|
       if m.value == 'SR'
         @@sr = @@sr + 1
       end
       if m.value == 'II'
         @@ii = @@ii + 1
       end
       if m.value == 'MI'
         @@mi = @@mi + 1
       end
       if m.value == 'MM'
         @@mm = @@mm + 1
       end
       if m.value == 'MS'
         @@ms = @@ms + 1
       end
       if m.value == 'SS'
         @@ss = @@ss + 1
       end
     end
  end

  def self.sr
    @@sr
  end
  def self.ii
    @@ii
  end

  def self.mi
    @@mi
  end
  def self.mm
    @@mm
  end

  def self.ms
    @@ms
  end

  def self.ss
    @@ss
  end
end
