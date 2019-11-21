#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
Copyright (c) 2018, 2019 Kairo de Araujo
"""


class InvalidCAFiles(Exception):
    """CA Files are inconsistent."""

    pass


class InconsistentCertificateData(Exception):
    """Certificate file is inconsistent."""

    pass