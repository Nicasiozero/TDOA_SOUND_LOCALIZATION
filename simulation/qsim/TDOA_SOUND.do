onerror {exit -code 1}
vlib work
vcom -work work TDOA_SOUND.vho
vcom -work work Waveform.vwf.vht
vsim -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.TDOA_SOUND_vhd_vec_tst
vcd file -direction TDOA_SOUND.msim.vcd
vcd add -internal TDOA_SOUND_vhd_vec_tst/*
vcd add -internal TDOA_SOUND_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
