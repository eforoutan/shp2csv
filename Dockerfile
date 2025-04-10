FROM python:3.9-slim

RUN pip install geopandas

WORKDIR /app

COPY shp2csv.py /app/shp2csv.py

ENTRYPOINT [ "python3" , "/app/shp2csv.py" ]