g++ init.cpp -o init.so -fPIC -shared -pthread -O3 -march=native
g++ initEA.cpp -o initEA.so -fPIC -shared -pthread -O3 -march=native
g++ test.cpp -o test.so -fPIC -shared -pthread -O3 -march=native
