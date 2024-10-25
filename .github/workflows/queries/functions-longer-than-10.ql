/**
 * @description Find all functions that have more than 10 lines
 * @kind problem
 * @id javascript/functions-longer-than-10
 * @problem.severity recommendation
 */
import javascript

/**
 * Holds if the given function has more than 10 lines.
 */
predicate isLongFunction(Function f) {
  f.getNumLines() > 10
}

from Function f
where isLongFunction(f)
select f, "Function has more than 10 lines"