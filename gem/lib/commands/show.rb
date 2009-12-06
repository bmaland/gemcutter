class Gem::Commands::ShowCommand < Gem::AbstractCommand

  attr_reader :rubygem

  def description
    'Display detailed information about a gem'
  end

  def arguments
    "GEM       gem to show"
  end

  def usage
    "#{program_name} GEM"
  end

  def initialize
    super 'show', description
    add_proxy_option
  end

  def execute
    setup
    show_gem
  end

  def show_gem
    find(get_one_gem_name)
    rubygem.keys.sort.each { |k| puts "#{k.upcase}: #{rubygem[k]}" }
  end

end
