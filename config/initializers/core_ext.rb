Dir[Rails.root.join(*%w{lib core_ext ** *.rb})].each {|f| require f }