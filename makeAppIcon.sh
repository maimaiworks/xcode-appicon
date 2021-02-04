#/bin/sh

cd `dirname $0`

# output directory
outdir="AppIcon.appiconset"
mkdir -p $outdir


if [ -e "icon1024.png" ]; then
		BASE_FILE="icon1024.png"
else
	echo "Cannot find a  AppIcon file.\nYou will need an icon1024.png of 1024x1024px."
	exit
fi


echo "BASE_ICON: "
echo ${BASE_FILE}


#----------------------------------------------------------------------
# 20px

if [ -e "${outdir}/icon-20.png" ]; then
	echo "icon-20.png already exists. Skip the process."
else
	sips -Z 20 ${BASE_FILE} --out ${outdir}/icon-20.png
fi

if [ -e "${outdir}/icon-20@2x.png" ]; then
	echo "icon-20@2x.png already exists. Skip the process."
else
	sips -Z 40 ${BASE_FILE} --out ${outdir}/icon-20@2x.png
fi

if [ -e "${outdir}/icon-20@3x.png" ]; then
	echo "icon-20@3x.png already exists. Skip the process."
else
	sips -Z 60 ${BASE_FILE} --out ${outdir}/icon-20@3x.png
fi

#----------------------------------------------------------------------
# 29px

if [ -e "${outdir}/icon-29.png" ]; then
	echo "icon-29.png already exists. Skip the process."
else
	sips -Z 29 ${BASE_FILE} --out ${outdir}/icon-29.png
fi

if [ -e "${outdir}/icon-29@2x.png" ]; then
	echo "icon-29@2x.png already exists. Skip the process."
else
	sips -Z 58 ${BASE_FILE} --out ${outdir}/icon-29@2x.png
fi

if [ -e "${outdir}/icon-29@3x.png" ]; then
	echo "icon-29@3x.png already exists. Skip the process."
else
	sips -Z 87 ${BASE_FILE} --out ${outdir}/icon-29@3x.png
fi

#----------------------------------------------------------------------
# 40px

if [ -e "${outdir}/icon-40.png" ]; then
	echo "icon-40.png already exists. Skip the process."
else
	sips -Z 40 ${BASE_FILE} --out ${outdir}/icon-40.png
fi

if [ -e "${outdir}/icon-40@2x.png" ]; then
	echo "icon-40@2x.png already exists. Skip the process."
else
	sips -Z 80 ${BASE_FILE} --out ${outdir}/icon-40@2x.png
fi

# iPhone 6s, iPhone 6(@2x)　推奨
if [ -e "${outdir}/icon-40@3x.png" ]; then
	echo "icon-40@3x.png already exists. Skip the process."
else
	sips -Z 120 ${BASE_FILE} --out ${outdir}/icon-40@3x.png
fi

#----------------------------------------------------------------------
# 57px

if [ -e "${outdir}/icon-57.png" ]; then
	echo "icon-57.png already exists. Skip the process."
else
	sips -Z 57 ${BASE_FILE} --out ${outdir}/icon57.png
fi

if [ -e "${outdir}/icon57@2x.png" ]; then
	echo "icon57@2x.png already exists. Skip the process."
else
	sips -Z 114 ${BASE_FILE} --out ${outdir}/icon57@2x.png
fi

#----------------------------------------------------------------------
# 60px

if [ -e "${outdir}/icon-60@2x.png" ]; then
	echo "icon-60@2x.png already exists. Skip the process."
else
	sips -Z 120 ${BASE_FILE} --out ${outdir}/icon-60@2x.png
fi

if [ -e "${outdir}/icon-60@3x.png" ]; then
	echo "icon-60@3x.png already exists. Skip the process."
else
	sips -Z 180 ${BASE_FILE} --out ${outdir}/icon-60@3x.png
fi


#----------------------------------------------------------------------
# 76px

if [ -e "${outdir}/icon-76.png" ]; then
	echo "icon-76.png already exists. Skip the process."
else
	sips -Z 76 ${BASE_FILE} --out ${outdir}/icon-76.png
fi

if [ -e "${outdir}/icon-76@2x.png" ]; then
	echo "icon-76@2x.png already exists. Skip the process."
else
	sips -Z 152 ${BASE_FILE} --out ${outdir}/icon-76@2x.png
fi

#----------------------------------------------------------------------
# 83.5px

if [ -e "${outdir}/icon-83.5@2x.png" ]; then
	echo "icon-83.5@2x.png already exists. Skip the process."
else
	sips -Z 167 ${BASE_FILE} --out ${outdir}/icon-83.5@2x.png
fi


#----------------------------------------------------------------------
# Contents.json作成

cat <<- END_JSON > ${outdir}/Contents.json
{
  "images" : [
    {
      "filename" : "icon-20@2x.png",
      "idiom" : "iphone",
      "scale" : "2x",
      "size" : "20x20"
    },
    {
      "filename" : "icon-20@3x.png",
      "idiom" : "iphone",
      "scale" : "3x",
      "size" : "20x20"
    },
    {
      "filename" : "icon-29.png",
      "idiom" : "iphone",
      "scale" : "1x",
      "size" : "29x29"
    },
    {
      "filename" : "icon-29@2x.png",
      "idiom" : "iphone",
      "scale" : "2x",
      "size" : "29x29"
    },
    {
      "filename" : "icon-29@3x.png",
      "idiom" : "iphone",
      "scale" : "3x",
      "size" : "29x29"
    },
    {
      "filename" : "icon-40@2x.png",
      "idiom" : "iphone",
      "scale" : "2x",
      "size" : "40x40"
    },
    {
      "filename" : "icon-40@3x.png",
      "idiom" : "iphone",
      "scale" : "3x",
      "size" : "40x40"
    },
    {
      "filename" : "icon57.png",
      "idiom" : "iphone",
      "scale" : "1x",
      "size" : "57x57"
    },
    {
      "filename" : "icon57@2x.png",
      "idiom" : "iphone",
      "scale" : "2x",
      "size" : "57x57"
    },
    {
      "filename" : "icon-60@2x.png",
      "idiom" : "iphone",
      "scale" : "2x",
      "size" : "60x60"
    },
    {
      "filename" : "icon-60@3x.png",
      "idiom" : "iphone",
      "scale" : "3x",
      "size" : "60x60"
    },
    {
      "filename" : "icon-20.png",
      "idiom" : "ipad",
      "scale" : "1x",
      "size" : "20x20"
    },
    {
      "filename" : "icon-20@2x.png",
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "20x20"
    },
    {
      "filename" : "icon-29.png",
      "idiom" : "ipad",
      "scale" : "1x",
      "size" : "29x29"
    },
    {
      "filename" : "icon-29@2x.png",
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "29x29"
    },
    {
      "filename" : "icon-40.png",
      "idiom" : "ipad",
      "scale" : "1x",
      "size" : "40x40"
    },
    {
      "filename" : "icon-40@2x.png",
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "40x40"
    },
    {
      "filename" : "icon-76.png",
      "idiom" : "ipad",
      "scale" : "1x",
      "size" : "76x76"
    },
    {
      "filename" : "icon-76@2x.png",
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "76x76"
    },
    {
      "filename" : "icon-83.5@2x.png",
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "83.5x83.5"
    },
    {
      "filename" : "icon1024.png",
      "idiom" : "ios-marketing",
      "scale" : "1x",
      "size" : "1024x1024"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}

END_JSON

cp icon1024.png ${outdir}/icon1024.png
