class Link < Post

  def initialize
    super

    @url = ''
  end

  def read_from_console
    puts "Введи адресс ссылки:"
    @url = STDIN.gets.chomp

    puts "введи описание ссылки:"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    return [@url, @text, time_string]
  end
end