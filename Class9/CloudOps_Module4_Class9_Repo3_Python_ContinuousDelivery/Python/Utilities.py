import sys
import os

class Utilities:

    @staticmethod
    def isItTest():
        script_name = os.path.basename(sys.argv[0])
        if script_name in ['pytest', 'py.test']:
            pytest = True
        else:
            pytest = False
        return pytest