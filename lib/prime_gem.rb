# frozen_string_literal: true

require_relative "prime_gem/version"

class Array
  def get_primes(arr)
    arr.select do |num|
      next if num < 2
      (2..Math.sqrt(num)).none? { |i| num % i == 0 }
    end
  end
end
