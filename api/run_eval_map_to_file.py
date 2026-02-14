import sys
import os

# Redirect stdout to a file
sys.stdout = open('map_results.txt', 'w', encoding='utf-8')

import eval_kalimat_map

if __name__ == "__main__":
    eval_kalimat_map.main()
