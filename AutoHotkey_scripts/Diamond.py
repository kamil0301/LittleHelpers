from xml.etree import ElementTree
from os.path import basename

def get_timesteps(xml_file_path):
    tree = ElementTree.parse(xml_file_path)
    root = tree.getroot()
    steps = []
    for step in root.iter("STEP"):
        steps.append(step[0].text)
    return(steps)

def main():
    xml_file_path = "D:\\Wszystko\\Projekty_CR\\RandD_Warsztaty\\frame.gid\\frame.xml"
    timesteps = get_timesteps(xml_file_path)
    for timestep in timesteps:
        print(timestep)

if __name__ == '__main__':
    main()