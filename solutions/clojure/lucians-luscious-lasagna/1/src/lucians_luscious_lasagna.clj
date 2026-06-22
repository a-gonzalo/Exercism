(ns lucians-luscious-lasagna)

(def expected-time 40)

(defn remaining-time
  [actual-time]
    (- expected-time actual-time)
  )

(defn prep-time
  [num-layers]
    (* num-layers 2)
  )

(defn total-time
  ;; Takes the number of layers of lasagna and the actual time in minutes it has been in the oven.
  ;; Returns how many minutes in total you've worked on cooking the lasagna
  [num-layers actual-time]
    (+ (prep-time num-layers)(- 40 (remaining-time actual-time)))
  )
