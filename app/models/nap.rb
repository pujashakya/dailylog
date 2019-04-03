class Nap < ApplicationRecord
  require 'csv'

  # def self.as_csv(naplist1 = "")
  #   CSV.generate do |csv|
  #     column = %w(nap_date duration notes)
  #         csv << column.map(&:humanize)
  #     naplist1.each do |nap|
  #       csv << [nap.notes]
  #     end
  #   end
  # end


  # def self.as_csv(naplist1 = "")
  def self.to_csv
    attributes = %w{nap_date duration notes}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |nap|
        csv << attributes.map{ |attr| nap.send(attr) }
      end
    end
  end
end
