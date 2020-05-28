class Player
  def hand
    puts "数字を入力してください"
    puts "0:グー,1:チョキ,2:パー"
player_hand = gets.to_i
  if (player_hand == 0 || player_hand == 1 || player_hand == 2)
    return player_hand
  else
    puts "やり直しです"
    hand
  end
 end
end


class Enemy
  def hand
   enemy_hand = rand(3)
  end
end


class Janken
  # def nakajima
  #   puts "ジャンケンを始めます"
  # end
  def result(player_hand, enemy_hand)
    janken = ["グー","チョキ","パー"]

    if player_hand == enemy_hand
      puts "あいこです"
      # player = Player.new
      # enemy = Enemy.new
      result(Player.new.hand, Enemy.new.hand)
    elsif (enemy_hand - player_hand = 1 || enemy_hand - player_hand = -2)
      puts "あなたの勝ちです"
      return false
    else
      puts "あなたの負けです"
      return false
    end
  end
  def nakajima
    puts "ジャンケンを始めます"
  end
end
player = Player.new
enemy = Enemy.new
janken = Janken.new

janken.nakajima
janken.result(player.hand, enemy.hand)
