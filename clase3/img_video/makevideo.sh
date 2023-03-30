ffmpeg -y -f image2  -pattern_type glob -framerate 60 -i '0*.png'\
       -s 640x720 -crf 25 -pix_fmt yuv440p  ffmpeg-cfr.mp4 
       
cat > timecodes.txt <<EOF
0
98000
135000
180000
250000
310000
830000
860000
930000
997440
EOF

mp4fpsmod -o vfr.mp4 -t timecodes.txt ffmpeg-cfr.mp4

ffmpeg -i vfr.mp4 -crf 16 -c:v libx264 -pix_fmt yuv440p final-cfr.mp4
