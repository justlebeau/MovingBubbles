% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MovingBubbles.R
\name{MovingBubbles}
\alias{MovingBubbles}
\title{Animated Bubble Chart}
\usage{
MovingBubbles(df, key, frame, value, color = NULL, bubble_size = 1,
  font_size = 1, speed_factor = 1, title_size = "20px",
  height_offset = 35, width = NULL, height = NULL, elementId = NULL)
}
\arguments{
\item{df}{dataframe}

\item{key}{name of key column}

\item{frame}{name of frame column}

\item{value}{name of value column}

\item{color}{dataframe with key and color columns. Color should be in hex form.}

\item{bubble_size}{bubble size factor}

\item{font_size}{font size factor}

\item{speed_factor}{speed factor (the lower the faster)}

\item{title_size}{title text size eg. "16px"}

\item{height_offset}{height for title space at the bottom}
}
\description{
MovingBubbles can be used to plot bubble chart with transitions.
}
\examples{
dat <- data.frame(data = rep(letters[1:6],5),
                 value = round(runif(30)*100),
                 time = rep(paste0(1:5, "pm"), each = 6))

MovingBubbles(dat, key = "data", frame = "time", value = "value")

# with color specified
colordf <- data.frame(key = unique(dat$data), color = terrain.colors(6))
MovingBubbles(dat, key = "data", frame = "time", value = "value", color = colordf)

}
