def register_book(a_book)
        # 本の著者、タイトル、価格をユーザーに入力させ、保存する
        puts '著者を入力してください'
       auto = gets.chop
        puts 'タイトルを入力してください'
       outo = gets.chop
        puts '価格を入力してください'
       ioto = gets.chop
    books << a_book
    return = books
      end
      
      def show_books(books)
        puts "見たい番号を入力してください"
        # 保存された本の一覧を出力する
      end
      
      def show_detail
        # 選択された本の詳細な情報（著者、タイトル、価格）を出力する
      end
      
      def average_price
        # 全ての本の平均価格を算出する
      end
      pots = []
      while true do
        puts "番号を入力してください"
        puts "0: 本を登録する"
        puts "1: 本の一覧を見る"
        puts "2: 終了する"
       case gets.to_i
        when case = 0 then
         register_book(book)
        when case = 1 then
         show_books(books)
        when case = 2 then
          exit
        else
          puts '無効な値です'
        end
      end


puts "レビュー数：0"
puts "[0]レビューを書く"
puts "[1]レビューを読む"
puts "[2]アプリを終了する"
input = gets.to_i

if input == 0 then
   post = {}
   puts "ジャンルを入力してください："
   post[:genre] = gets.chomp
   puts "タイトルを入力してください："
   post[:title] = gets.chomp
   puts "感想を入力してください："
   post[:review] = gets.chomp
   line = "---------------------------"
        
        
     puts "ジャンル : #{post[:genre]}\n#{line}"
     puts "タイトル : #{post[:title]}\n#{line}"
     puts "感想 :\n#{post[:review]}\n#{line}"
        
elsif input ==1 then


elsif input ==2 then

else
 puts  "入力しt値は無効です"
end




