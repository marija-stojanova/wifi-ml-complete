import pandas as pd
import os

complete = pd.DataFrame()

directory = "1H/"

files = os.listdir(directory)
LoS = 1

for i in files:
    antennaPosition = i.split('_')[0]
    distance = i.split('_')[1]
    df = pd.read_csv(directory + i, delimiter='\t')
    df['distance'] = distance
    df['antenna'] = antennaPosition
    df['LoS'] = LoS
    df.to_csv(directory + i, sep='\t', index=False)
    complete = pd.concat([complete, df])

complete.to_csv(directory + "complete_data.csv", sep='\t', index=False)

