% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidy-data.R
\name{tidy_ems_data}
\alias{tidy_ems_data}
\title{Tidy EMS Data}
\usage{
tidy_ems_data(x, cols = character(0), mdl_action = c("zero", "mdl",
  "half", "na", "none"))
}
\arguments{
\item{x}{The data to tidy.}

\item{cols}{additional columns from the EMS data to retain specified as a
character vector of column names that exist in the data.
The dafault columns retained are:
\itemize{
\item "EMS_ID"
\item "MONITORING_LOCATION" (Renamed to "Station")
\item "COLLECTION_START" (Renamed to "DateTime")
\item "PARAMETER" (Renamed to "Variable")
\item "PARAMETER_CODE" (Renamed to "Code")
\item "RESULT" (Renamed to "Value")
\item "UNIT" (Renamed to "Units")
\item "METHOD_DETECTION_LIMIT" (Renamed to "DetectionLimit")
\item "RESULT_LETTER" (Renamed to "ResultLetter")
\item "SAMPLE_STATE"
\item "SAMPLE_CLASS"
\item "SAMPLE_DESCRIPTOR"
}}

\item{mdl_action}{What to do with values below the detection limit. Options
are \code{"zero"} (set the value to \code{0}; the default), #' \code{"half"} (set the value
to half the MDL), \code{"mdl"} (set the value to equal to the MDL), or \code{"na"} (set
the value to \code{NA}). Can also be set to \code{"none"} to leave as is.}
}
\value{
A tibble of the tidied rems data.
}
\description{
Tidies water quality data downloaded from EMS database using the bcgov/rems package.
It retains and renames required columns and sets the timezone to PST.
}
\details{
It sets values that are flagged as being less than the detection limit to zero.
It does not alter values that are flagged as being greater than the detection limit -
that is left up to the user.
}
