; 1. Определите макрос, который возвращает свой вызов

(defmacro macro (x)
   `(quote (macro ,x))
)

(print (macro (1 2 3)))
