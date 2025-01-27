% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/funs.R
\encoding{UTF-8}
\name{make_prj_tree}
\alias{make_prj_tree}
\title{make_prj_tree}
\usage{
make_prj_tree(json_str, file, path = ".", verbose = FALSE)
}
\arguments{
\item{json_str}{string with the name of the builtin template to use}

\item{file}{string for the name of the .json file describing a customized 
files structure to use as template}

\item{path}{string containing which directory to use as root of the files 
structure to create}

\item{verbose}{logical, show or not info while creating the files structure}
}
\value{
invisible, an R list that corresponds to the JSON object in 
        \code{json_str}, as returned by \code{\link[rjson:fromJSON]{rjson::fromJSON}}.
}
\description{
Create a files structure from a builtin template or from a customized
template provided as .json file
}
\details{
\itemize{
\item Only one of \code{json_str} or \code{file} must be supplied. 
\item An error is raised if any node in the .json structure is found malformed
}

JSON format: 
\itemize{
\item All the nodes must have a \code{type} and a \code{name}. Allowed 
types are \code{dir}, for directories, and \code{file} for files. 
\item All the directory nodes can contain any number of sub-nodes for subdirectories
\item The file nodes can include a \code{content} field for the text the file should
contain.
}
}
\examples{
\dontrun{
root_path = "..."
make_prj_tree(json_str = "basic_template", path = root_path)

my_template <- ".../some_template.json"
make_prj_tree(file = my_template, path = root_path)
}

}
\seealso{
\code{\link[rprojtree:print_template]{rprojtree::print_template}}, 
\code{\link[rprojtree:available_templates]{rprojtree::available_templates}},
\code{\link[rjson:fromJSON]{rjson::fromJSON}}
}
