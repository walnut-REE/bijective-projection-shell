################################################################################
include(DownloadProject)

# With CMake 3.8 and above, we can hide warnings about git being in a
# detached head by passing an extra GIT_CONFIG option
if(NOT (${CMAKE_VERSION} VERSION_LESS "3.8.0"))
	set(PRISM_EXTRA_OPTIONS "GIT_CONFIG advice.detachedHead=false")
else()
	set(PRISM_EXTRA_OPTIONS "")
endif()

# Shortcut function
function(prism_download_project name)
	if(NOT EXISTS ${PRISM_EXTERNAL}/${name})
		download_project(
			PROJ         ${name}
			SOURCE_DIR   ${PRISM_EXTERNAL}/${name}
			DOWNLOAD_DIR ${PRISM_EXTERNAL}/.cache/${name}
			QUIET
			${PRISM_EXTRA_OPTIONS}
			${ARGN}
		)
	endif()
endfunction()

################################################################################

function(prism_download_HighFive)
	prism_download_project(HighFive
			GIT_REPOSITORY https://github.com/BlueBrain/HighFive.git
			GIT_TAG v2.2.2
)
endfunction()

function(prism_download_cli11)
	prism_download_project(cli11
			GIT_REPOSITORY https://github.com/CLIUtils/CLI11.git
			GIT_TAG v1.9.1
)
endfunction()

function(prism_download_ortools)
		prism_download_project(or-tools
			GIT_REPOSITORY https://github.com/google/or-tools.git
			GIT_TAG v7.4
		)
endfunction()

function(prism_download_spdlog)
    prism_download_project(spdlog
        GIT_REPOSITORY https://github.com/gabime/spdlog.git
        GIT_TAG         v1.7.0
    )
endfunction()

function(prism_download_json)
    prism_download_project(json
        GIT_REPOSITORY https://github.com/nlohmann/json
        GIT_TAG v3.7.0
    )
endfunction()

function(prism_download_progressive_embedding)
	prism_download_project(progressive_embedding
		    GIT_REPOSITORY https://github.com/hankstag/progressive_embedding.git
        GIT_TAG        79081e3b77ffcdd5d908f1a4e184a460c56c6bcc
	)
endfunction()

## Eigen
function(prism_download_eigen)
    prism_download_project(eigen
        URL     http://bitbucket.org/eigen/eigen/get/3.3.7.tar.gz
        URL_MD5 f2a417d083fe8ca4b8ed2bc613d20f07
    )
endfunction()

function(prism_download_geogram)
    prism_download_project(geogram
        GIT_REPOSITORY https://github.com/alicevision/geogram.git
        GIT_TAG        v1.6.8
    )
endfunction()

## libigl
function(prism_download_libigl)
	prism_download_project(libigl
		GIT_REPOSITORY https://github.com/libigl/libigl.git
		GIT_TAG        682e4b9685d2737215f6629ecafcb318d714d556
	)
endfunction()

## CppNumericalSolvers
function(prism_download_cppoptlib)
	prism_download_project(CppNumericalSolvers
		GIT_REPOSITORY https://github.com/PatWie/CppNumericalSolvers.git
		GIT_TAG        7eddf28fa5a8872a956d3c8666055cac2f5a535d
	)
endfunction()


## tinyformat
function(prism_download_tinyformat)
	prism_download_project(tinyformat
		GIT_REPOSITORY https://github.com/c42f/tinyformat
		GIT_TAG        33d61f30f7c11dab2e4ed29e52e5e1cec0572feb
	)
endfunction()

## tinyformat
function(prism_download_tinyfiledialogs)
	prism_download_project(tinyfiledialogs
		GIT_REPOSITORY https://git.code.sf.net/p/tinyfiledialogs/code
		GIT_TAG        511e6500fa9184923d4859e06ee9a6a4e70820c4
	)
endfunction()

## Sanitizers
function(prism_download_sanitizers)
    prism_download_project(sanitizers-cmake
        GIT_REPOSITORY https://github.com/arsenm/sanitizers-cmake.git
        GIT_TAG        99e159ec9bc8dd362b08d18436bd40ff0648417b
    )
endfunction()


## pybind11
function(prism_download_pybind11)
	prism_download_project(pybind11
		URL	https://github.com/pybind/pybind11/archive/v2.5.0.tar.gz
		URL_MD5        1ad2c611378fb440e8550a7eb6b31b89
	)
endfunction()

## tbb
function(prism_download_tbb)
    prism_download_project(tbb
    GIT_REPOSITORY https://github.com/wjakob/tbb.git
    GIT_TAG        20357d83871e4cb93b2c724fe0c337cd999fd14f
  )
endfunction()

## doctest
function(prism_download_doctest)
		prism_download_project(doctest
		URL https://github.com/onqtam/doctest/archive/2.4.0.tar.gz
		URL_MD5 0b679d6294f97be4fb11cb26e801fda6
  )
endfunction()

## XTensor
function(prism_download_xtensor)
		prism_download_project(xtensor
		URL https://github.com/xtensor-stack/xtensor/archive/0.21.5.tar.gz
		URL_MD5 6611cda66bd94d95900b39e3e2ff2556
  )
endfunction()

function(prism_download_xtl)
	download_project(
		PROJ         xtl
		SOURCE_DIR   ${PRISM_EXTERNAL}/xtl
		DOWNLOAD_DIR ${PRISM_EXTERNAL}/.cache/xtl
		INSTALL_DIR ${PRISM_EXTERNAL}/xtl-install
		URL https://github.com/xtensor-stack/xtl/archive/0.6.18.tar.gz
		URL_MD5 a8081db49c7e1869ff14d45ce9249946
		QUIET
	)
endfunction()

function(prism_download_xtensor_blas)
		prism_download_project(xtensor_blas
		URL https://github.com/xtensor-stack/xtensor-blas/archive/0.17.2.tar.gz
		URL_MD5 88c51a8b34cf53610647134f9044c796
  )
endfunction()
