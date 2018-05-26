module Tree
  where

  data BinaryTree a 
    = Leaf a
    | Branch (BinaryTree a) a (BinaryTree a)
  
  makeTree a b = Branch b a b
  sampleTree = foldr makeTree (Leaf 0) [1..5]

  treeSize (Leaf x) = 1
  treeSize (Branch a b c) = 1 + treeSize a + treeSize c 

  treeMap (Leaf x) = [x]
  treeMap (Branch a x b) = treeMap a ++ [x] ++ treeMap b

  treeFold (f) zero (Leaf n) = f (n) (zero)
  treeFold (f) zero (Branch l x r) = treeFold f (f x (treeFold f zero r)) l
  newMap t = treeFold (:) [] t

  instance Show BinaryTree where
    show = show $ treeMap