(ns hellocljs.core)

(defn foo
  "I don't do a whole lot."
  [x]
  (.log js/console "Hello, World!"))
