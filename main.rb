puts <<~TEXT
       旅行プランを選択して下さい。

       1. 沖縄旅行（10000円）
       2. 北海道旅行（20000円）
       3. 九州旅行（15000円）

     TEXT

#今後、仕様変更に対応しやすいように一部の値を定数に格納する。
#旅行プラン名、料金、番号も今後、定数化を検討中。
DISCOUNT_RATE = 0.9       #割引率
DISCOUNT_PEOPLE_NUM = 5   #割引適用人数

while true
  print "プランの番号を選択 > "
  selected_plan_num = gets.to_i
  break if selected_plan_num >= 1 && selected_plan_num <= 3
  puts "1〜3の番号を入力して下さい。"
end

case selected_plan_num
when 1
  plan_place = "沖縄旅行"
  plan_price = 10000
when 2
  plan_place = "北海道旅行"
  plan_price = 20000
when 3
  plan_place = "九州旅行"
  plan_price = 15000
end

puts "#{plan_place}ですね。"

while true
  puts "何名で予約されますか？"
  print "人数を入力 > "
  people_num = gets.to_i
  break if people_num >= 1
  puts "1以上を入力して下さい。"
end

puts "#{people_num}名ですね。"

total_price = plan_price * people_num

if people_num >= DISCOUNT_PEOPLE_NUM
  puts "5名以上ですので10%割引となります"
  total_price *= DISCOUNT_RATE
end

puts "合計金額は#{total_price.floor}円になります。"