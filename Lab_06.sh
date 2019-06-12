import pandas as pd

prueba = pd.read_excel('Precio_Bolsa_Nacional_($kwh)_1995.xlsx', skiprows = 2, usecols = list(range(26)))
#Defino el nombre del archivo como filename
#Realizo un ciclo for de las primeras 10 filas hasta que encuentra"Fecha" y solamente va a tomar las primeras 26 columnas
def leer_precios(filename):
for k in range(10):
df = pd.read_excel(filename, skiprows = k, usecols = list(range(26)))
if df.iloc[0,0] == "Fecha":
df = pd.read_excel(filename, skiprows = k+1, usecols = list(range(26)))
break
return(df)

filenames = !ls precios/*.xls*
filenames

dfs = []
for filename in filenames:
    dfs.append(leer_precios(filename))
dfs= pd.concat(dfs, sort=True)
dfs.size

dfs1 = pd.melt(dfs,id_vars="Fecha")
