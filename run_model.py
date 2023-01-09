import os
import pandas as pd

output_path = os.path.join('..', 'data')
data = pd_read_csv(os.path.join(output_path, 'data.csv'))

data_output = data*2
data_output.to_csv(os.path.join(output_path, 'data_output.csv'))
