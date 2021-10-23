   require "csv"
   puts "1(新規でメモを作成) 2(既存のメモ編集する)"
    
    input= gets.to_i
    
    if input == 1
      puts "拡張子を除いたファイルを入力してください"
  
      require "csv"
      file_name = gets.chomp
       CSV.open("#{file_name}.csv", "w")
       
      puts "「#{file_name}.csv」という名前のファイルを作成しました。"
      puts "メモしたい内容を記入してください"
      
       CSV.open("#{file_name}.csv", "w")do|file_name|
       file_name << [gets.to_s]
       
      end
    
    elsif input == 2
       puts "拡張子を除いたファイルを入力してください"
      require "csv"
       file_name = gets.chomp.to_s
       data_list = CSV.read("#{file_name}.csv")
      puts data_list
      
    end
  