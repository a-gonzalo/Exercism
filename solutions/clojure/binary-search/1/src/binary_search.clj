(ns binary-search)

(defn search-for [coll num]
  (loop [low 0
         high (dec (count num))]
    (if (> low high)
      -1
      (let [mid (quot (+ low high) 2)
            mid-val (nth num mid)]
        (cond
          (= mid-val coll) mid 
          (< mid-val coll) (recur (inc mid) high)
          :else              (recur low (dec 
                                         mid)))))))
