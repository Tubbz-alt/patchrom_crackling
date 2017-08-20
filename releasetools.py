import common
import edify_generator
import os

def ModifyBegin(edify):
  edify.script[0] = \
  '''ifelse(is_mounted("/system"), unmount("/system"));
ifelse(is_mounted("/data"), unmount("/data"));
ui_print("Android 6.0.1_____________________________");
ui_print("| 88___88_888888__88__88__888888___8888  |");
ui_print("| 888_888___88____88__88____88____88__88 |");
ui_print("| 88_8_88___88____88__88____88_____8888  |");
ui_print("| 88___88___88____88__88____88____88__88 |");
ui_print("| 88___88_888888___8888___888888___8888  |");
ui_print("----------------------------------Lordhmen");\n''' + edify.script[0]

def FullOTA_InstallEnd(info):
    edify = info.script
    ModifyBegin(edify)