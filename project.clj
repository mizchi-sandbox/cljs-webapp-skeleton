(defproject hellocljs "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :license {:name "MIT" }
  :plugins [[lein-cljsbuild "1.0.3"]]
  :dependencies [[org.clojure/clojure "1.6.0"]
                 [org.clojure/clojurescript "0.0-2311"]
                 ]
  :cljsbuild {
    :builds [{
        :source-paths ["src"]
        :compiler {
          :output-to "public/main.js"
          :optimizations :whitespace
          :pretty-print true}}]})
