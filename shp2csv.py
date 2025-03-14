import geopandas as gpd
import sys

def shp2csv(input_shapefile, output_csv):

    shapefile_data = gpd.read_file(input_shapefile)   
    attribute_data = shapefile_data.drop(columns='geometry')
    attribute_data.to_csv(output_csv, index=False)  

    print(f"Convert {input_shapefile} to {output_csv}")


if __name__ == "__main__":
    input_shapefile = sys.argv[1]
    output_csv = sys.argv[2]

    shp2csv(input_shapefile , output_csv )

