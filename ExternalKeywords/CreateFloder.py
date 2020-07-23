import os


def create_folder():
    os.mkdir("D:\\python\\RobotFramework")

def create_sub_folder():
    os.mkdir("D:\\python\\RobotFramework\\TC_014_Createfolder")

def create_folder_by_Arguments(FolderName, SubfolderName):
    os.mkdir("D:\\python\\"+ FolderName)
    os.mkdir("D:\\python\\"+ FolderName+"\\"+ SubfolderName)

def create_Subfolder_by_Arguments(SubFolderName):
    os.mkdir("D:\\python\\"+ SubFolderName)

def concatenate_two_values(val1, val2):
    return val1+" "+val2

