(ns main)

(enable-console-print!)

(.addEventListener js/window "DOMContentLoaded" (fn []
  (println "initialized")
  ))
