module Algorithm
  Root = Pathname(Dir.pwd).freeze
end

Dir.glob(Algorithm::Root / 'lib/**/*.rb').each { |f| require f }
