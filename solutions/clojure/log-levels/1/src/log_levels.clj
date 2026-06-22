(ns log-levels
  (:require [clojure.string :as str]))

(defn message
  [s]
  (str/trim (last (str/split s #":")))
)

(defn log-level
  [s]
  (-> (re-find #"\w+" s) ;
      str/lower-case))

(defn reformat [s]
  (->> (str/split s #":")
       (map str/trim)
       ((fn [[level msg]]
          (format "%s (%s)" msg (str/lower-case (str/replace level #"[\[\]]" "")))))
       ))