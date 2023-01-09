import os
import pandas as pd


data = pd.DataFrame([
    {'A': 1, 'B':1},
    {'A': 2, 'B':2},
    {'A': 3, 'B':1},
    {'A': 4, 'B':2},
    {'A': 5, 'B':1}
    ])

output_path = os.path.join('data')
data.to_csv(os.path.join(output_path, 'data.csv'))
