(ns rna-transcription
  (:require [clojure.string :as str]))

(defn to-rna [dna]
  (let [complements {\G \C
                     \C \G
                     \T \A
                     \A \U}]
    (->> dna
         (map complements)
         str/join)))