Vim�UnDo� ���xu��`���xO��+�����o�s�p>��                                    U��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             U��    �                  (class SiredamReport < Compendium::Report   A  #option :starting_on, :date, default: -> { Date.today - 1.year}   7  #option :ending_on, :date, default: -> { Date.today }       C  # The query definition block gets the report's current parameters   [  # totals: true means that the last row returned should be interpretted as a row of totals     query :sire do |params|   F    DogInfo.joins("join dog_info as s on s.dog_id = dog_info.Sire_Id")   C      .select("s.Registered_Name, Count(dog_info.Sire_Id) as Kids")   ,      .where("dog_info.Sire_Id is not null")          .group("dog_info.Sire_Id")         .order("2 desc")     end         query :dam do |params|   E    DogInfo.joins("join dog_info as s on s.dog_id = dog_info.Dam_Id")   C      .select("s.Registered_Name, Count(dog_info.sire_id) as Kids")   ,      .where("dog_info.sire_id is not null")         .group("dog_info.Dam_Id")         .order("2 desc")     end       end5�_�                        
    ����                                                                                                                                                                                                                                                                                                                                                             U��    �                 �                 binding.pry5��