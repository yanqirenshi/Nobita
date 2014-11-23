#|

This file is a part of nobita project.
Copyright (c) 2013 satoshi iwasaki (yanqirenshi@gmail.com)

ぼくたちは生きつづけるんだ。
心がビートを刻むかぎり。
よし。行くぞ!

|#

(in-package :nobita)

(defvar *default-bpm* (* 4 1000)
  "心が一生涯で 20億回鼓動するらしいんよ。
その場合 120歳まで生きるんじゃったら 4秒で一回の計算になるんよね。
<計算式>
(/ (* 20 100000000) 120 365 60.0 60.0)
値はミリ秒で保持するようにしとる。まぁ、使わんじゃろうけど。
")

(defclass heart ()
  ((bpm :accessor bpm
        :initarg :bpm
        :initform nil)
   (beat-count :accessor beat-count
               :initarg :beat-count
               :initform 0)))

(defmethod lifep ((heart heart))
  (not (null (bpm heart))))

(defmethod deadp ((heart heart))
  (not (lifep heart)))

(defmethod birth ((heart heart))
  (setf (bpm heart) *default-bpm*)
  (setf (beat-count heart) 0)
  (tick heart))

(defmethod nirvana ((heart heart))
  (setf (bpm heart) nil))

(defmethod rest-in-music ((heart heart))
  (sleep (/ (bpm heart) 1000)))

(defmethod tick ((heart heart))
  (cl+:enter-thread ("nobita-heart-beat")
    (do nil ((deadp heart) heart)
      (incf (beat-count heart))
      (beat heart)
      (rest-in-music heart))))

(defmethod beat ((heart heart))
  heart)

