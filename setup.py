#!/usr/bin/env python

from setuptools import setup
import re

script_content = open('docx-replace').read()
metadata = dict(re.findall("__([a-z]+)__\s*=\s*'([^']+)'", script_content))

setup(
    name="docx-replace",
    version=metadata['version'],
    description="Replace text inside docx file",
    url="https://github.com/cvlabmiet/docx-replace",
    author="igsha",
    license="LICENSE",
    classifiers=[
        "Development Status :: 2 - Pre-Alpha",
        "Environment :: Console",
        "Intended Audience :: End Users/Desktop",
        "License :: OSI Approved :: MIT License",
        "Operating System :: POSIX",
        "Programming Language :: Python",
        "Topic :: Text Processing"
    ],
    scripts=['docx-replace'],
    install_requires=['python-docx >= 0.8.6'],
)
