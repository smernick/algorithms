require 'pry'

class Histogram
  def initialize(bucket_range, title)
    @bucket_range = bucket_range
    @title = title
    @value_hash = {}
  end

  def add(value)

    if value != 0
      upper_bucket = @bucket_range

      until upper_bucket > value
        upper_bucket += @bucket_range
      end

      hash_key = "[#{(upper_bucket - @bucket_range) + 1}-#{upper_bucket}]"
      if @value_hash[hash_key]
        @value_hash[hash_key] += 1
      else
        @value_hash[hash_key] = 1
      end

      return self
    else
      return self
    end

  end




  def print
    @value_hash.each do |range|
      puts range.first, "*" * range.last


    end

  end

end

h = Histogram.new(5, "number of chipotle burritos per day")
h.add(0).add(1).add(2).add(3).add(5).add(6).add(7).add(8)
h.add(12).add(13).add(25).add(27).add(28).add(0).add(29)


h.print


#  find 10 practice problems, set a timer for an hour (spend an hour on each one, work through it, get used to being timed)
#  Get in front of two other people, replicate technical scenario.


# bucket range is not total number of buckets for graph. denotes bucket range for a given bucket

=begin
 expected output
 Number Of Chipotle Burritos Per Day
 ===================================

 [1-5]   ****
 [6-10]  ***
 [11-15] **
 [21-25] *
 [26-30] ***

 Requirements
 Bucket size for the histogram is determined upon initialization
 Zero is not an allowed value to be added
 Adding new values should be chainable
 The printing of the title should be proper titlecase
 The max bucket should be the last value on graph, with sequentially buckets until the bucket i.e [1-5].

  Extra Credit
  The formatting of the graph should be aligned so that there is 1 space from the FURTHEREST bucket name i.e. [26-30] and the row value
  Placeholder buckets should exist up to the max allowed bucket


 Formatting hint
 to get an aligned graph use the printf method
 printf(string) -> %s-CHAR_LENGTHs %s\n, value1, value2
 #=> printf( "%-20s %s\n", "name", "michael verdi" )
=end
