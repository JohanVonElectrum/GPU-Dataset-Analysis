datasample <- function(data, size = 30, top = 10, bottom = 10) {
    return(
        rbind(
            data[1:top,],
            data[sample(nrow(data) - (top + bottom), size - (top + bottom)) + top,],
            data[(nrow(data) - bottom + 1):nrow(data),]
            )
        )
}

datasummary <- function(data) {
    summ <- summary(data)
    summ["Var."] <- var(na.omit(data))
    summ["SD."] <- sd(na.omit(data))
    summ["Range"] <- max(na.omit(data))-min(na.omit(data))
    summ["IQR"] <- IQR(na.omit(data))
    summ["Skewness"] <- psych::kurtosi(na.omit(data))
    summ["Standard_Skewness"] <- summ["Skewness"] / summ["SD."]
    summ["Kurtosis"] <- kurtosis(na.omit(data))
    summ["Standard_Kurtosis"] <- summ["Kurtosis"] / summ["SD."]
    return(summ)
}
datafit <- function(data) {
    exp <- fitdistrplus::fitdist(as.numeric(na.omit(data)),"exp")
    lnorm <- fitdistrplus::fitdist(as.numeric(na.omit(data)),"lnorm")
    norm <- fitdistrplus::fitdist(as.numeric(na.omit(data)),"norm")
    unif <- fitdistrplus::fitdist(as.numeric(na.omit(data)),"unif")
    nbinom <- fitdistrplus::fitdist(as.numeric(na.omit(data)),"nbinom")
    pois <- fitdistrplus::fitdist(as.numeric(na.omit(data)),"pois")
    return(gofstat(list(lnorm,norm,unif,nbinom,pois)))
}

lapply(ROPs, function(rops) {
    if (grepl(rops,"(x2)",fixed = TRUE)) {
        return(gsub(" (x2)", "", rops))
    } else {
        return(rops)
    }
})