# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid..])

  merge(left, right)
end

def merge(left, right)
  sorted = []
  sorted << (left.first <= right.first ? left.shift : right.shift) until left.empty? || right.empty?

  sorted.concat(left).concat(right)
end
