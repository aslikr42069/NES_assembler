(import (chicken process-context)
        (chicken string))

(define (read-file-to-list file currentList)
  (if (eof-object? (peek-char file))
      '()
      (cons (read-char file)
	    (read-file-to-list file currentList))
   )
  )


(define (main)
  (define argsList (argv))
  (define outputFilename "a.out.nes")
  (define argCount (length argsList))
  (if (not (= 2 argCount))
      (
       (print "Incorrect arguments provided. Usage is: ")
       (print (car argsList) " [FILENAME]")
       (exit)
      )
   )
  
  (define source (open-input-file (car (cdr argsList))))
  (define contents-list (read-file-to-list source '() ))
  (define file-length (length contents-list))
  
  (close-input-port source)
)

(main)
