% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calibrate.R
\name{calibrate}
\alias{calibrate}
\title{calibrate}
\usage{
calibrate(
  sim,
  field,
  Nmcmc = 10000,
  nBurn = 500,
  thining = 100,
  theta_pr = "weak",
  omega_pr = "logbeta",
  alpha_pr = "logistic",
  sigma2_pr = "inverse gamma",
  theta0,
  omega0,
  alpha0,
  sigma20
)
}
\arguments{
\item{sim}{(m * (1+p+q) matrix) simulation data}

\item{field}{(n * (1+p+) matrix) field data}

\item{Nmcmc}{number of MCMC runs}

\item{nBurn}{number of MCMC burn ins}

\item{thining}{thining rate to de-correlate MCMC results}

\item{theta_pr}{prior function for calibration parameters #TODO}

\item{omega_pr}{prior function for scale parameters #TODO}

\item{alpha_pr}{prior function for smoothness parameters #TODO}

\item{sigma2_pr}{prior function for variance parameters #TODO}

\item{theta0}{initial value of calibration parameters (to be given MCMC)}

\item{omega0}{initial value of scale parameters (to be given MCMC)}

\item{alpha0}{initial value of smoothness parameters (to be given MCMC)}

\item{sigma20}{initial value of smoothness parameters (to be given MCMC)}
}
\value{
a list containing posterior:
   - (((Nmcmc - nBurn) / thinning) * k) parameters distribution:
       - 1st q columns: distribution of calibration parameters
       - next (p + q) columns: distribution of sim scale parameters
       - next (p + q) columns: distribution of sim smoothness parameters
       - next p columns: distribution of bias scale parameters
       - next p columns: distribution of bias smoothness parameters
       - next column (index: k - 3): distribution of sim variance parameter
       - next column (index: k - 1): distribution of bias variance parameter
       - next column (index: k - 2): distribution of error variance parameter
       - next column (index: k): distribution of mean response parameter
   - a vector (length: k) of parameter estimated variances
   - a vector (length: k) of parameter point estimates
}
\description{
calibrate
}
