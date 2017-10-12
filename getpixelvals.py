#!/bin/python

from PIL import Image
import sys

def main(image):
    im = Image.open(image) #Can be many different formats.
    pix = im.load()
    res = im.size #Get the width and hight of the image for iterating over

    print('r', 'g', 'b')
    for x in range(1, res[0]):
        for y in range(1, res[1]):
             rgb = pix[x, y]
             print(rgb[0], rgb[1], rgb[2])

if __name__ == "__main__":
    main(sys.argv[1])