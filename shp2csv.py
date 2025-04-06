import geopandas as gpd
import sys

def shp2csv(input_shapefile, csv_file_name):

    shapefile_data = gpd.read_file(input_shapefile)
    attribute_data = shapefile_data.drop(columns='geometry')
    output_csv = csv_file_name
    attribute_data.to_csv(output_csv, index=False)  
    
    return output_csv


if __name__ == "__main__":

    input_shapefile = sys.argv[1]
    csv_file_name = sys.argv[2]

    output_csv = shp2csv(input_shapefile , csv_file_name )

