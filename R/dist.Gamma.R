
################################################################################
################################################################################
##                                                                            ##
## Copyright Yoann Robin, 2020                                                ##
##                                                                            ##
## yoann.robin.k@gmail.com                                                    ##
##                                                                            ##
## This software is a computer program that is part of the ROOPSD (R Object   ##
## Oriented Programming for Statistical Distribution). This library makes it  ##
## possible to draw, fit and access to CDF and SF function                    ##
## for classic statistical distribution.                                      ##
##                                                                            ##
## This software is governed by the CeCILL-C license under French law and     ##
## abiding by the rules of distribution of free software.  You can  use,      ##
## modify and/ or redistribute the software under the terms of the CeCILL-C   ##
## license as circulated by CEA, CNRS and INRIA at the following URL          ##
## "http://www.cecill.info".                                                  ##
##                                                                            ##
## As a counterpart to the access to the source code and  rights to copy,     ##
## modify and redistribute granted by the license, users are provided only    ##
## with a limited warranty  and the software's author,  the holder of the     ##
## economic rights,  and the successive licensors  have only  limited         ##
## liability.                                                                 ##
##                                                                            ##
## In this respect, the user's attention is drawn to the risks associated     ##
## with loading,  using,  modifying and/or developing or reproducing the      ##
## software by the user in light of its specific status of free software,     ##
## that may mean  that it is complicated to manipulate,  and  that  also      ##
## therefore means  that it is reserved for developers  and  experienced      ##
## professionals having in-depth computer knowledge. Users are therefore      ##
## encouraged to load and test the software's suitability as regards their    ##
## requirements in conditions enabling the security of their systems and/or   ##
## data to be ensured and,  more generally, to use and operate it in the      ##
## same conditions as regards security.                                       ##
##                                                                            ##
## The fact that you are presently reading this means that you have had       ##
## knowledge of the CeCILL-C license and that you accept its terms.           ##
##                                                                            ##
################################################################################
################################################################################

################################################################################
################################################################################
##                                                                            ##
## Copyright Yoann Robin, 2020                                                ##
##                                                                            ##
## yoann.robin.k@gmail.com                                                    ##
##                                                                            ##
## Ce logiciel est un programme informatique faisant partie de la librairie   ##
## ROOPSD (R Object Oriented Programming for Statistical Distribution). Cette ##
## librarie permet de tirer aléatoirement, inférer et acceder aux fonctions   ##
## CDF et SF des distributions statistisques classiques.                      ##
##                                                                            ##
## Ce logiciel est régi par la licence CeCILL-C soumise au droit français et  ##
## respectant les principes de diffusion des logiciels libres. Vous pouvez    ##
## utiliser, modifier et/ou redistribuer ce programme sous les conditions     ##
## de la licence CeCILL-C telle que diffusée par le CEA, le CNRS et l'INRIA   ##
## sur le site "http://www.cecill.info".                                      ##
##                                                                            ##
## En contrepartie de l'accessibilité au code source et des droits de copie,  ##
## de modification et de redistribution accordés par cette licence, il n'est  ##
## offert aux utilisateurs qu'une garantie limitée.  Pour les mêmes raisons,  ##
## seule une responsabilité restreinte pèse sur l'auteur du programme, le     ##
## titulaire des droits patrimoniaux et les concédants successifs.            ##
##                                                                            ##
## A cet égard  l'attention de l'utilisateur est attirée sur les risques      ##
## associés au chargement,  à l'utilisation,  à la modification et/ou au      ##
## développement et à la reproduction du logiciel par l'utilisateur étant     ##
## donné sa spécificité de logiciel libre, qui peut le rendre complexe à      ##
## manipuler et qui le réserve donc à des développeurs et des professionnels  ##
## avertis possédant  des  connaissances  informatiques approfondies.  Les    ##
## utilisateurs sont donc invités à charger  et  tester  l'adéquation  du     ##
## logiciel à leurs besoins dans des conditions permettant d'assurer la       ##
## sécurité de leurs systèmes et ou de leurs données et, plus généralement,   ##
## à l'utiliser et l'exploiter dans les mêmes conditions de sécurité.         ##
##                                                                            ##
## Le fait que vous puissiez accéder à cet en-tête signifie que vous avez     ##
## pris connaissance de la licence CeCILL-C, et que vous en avez accepté les  ##
## termes.                                                                    ##
##                                                                            ##
################################################################################
################################################################################

#' Gamma 
#'
#' @description
#' Gamma distribution in OOP way. Based on AbstractDist
#'
#' @details
#' See AbstractDist for generic methods
#'
#' @examples
#' ## Generate sample
#' scale = 1.5
#' shape = 0.5
#' gaml = ROOPSD::Gamma$new( scale = scale , shape = shape )
#' X    = gaml$rvs( n = 1000 )
#'
#' ## And fit parameters
#' gaml$fit(X)
#'
#' @export
Gamma = R6::R6Class( "Gamma",
	
	inherit = AbstractDist,
	
	## Private elements
	##==============={{{
	private = list(
	
	## Arguments
	##==========
	
	#' @field shape [double] shape of the gamma law
	.shape = NULL,
	#' @field scale [double] scale of the gamma law
	.scale = NULL,
	#' @field params [vector] params of the gamma law
	.params = NULL,
	
	## Methods
	##========
	
	fit_initialization = function(Y)##{{{
	{
		e = base::mean(Y)
		v = stats::var(Y)
		self$shape = e^2 / v
		self$scale = v / e
	},
	##}}}
	
	gradient_negloglikelihood = function( params , Y )##{{{
	{
		self$params = params
		dp    = base::c(NA,NA)
		dp[1] = base::sum( self$shape / self$scale - Y / self$scale**2 )
		dp[2] = base::sum( base::digamma(self$shape) + base::log(self$scale) - base::log(Y) )
		
		return(dp)
	}
	##}}}
	
	),
	##}}}
	
	## Active elements
	##================{{{
	active = list(
	
	## params ##{{{
	params = function(value)
	{
		if(missing(value))
		{
			return( list( shape = private$.shape , scale = private$.scale ) )
		}
		else
		{
			if(is.numeric(value) && length(value) == 2 )
			{
				if( value[1] > 0 )
					private$.shape = value[1]
				if( value[2] > 0 )
					private$.scale = value[2]
			}
			
		}
	},
	##}}}
	
	## shape ##{{{
	shape = function(value)
	{
		if(missing(value))
		{
			return(private$.shape)
		}
		else
		{
			if(value > 0)
				private$.shape = value
		}
	},
	##}}}
	
	## scale ##{{{
	scale = function(value)
	{
		if(missing(value))
		{
			return(private$.scale)
		}
		else
		{
			if(value > 0)
				private$.scale = value
		}
	}
	##}}}
	
	),
	##}}}
	
	## Public elements
	##============={{{
	
	public = list(
	
	## Arguments
	##==========
	
	## Constructor
	##============
	
	## initialize ##{{{
	#' @description
    #' Create a new Gamma object.
	#' @param scale [double] scale parameter
	#' @param shape [double] shape parameter
	#' @return A new `Gamma` object.
	initialize = function( shape = 0.5 , scale = 1 )
	{
		super$initialize( stats::dgamma , stats::pgamma , stats::qgamma , stats::rgamma , "Gamma" , TRUE )
		self$shape = shape
		self$scale = scale
	}
	##}}}
	
	)
	##}}}
	
)

