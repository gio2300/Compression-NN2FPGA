<project xmlns="com.autoesl.autopilot.project" name="DecompressorProject" top="decompressor_kernel" projectType="C/C++">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="decompress.tcl" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../work/cc/src/decompressor_kernel.cc" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../work/cc/include/decompressor_kernel.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../work/cc/include/fixed_codes.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../work/cc/include/huffman_decoder.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../work/npy/resnet8_weights.bin" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="../../../work/cc/include/decompress_tb.cpp" sc="0" tb="1" cflags="-Wno-unknown-pragmas" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

