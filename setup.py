from distutils.core import setup 
from distutils.extension import Extension 
from Cython.Build import cythonize 

adf4351_extension = Extension(
        name="pyadf4351",
        sources=["pyadf4351.pyx"],
        libraries=["adf4351", "m", "rt", "pthread", "wiringPi"],
        library_dirs=["lib"],
        include_dirs=["lib"]
)

setup(
        name="pyadf4351",
        ext_modules=cythonize([adf4351_extension])
)
