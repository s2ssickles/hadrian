% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pfa.config.R
\name{pfa.config}
\alias{pfa.config}
\title{pfa.config}
\usage{
pfa.config(input, output, action, name = NULL, method = NULL,
  begin = NULL, end = NULL, fcns = NULL, zero = NULL, merge = NULL,
  cells = NULL, pools = NULL, randseed = NULL, doc = NULL,
  version = NULL, metadata = NULL, options = NULL, env = parent.frame())
}
\arguments{
\item{input}{input schema, which is an Avro schema as list-of-lists (created by avro.* functions)}

\item{output}{output schema, which is an Avro schema as list-of-lists (created by avro.* functions)}

\item{action}{R commands wrapped as an expression (see R's built-in expression function)}

\item{name}{optional name for the scoring engine (string)}

\item{method}{"map", "emit", "fold", or NULL (for "map")}

\item{begin}{R commands wrapped as an expression}

\item{end}{R commands wrapped as an expression}

\item{fcns}{named list of R commands, wrapped as expressions}

\item{zero}{list-of-lists representing the initial value for a "fold"'s tally}

\item{merge}{R commands wrapped as an expression}

\item{cells}{named list of cell specifications (see the pfa.cell function)}

\item{pools}{named list of pool specifications (see the pfa.cell function)}

\item{randseed}{optional random number seed (integer) for ensuring that the scoring engine is deterministic}

\item{doc}{optional model documentation string}

\item{version}{optional model version number (integer)}

\item{metadata}{optional named list of strings to store model metadata}

\item{options}{optional list-of-lists to specify PFA options}

\item{env}{environment for resolving unrecognized symbols as substitutions}
}
\value{
a list-of-lists representing a complete PFA document
}
\description{
Create a complete PFA document as a list-of-lists. Composing with the json function creates a PFA file on disk.
}
\examples{
pfa.config(avro.double, avro.double, expression(input + 10))
}

