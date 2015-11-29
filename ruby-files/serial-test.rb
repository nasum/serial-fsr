require "serialport"

@serial_port = ARGV[0]
@serial_bps = 9600

sp = SerialPort.new(@serial_port,@serial_bps)
flg = false
count = 0;

loop do
  count += 1
  lineArray = sp.gets("\n").split(',') 
  if (lineArray[0].to_i - lineArray[1].to_i).abs > 100
    puts '差が出てる'
    if flg
      count = 0
      system %|osascript -e 'display notification "バランスが悪くなっているよ！"'|
    end
  else
    puts '差が出てない'
  end

  if count > 100
    flg = true
  else
    flg = false
  end
end