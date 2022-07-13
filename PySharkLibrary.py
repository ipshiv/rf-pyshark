# -*- coding: utf-8 -*-
import pyshark


class PySharkLibrary:
    """Library to work with Wireshark

    == Dependencies ==
    pyshark | https://github.com/ARMmbed/pyshark |

    == Example ==
    //TODO Fill this section
    """
    def open_dump_file(self, file_name, filter=''):
        return pyshark.FileCapture(file_name, display_filter=filter)

