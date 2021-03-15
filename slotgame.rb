coin = 100
point = 0

while true
  if coin == 0
    while true
      puts "-----------------------"
      puts "コインが底をつきました。"
      puts "最終保有ポイント:#{point}"
      puts "もう一度遊びますか？"
      puts "1(遊ぶ) 2(帰る)"
      puts "-----------------------"
      play = gets.chomp
      if play == "1"
        coin = 100
        point = 0
        break
      elsif play == "2"
        puts "ご来店ありがとうございました。\nまたのご利用お待ちしております。"
      exit
      else
        puts "[1] [2] のいずれかを選択して下さい。"
      end
    end
  end
  puts "-----------------------"
  puts "残りのコイン数は#{coin}枚です"
  puts "ポイント:#{point}"
  puts "何コイン入れますか？"
  puts "1(10コイン) 2(30コイン) 3(50コイン) 4(やめとく)"
  bet = [10,30,50]
  puts "-----------------------"
  while true
    play = gets.chomp
    if play == "1"
      coin -= bet[0]
      play = bet[0]
      break
    elsif play == "2"
      coin -= bet[1]
      play = bet[1]
      break
    elsif play == "3"
      coin -= bet[2]
      play = bet[2]
      break
    elsif play == "4"
      puts "ご来店ありがとうございました。\nまたのご利用お待ちしております。"
      puts "最終保有コイン数:#{coin} 最終保有ポイント:#{point}"
      exit
    else
      puts "[1] [2] [3] [4]のいずれかを入力してください。"
    end
  end
    
  puts "エンターを3回押しましょう ！"
  
  while 
    lever = gets.chomp
    
    while true
      num1 = rand(10)
      num2 = rand(10)
      num3 = rand(10)
      if (num1 != num2 && num2 != num3 && num1 != num3)
        break
      end
    end
    
    if lever == ""
      break
    else
      puts "値を入力せずにエンターを押してください。"
    end
  end
  puts "-----------------------"
  puts "|#{num1}|||"
  puts "|#{num2}|||"
  puts "|#{num3}|||"
  
  while 
      lever = gets.chomp
    while
      num4 = rand(10)
      num5 = rand(10)
      num6 = rand(10)
      if (num4 != num5 && num5 != num6 && num4 != num6)
        break
      end
    end
  
    if lever == ""
      break
    else
      puts "値を入力せずにエンターを押してください。"
    end
  end
  puts "-----------------------"
  puts "|#{num1}|#{num4}||"
  puts "|#{num2}|#{num5}||"
  puts "|#{num3}|#{num6}||"
  
  while 
      lever = gets.chomp
    while
      num7 = rand(10)
      num8 = rand(10)
      num9 = rand(10)
      if (num7 != num8 && num8 != num9 && num7 != num9)
        break
      end
    end
  
    if lever == ""
      break
    else
      puts "値を入力せずにエンターを押してください。"
    end
  end
  puts "-----------------------"
  puts "|#{num1}|#{num4}|#{num7}|"
  puts "|#{num2}|#{num5}|#{num8}|"
  puts "|#{num3}|#{num6}|#{num9}|"
  puts "-----------------------"
  
  if (num1 == num4 && num4 == num7)
    puts "おめでとうございます！\n上段に#{num1}が揃いました！"
    puts "500ポイント獲得！"
    point += 500
    
    puts "コイン獲得！"
    coin += (play*10)
  elsif(num2 == num5 && num5 == num8)
    puts "おめでとうございます！\n中段に#{num2}が揃いました！"
    puts "500ポイント獲得！"
    point += 500
    
    puts "コイン獲得！"
    coin += (play*10)
    
  elsif(num3 == num6 && num6 == num9)
    puts "おめでとうございます！\n下段に#{num3}が揃いました！"
    puts "500ポイント獲得！"
    point += 500
    
    puts "コイン獲得！"
    coin += (play*10)
    
  elsif(num1 == num5 && num5 == num9)
    puts "おめでとうございます！\n下段に#{num3}が揃いました！"
    puts "500ポイント獲得！"
    point += 500
    
    puts "コイン獲得！"
    coin += (play*10)
    
  elsif(num3 == num5 && num5 == num7)
    puts "おめでとうございます！\n下段に#{num3}が揃いました！"
    puts "500ポイント獲得！"
    point += 500
    
    puts "コイン獲得！"
    coin += (play*10)
  end
end