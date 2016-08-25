#lang racket
(require 2htdp/universe 2htdp/image)

(define WIDTH 200)
(define HEIGHT 200)


(define IMAGE-of-UFO
  (bitmap "ufo.png"))


(define (add-3-to-state current-state)
  (+ current-state 3))


(define (stop-animation current-state)
  (>= current-state 190))


(define (draw-a-ufo-onto-an-empty-scene current-state)
  (place-image IMAGE-of-UFO
               (/ WIDTH 2)
               current-state
               (empty-scene WIDTH HEIGHT)))


(big-bang 0
          (on-tick add-3-to-state)
          (to-draw draw-a-ufo-onto-an-empty-scene)
          (stop-when stop-animation))
