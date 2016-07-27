######################################
#
# swh-lv2
#
######################################

SWH_LV2_VERSION = 1aa77e5f443b16c5802beef5d5dc0d6075113d89
SWH_LV2_SITE = $(call github,swh,lv2,$(SWH_LV2_VERSION))
SWH_LV2_DEPENDENCIES = fftwf host-libxslt
SWH_LV2_BUNDLES = alias-swh.lv2 allpass-swh.lv2 am_pitchshift-swh.lv2 amp-swh.lv2  analogue_osc-swh.lv2 bandpass_a_iir-swh.lv2 bandpass_iir-swh.lv2  bode_shifter-swh.lv2 bode_shifter_cv-swh.lv2 butterworth-swh.lv2 chebstortion-swh.lv2 comb-swh.lv2 comb_splitter-swh.lv2 const-swh.lv2  crossover_dist-swh.lv2 dc_remove-swh.lv2 decay-swh.lv2 decimator-swh.lv2  declip-swh.lv2 delay-swh.lv2 delayorama-swh.lv2 diode-swh.lv2 divider-swh.lv2 dj_eq-swh.lv2 dj_flanger-swh.lv2 dyson_compress-swh.lv2 fad_delay-swh.lv2  fast_lookahead_limiter-swh.lv2 flanger-swh.lv2 fm_osc-swh.lv2  foldover-swh.lv2 foverdrive-swh.lv2 freq_tracker-swh.lv2 gate-swh.lv2 giant_flange-swh.lv2 gong-swh.lv2 gong_beater-swh.lv2 gverb-swh.lv2 hard_limiter-swh.lv2 harmonic_gen-swh.lv2 hermes_filter-swh.lv2  highpass_iir-swh.lv2 hilbert-swh.lv2 impulse-swh.lv2 inv-swh.lv2 karaoke-swh.lv2 latency-swh.lv2 lcr_delay-swh.lv2 lookahead_limiter-swh.lv2 lookahead_limiter_const-swh.lv2 lowpass_iir-swh.lv2 ls_filter-swh.lv2  matrix_ms_st-swh.lv2 matrix_spatialiser-swh.lv2 matrix_st_ms-swh.lv2 mod_delay-swh.lv2 multivoice_chorus-swh.lv2 phasers-swh.lv2 plate-swh.lv2 pointer_cast-swh.lv2 rate_shifter-swh.lv2 retro_flange-swh.lv2 revdelay-swh.lv2 ringmod-swh.lv2 satan_maximiser-swh.lv2 sc1-swh.lv2 sc2-swh.lv2 sc3-swh.lv2 sc4-swh.lv2 se4-swh.lv2 shaper-swh.lv2 sifter-swh.lv2 simple_comb-swh.lv2 sin_cos-swh.lv2 single_para-swh.lv2 sinus_wavewrapper-swh.lv2 smooth_decimate-swh.lv2 split-swh.lv2 surround_encoder-swh.lv2 svf-swh.lv2 tape_delay-swh.lv2 transient-swh.lv2 triple_para-swh.lv2 valve-swh.lv2 valve_rect-swh.lv2 vynil-swh.lv2 wave_terrain-swh.lv2 xfade-swh.lv2 zm1-swh.lv2 offset-swh.lv2 a_law-swh.lv2 u_law-swh.lv2 mbeq-swh.lv2 pitch_scale-swh.lv2

SWH_LV2_TARGET_MAKE = $(TARGET_MAKE_ENV) $(TARGET_CONFIGURE_OPTS) $(MAKE) -C $(@D)

define SWH_LV2_BUILD_CMDS
	$(SWH_LV2_TARGET_MAKE)
endef

define SWH_LV2_INSTALL_TARGET_CMDS
	$(SWH_LV2_TARGET_MAKE) install-system PREFIX=$(TARGET_DIR)/usr
	#cp -rL $($(PKG)_PKGDIR)/xxxx.lv2/* $(TARGET_DIR)/usr/lib/lv2/xxxx.lv2/
endef

$(eval $(generic-package))