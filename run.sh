cd apps
cd makescene
./makescene -i --max-pixels=5000000 ../../images/ ../../scene/

cd ..
cd sfmrecon
./sfmrecon ../../scene/

cd ..
cd dmrecon
./dmrecon -s2 ../../scene/

cd ..
cd scene2pset
./scene2pset -F2 ../../scene/ ../../scene/pset-L2.ply

cd ..
cd fssrecon
./fssrecon ../../scene/pset-L2.ply ../../scene/surface-L2.ply

cd ..
cd meshclean
./meshclean -t10 ../../scene/surface-L2.ply ../../scene/surface-L2-clean.ply