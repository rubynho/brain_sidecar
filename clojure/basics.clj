;; Syntax basics

;; A simple expression
(+ 1 2) ; => 3

;; Function definition
[defn greet [name]
 (str "Hello, " name "!")]

(greet "Clojure") ; => "Hello, Clojure!"

;; Let-binding
(let [x 10
      y 20]
  (+ x y)) ; => 30

;; If expression
(if (> 5 2)
  "Yes"
  "No") ; => "Yes"

;; Data Structures

;; Vector (like array)
[1 2 3]

;; List (linked list)
'(1 2 3)

;; Map (key-value)
{:name "Clojure" :type :lang}

;; Set (unique values)
#{1 2 3}

;; Functional programming

(map inc [1 2 3]) ; => (2 3 4)

(filter even? [1 2 3 4]) ; => (2 4)

(reduce + [1 2 3 4]) ; => 10
