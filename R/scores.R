#' @keywords internal
.score <- function(obj, id, score, icd, parallel, mc.cores) {
  regex <- lofregex[[score]][[icd]]
  out <- list()
  out[[id]] <- names(obj)
  if (parallel) {
    cl <- parallel::makeCluster(mc.cores)
    if (score == "charlson") {
      out$ami <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$ami)
      out$chf <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$chf)
      out$pvd <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$pvd)
      out$cevd <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$cevd)
      out$dementia <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$dementia)
      out$copd <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$copd)
      out$rheumd <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$rheumd)
      out$pud <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$pud)
      out$mld <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$mld)
      out$diab <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$diab)
      out$diabwc <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$diabwc)
      out$hp <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$hp)
      out$rend <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$rend)
      out$canc <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$canc)
      out$msld <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$msld)
      out$metacanc <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$metacanc)
      out$aids <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$aids)
    } else {
      out$chf <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$chf)
      out$carit <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$carit)
      out$valv <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$valv)
      out$pcd <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$pcd)
      out$pvd <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$pvd)
      out$hypunc <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$hypunc)
      out$hypc <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$hypc)
      out$para <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$para)
      out$ond <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$ond)
      out$cpd <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$cpd)
      out$diabunc <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$diabunc)
      out$diabc <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$diabc)
      out$hypothy <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$hypothy)
      out$rf <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$rf)
      out$ld <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$ld)
      out$pud <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$pud)
      out$aids <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$aids)
      out$lymph <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$lymph)
      out$metacanc <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$metacanc)
      out$solidtum <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$solidtum)
      out$rheumd <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$rheumd)
      out$coag <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$coag)
      out$obes <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$obes)
      out$wloss <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$wloss)
      out$fed <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$fed)
      out$blane <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$blane)
      out$dane <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$dane)
      out$alcohol <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$alcohol)
      out$drug <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$drug)
      out$psycho <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$psycho)
      out$depre <- parallel::parSapply(cl = cl, X = seq_along(obj), FUN = .detect, obj = obj, pattern = regex$depre)
    }
    parallel::stopCluster(cl)
  } else {
    if (score == "charlson") {
      out$ami <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$ami)
      out$chf <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$chf)
      out$pvd <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$pvd)
      out$cevd <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$cevd)
      out$dementia <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$dementia)
      out$copd <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$copd)
      out$rheumd <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$rheumd)
      out$pud <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$pud)
      out$mld <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$mld)
      out$diab <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$diab)
      out$diabwc <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$diabwc)
      out$hp <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$hp)
      out$rend <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$rend)
      out$canc <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$canc)
      out$msld <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$msld)
      out$metacanc <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$metacanc)
      out$aids <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$aids)
    } else {
      out$chf <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$chf)
      out$carit <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$carit)
      out$valv <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$valv)
      out$pcd <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$pcd)
      out$pvd <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$pvd)
      out$hypunc <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$hypunc)
      out$hypc <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$hypc)
      out$para <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$para)
      out$ond <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$ond)
      out$cpd <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$cpd)
      out$diabunc <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$diabunc)
      out$diabc <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$diabc)
      out$hypothy <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$hypothy)
      out$rf <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$rf)
      out$ld <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$ld)
      out$pud <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$pud)
      out$aids <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$aids)
      out$lymph <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$lymph)
      out$metacanc <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$metacanc)
      out$solidtum <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$solidtum)
      out$rheumd <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$rheumd)
      out$coag <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$coag)
      out$obes <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$obes)
      out$wloss <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$wloss)
      out$fed <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$fed)
      out$blane <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$blane)
      out$dane <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$dane)
      out$alcohol <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$alcohol)
      out$drug <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$drug)
      out$psycho <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$psycho)
      out$depre <- vapply(X = seq_along(obj), FUN = .detect, FUN.VALUE = numeric(1), obj = obj, pattern = regex$depre)
    }
  }
  out <- do.call(cbind.data.frame, c(out, list(stringsAsFactors = FALSE)))
  return(out)
}
