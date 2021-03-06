% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/barplotLinkageGroupCalls.R
\docType{methods}
\name{barplotLinkageGroupCalls,LinkageGroupList,ChrTable-method}
\alias{barplotLinkageGroupCalls}
\alias{barplotLinkageGroupCalls,LinkageGroupList,ChrTable-method}
\alias{barplotLinkageGroupCalls,LinkageGroupList,LinkageGroupList-method,ChrTable,ChrTable-method}
\title{Bar plot all linkage groups, with the true chromosomes of contigs coloured.}
\usage{
\S4method{barplotLinkageGroupCalls}{LinkageGroupList,ChrTable}(object, chrTable,
  by = "lg", bySize = TRUE, returnTable = NULL, whichGroup = NULL,
  percentage = NULL)
}
\arguments{
\item{object}{LinkageGroupList, as generated by clusterContigs}

\item{chrTable}{GRanges object containing assembly information about the contigs, including a meta column called 'name' that has names matching the object. 
Note that the rownames of chrTable should be the contig names, as they are used in object, and the first column (chromosome name) will used to order by chromosome if 'chr' option used in by parameter. 
To use a bam file header, the product of makeChrTable(bamFile) is suitable for input}

\item{by}{whether to plot by linkage group (if 'lg') or chromosomes ('chr')}

\item{bySize}{logical value to return barplot either with LGs sorted by number of contigs or size (in Mb). Default is TRUE.}

\item{returnTable}{Logical to return chromosome length matrix. Default is NULL}

\item{whichGroup}{Numeric vector of groups to analyse. If by='lg', then only the subset of LGs selected by whichGroup will be analyzed. If by='chr', then only
subset of chromosomes selected by whichGroup will be analyzed.
Note to include legend, use legend=rownames(chr.table) for by='lg', and legend=colnames(chr.table) for by='chr'}

\item{percentage}{Logical that returns the percentage of different chromosomes or LG within the barplot. Default is NULL}
}
\value{
a matrix of lengths of each chromosome (rows) in each linkage group (columns)
}
\description{
Bar plot all linkage groups, with the true chromosomes of contigs coloured.
}
\examples{
data("exampleLGList")
data("exampleDividedChr")

barplotLinkageGroupCalls(exampleLGList, exampleDividedChr)

}

