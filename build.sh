
pisa(){
    echo "Cloning and building PISA"
    # Force a known commit for reproducibility
    COMMIT=69f2a83
    git clone https://github.com/pisa-engine/pisa/
    cd pisa
    git checkout 69f2a83
    git submodule update --init --recursive
    mkdir build
    cd build
    cmake ..
    make -j 12
    cd ../..
    echo "Done!"
}


patch(){
    echo "Patching PISA for disjunctive batch query processing"
    cd pisa
    git apply ../disbatch.patch
    cd build
    cmake ..
    make -j 12
    cd ../..
    echo "Done!"
}

pisa
patch
