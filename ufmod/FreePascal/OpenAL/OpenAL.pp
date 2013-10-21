{ *** OpenAL v1.0 and v1.1 for FreePascal *** }

unit OpenAL;

interface

type
	ALboolean = Byte;
	ALchar = AnsiChar;
	ALbyte = ShortInt;
	ALubyte = Byte;
	ALshort = SmallInt;
	ALushort = Word;
	ALint = LongInt;
	ALuint = LongWord;
	ALsizei = LongWord;
	ALenum = LongInt;
	ALfloat = Single;
	ALdouble = Double;
	ALCdevice = Pointer;
	ALCcontext = Pointer;
	ALCboolean = Byte;
	ALCchar = AnsiChar;
	ALCbyte = ShortInt;
	ALCubyte = Byte;
	ALCshort = SmallInt;
	ALCushort = Word;
	ALCint = LongInt;
	ALCuint = LongWord;
	ALCsizei = LongWord;
	ALCenum = LongInt;
	ALCfloat = Single;
	ALCdouble = Double;
	PALint = ^LongInt;
	PALuint = ^LongWord;
	PALfloat = ^Single;
	PALdouble = ^Double;
	PALboolean = ^Byte;
	PALCdevice = ^Pointer;
	PALCcontext = ^Pointer;
	PALCint = ^LongInt;

const
	AL_INVALID=-1;
	AL_NONE=0;
	AL_FALSE=0;
	AL_TRUE=1;
	AL_SOURCE_RELATIVE=$202;
	AL_CONE_INNER_ANGLE=$1001;
	AL_CONE_OUTER_ANGLE=$1002;
	AL_PITCH=$1003;
	AL_POSITION=$1004;
	AL_DIRECTION=$1005;
	AL_VELOCITY=$1006;
	AL_LOOPING=$1007;
	AL_BUFFER=$1009;
	AL_GAIN=$100A;
	AL_MIN_GAIN=$100D;
	AL_MAX_GAIN=$100E;
	AL_ORIENTATION=$100F;
	AL_CHANNEL_MASK=$3000;
	AL_SOURCE_STATE=$1010;
	AL_INITIAL=$1011;
	AL_PLAYING=$1012;
	AL_PAUSED=$1013;
	AL_STOPPED=$1014;
	AL_BUFFERS_QUEUED=$1015;
	AL_BUFFERS_PROCESSED=$1016;
	AL_SEC_OFFSET=$1024;
	AL_SAMPLE_OFFSET=$1025;
	AL_BYTE_OFFSET=$1026;
	AL_SOURCE_TYPE=$1027;
	AL_STATIC=$1028;
	AL_STREAMING=$1029;
	AL_UNDETERMINED=$1030;
	AL_FORMAT_MONO8=$1100;
	AL_FORMAT_MONO16=$1101;
	AL_FORMAT_STEREO8=$1102;
	AL_FORMAT_STEREO16=$1103;
	AL_REFERENCE_DISTANCE=$1020;
	AL_ROLLOFF_FACTOR=$1021;
	AL_CONE_OUTER_GAIN=$1022;
	AL_MAX_DISTANCE=$1023;
	AL_FREQUENCY=$2001;
	AL_BITS=$2002;
	AL_CHANNELS=$2003;
	AL_SIZE=$2004;
	AL_UNUSED=$2010;
	AL_PENDING=$2011;
	AL_PROCESSED=$2012;
	AL_NO_ERROR=0;
	AL_INVALID_NAME=$A001;
	AL_ILLEGAL_ENUM=$A002;
	AL_INVALID_ENUM=$A002;
	AL_INVALID_VALUE=$A003;
	AL_ILLEGAL_COMMAND=$A004;
	AL_INVALID_OPERATION=$A004;
	AL_OUT_OF_MEMORY=$A005;
	AL_VENDOR=$B001;
	AL_VERSION=$B002;
	AL_RENDERER=$B003;
	AL_EXTENSIONS=$B004;
	AL_DOPPLER_FACTOR=$C000;
	AL_DOPPLER_VELOCITY=$C001;
	AL_SPEED_OF_SOUND=$C003;
	AL_DISTANCE_MODEL=$D000;
	AL_INVERSE_DISTANCE=$D001;
	AL_INVERSE_DISTANCE_CLAMPED=$D002;
	AL_LINEAR_DISTANCE=$D003;
	AL_LINEAR_DISTANCE_CLAMPED=$D004;
	AL_EXPONENT_DISTANCE=$D005;
	AL_EXPONENT_DISTANCE_CLAMPED=$D006;
	ALC_INVALID=0;
	ALC_FALSE=0;
	ALC_TRUE=1;
	ALC_FREQUENCY=$1007;
	ALC_REFRESH=$1008;
	ALC_SYNC=$1009;
	ALC_MONO_SOURCES=$1010;
	ALC_STEREO_SOURCES=$1011;
	ALC_NO_ERROR=0;
	ALC_INVALID_DEVICE=$A001;
	ALC_INVALID_CONTEXT=$A002;
	ALC_INVALID_ENUM=$A003;
	ALC_INVALID_VALUE=$A004;
	ALC_OUT_OF_MEMORY=$A005;
	ALC_DEFAULT_DEVICE_SPECIFIER=$1004;
	ALC_DEVICE_SPECIFIER=$1005;
	ALC_EXTENSIONS=$1006;
	ALC_MAJOR_VERSION=$1000;
	ALC_MINOR_VERSION=$1001;
	ALC_ATTRIBUTES_SIZE=$1002;
	ALC_ALL_ATTRIBUTES=$1003;
	ALC_CAPTURE_DEVICE_SPECIFIER=$310;
	ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER=$311;
	ALC_CAPTURE_SAMPLES=$312;
	ALC_EFX_MAJOR_VERSION=$20001;
	ALC_EFX_MINOR_VERSION=$20002;
	ALC_MAX_AUXILIARY_SENDS=$20003;
	AL_METERS_PER_UNIT=$20004;
	AL_DIRECT_FILTER=$20005;
	AL_AUXILIARY_SEND_FILTER=$20006;
	AL_AIR_ABSORPTION_FACTOR=$20007;
	AL_ROOM_ROLLOFF_FACTOR=$20008;
	AL_CONE_OUTER_GAINHF=$20009;
	AL_DIRECT_FILTER_GAINHF_AUTO=$2000A;
	AL_AUXILIARY_SEND_FILTER_GAIN_AUTO=$2000B;
	AL_AUXILIARY_SEND_FILTER_GAINHF_AUTO=$2000C;
	AL_REVERB_DENSITY=1;
	AL_REVERB_DIFFUSION=2;
	AL_REVERB_GAIN=3;
	AL_REVERB_GAINHF=4;
	AL_REVERB_DECAY_TIME=5;
	AL_REVERB_DECAY_HFRATIO=6;
	AL_REVERB_REFLECTIONS_GAIN=7;
	AL_REVERB_REFLECTIONS_DELAY=8;
	AL_REVERB_LATE_REVERB_GAIN=9;
	AL_REVERB_LATE_REVERB_DELAY=$A;
	AL_REVERB_AIR_ABSORPTION_GAINHF=$B;
	AL_REVERB_ROOM_ROLLOFF_FACTOR=$C;
	AL_REVERB_DECAY_HFLIMIT=$D;
	AL_CHORUS_WAVEFORM=1;
	AL_CHORUS_PHASE=2;
	AL_CHORUS_RATE=3;
	AL_CHORUS_DEPTH=4;
	AL_CHORUS_FEEDBACK=5;
	AL_CHORUS_DELAY=6;
	AL_DISTORTION_EDGE=1;
	AL_DISTORTION_GAIN=2;
	AL_DISTORTION_LOWPASS_CUTOFF=3;
	AL_DISTORTION_EQCENTER=4;
	AL_DISTORTION_EQBANDWIDTH=5;
	AL_ECHO_DELAY=1;
	AL_ECHO_LRDELAY=2;
	AL_ECHO_DAMPING=3;
	AL_ECHO_FEEDBACK=4;
	AL_ECHO_SPREAD=5;
	AL_FLANGER_WAVEFORM=1;
	AL_FLANGER_PHASE=2;
	AL_FLANGER_RATE=3;
	AL_FLANGER_DEPTH=4;
	AL_FLANGER_FEEDBACK=5;
	AL_FLANGER_DELAY=6;
	AL_FREQUENCY_SHIFTER_FREQUENCY=1;
	AL_FREQUENCY_SHIFTER_LEFT_DIRECTION=2;
	AL_FREQUENCY_SHIFTER_RIGHT_DIRECTION=3;
	AL_VOCAL_MORPHER_PHONEMEA=1;
	AL_VOCAL_MORPHER_PHONEMEA_COARSE_TUNING=2;
	AL_VOCAL_MORPHER_PHONEMEB=3;
	AL_VOCAL_MORPHER_PHONEMEB_COARSE_TUNING=4;
	AL_VOCAL_MORPHER_WAVEFORM=5;
	AL_VOCAL_MORPHER_RATE=6;
	AL_PITCH_SHIFTER_COARSE_TUNE=1;
	AL_PITCH_SHIFTER_FINE_TUNE=2;
	AL_RING_MODULATOR_FREQUENCY=1;
	AL_RING_MODULATOR_HIGHPASS_CUTOFF=2;
	AL_RING_MODULATOR_WAVEFORM=3;
	AL_AUTOWAH_ATTACK_TIME=1;
	AL_AUTOWAH_RELEASE_TIME=2;
	AL_AUTOWAH_RESONANCE=3;
	AL_AUTOWAH_PEAK_GAIN=4;
	AL_COMPRESSOR_ONOFF=1;
	AL_EQUALIZER_LOW_GAIN=1;
	AL_EQUALIZER_LOW_CUTOFF=2;
	AL_EQUALIZER_MID1_GAIN=3;
	AL_EQUALIZER_MID1_CENTER=4;
	AL_EQUALIZER_MID1_WIDTH=5;
	AL_EQUALIZER_MID2_GAIN=6;
	AL_EQUALIZER_MID2_CENTER=7;
	AL_EQUALIZER_MID2_WIDTH=8;
	AL_EQUALIZER_HIGH_GAIN=9;
	AL_EQUALIZER_HIGH_CUTOFF=$A;
	AL_EFFECT_FIRST_PARAMETER=0;
	AL_EFFECT_LAST_PARAMETER=$8000;
	AL_EFFECT_TYPE=$8001;
	AL_EFFECT_NULL=0;
	AL_EFFECT_REVERB=1;
	AL_EFFECT_CHORUS=2;
	AL_EFFECT_DISTORTION=3;
	AL_EFFECT_ECHO=4;
	AL_EFFECT_FLANGER=5;
	AL_EFFECT_FREQUENCY_SHIFTER=6;
	AL_EFFECT_VOCAL_MORPHER=7;
	AL_EFFECT_PITCH_SHIFTER=8;
	AL_EFFECT_RING_MODULATOR=9;
	AL_EFFECT_AUTOWAH=$A;
	AL_EFFECT_COMPRESSOR=$B;
	AL_EFFECT_EQUALIZER=$C;
	AL_EFFECTSLOT_EFFECT=1;
	AL_EFFECTSLOT_GAIN=2;
	AL_EFFECTSLOT_AUXILIARY_SEND_AUTO=3;
	AL_EFFECTSLOT_NULL=0;
	AL_LOWPASS_GAIN=1;
	AL_LOWPASS_GAINHF=2;
	AL_HIGHPASS_GAIN=1;
	AL_HIGHPASS_GAINLF=2;
	AL_BANDPASS_GAIN=1;
	AL_BANDPASS_GAINLF=2;
	AL_BANDPASS_GAINHF=3;
	AL_FILTER_FIRST_PARAMETER=0;
	AL_FILTER_LAST_PARAMETER=$8000;
	AL_FILTER_TYPE=$8001;
	AL_FILTER_NULL=0;
	AL_FILTER_LOWPASS=1;
	AL_FILTER_HIGHPASS=2;
	AL_FILTER_BANDPASS=3;
	LOWPASS_MIN_GAIN=0;
	LOWPASS_MAX_GAIN=1.0;
	LOWPASS_DEFAULT_GAIN=1.0;
	LOWPASS_MIN_GAINHF=0;
	LOWPASS_MAX_GAINHF=1.0;
	LOWPASS_DEFAULT_GAINHF=1.0;
	HIGHPASS_MIN_GAIN=0;
	HIGHPASS_MAX_GAIN=1.0;
	HIGHPASS_DEFAULT_GAIN=1.0;
	HIGHPASS_MIN_GAINLF=0;
	HIGHPASS_MAX_GAINLF=1.0;
	HIGHPASS_DEFAULT_GAINLF=1.0;
	BANDPASS_MIN_GAIN=0;
	BANDPASS_MAX_GAIN=1.0;
	BANDPASS_DEFAULT_GAIN=1.0;
	BANDPASS_MIN_GAINHF=0;
	BANDPASS_MAX_GAINHF=1.0;
	BANDPASS_DEFAULT_GAINHF=1.0;
	BANDPASS_MIN_GAINLF=0;
	BANDPASS_MAX_GAINLF=1.0;
	BANDPASS_DEFAULT_GAINLF=1.0;
	AL_REVERB_MIN_DENSITY=0;
	AL_REVERB_MAX_DENSITY=1.0;
	AL_REVERB_DEFAULT_DENSITY=1.0;
	AL_REVERB_MIN_DIFFUSION=0;
	AL_REVERB_MAX_DIFFUSION=1.0;
	AL_REVERB_DEFAULT_DIFFUSION=1.0;
	AL_REVERB_MIN_GAIN=0;
	AL_REVERB_MAX_GAIN=1.0;
	AL_REVERB_DEFAULT_GAIN=0.32;
	AL_REVERB_MIN_GAINHF=0;
	AL_REVERB_MAX_GAINHF=1.0;
	AL_REVERB_DEFAULT_GAINHF=0.89;
	AL_REVERB_MIN_DECAY_TIME=0.1;
	AL_REVERB_MAX_DECAY_TIME=20.0;
	AL_REVERB_DEFAULT_DECAY_TIME=1.49;
	AL_REVERB_MIN_DECAY_HFRATIO=0.1;
	AL_REVERB_MAX_DECAY_HFRATIO=2.0;
	AL_REVERB_DEFAULT_DECAY_HFRATIO=0.83;
	AL_REVERB_MIN_REFLECTIONS_GAIN=0;
	AL_REVERB_MAX_REFLECTIONS_GAIN=3.16;
	AL_REVERB_DEFAULT_REFLECTIONS_GAIN=0.05;
	AL_REVERB_MIN_REFLECTIONS_DELAY=0;
	AL_REVERB_MAX_REFLECTIONS_DELAY=0.3;
	AL_REVERB_DEFAULT_REFLECTIONS_DELAY=0.007;
	AL_REVERB_MIN_LATE_REVERB_GAIN=0;
	AL_REVERB_MAX_LATE_REVERB_GAIN=10.0;
	AL_REVERB_DEFAULT_LATE_REVERB_GAIN=1.26;
	AL_REVERB_MIN_LATE_REVERB_DELAY=0;
	AL_REVERB_MAX_LATE_REVERB_DELAY=0.1;
	AL_REVERB_DEFAULT_LATE_REVERB_DELAY=0.011;
	AL_REVERB_MIN_AIR_ABSORPTION_GAINHF=0.892;
	AL_REVERB_MAX_AIR_ABSORPTION_GAINHF=1.0;
	AL_REVERB_DEFAULT_AIR_ABSORPTION_GAINHF=0.994;
	AL_REVERB_MIN_ROOM_ROLLOFF_FACTOR=0;
	AL_REVERB_MAX_ROOM_ROLLOFF_FACTOR=10.0;
	AL_REVERB_DEFAULT_ROOM_ROLLOFF_FACTOR=0;
	AL_REVERB_MIN_DECAY_HFLIMIT=0;
	AL_REVERB_MAX_DECAY_HFLIMIT=1;
	AL_REVERB_DEFAULT_DECAY_HFLIMIT=1;
	AL_CHORUS_MIN_WAVEFORM=0;
	AL_CHORUS_MAX_WAVEFORM=1;
	AL_CHORUS_DEFAULT_WAVEFORM=1;
	AL_CHORUS_WAVEFORM_SINUSOID=0;
	AL_CHORUS_WAVEFORM_TRIANGLE=1;
	AL_CHORUS_MIN_PHASE=-180;
	AL_CHORUS_MAX_PHASE=180;
	AL_CHORUS_DEFAULT_PHASE=90;
	AL_CHORUS_MIN_RATE=0;
	AL_CHORUS_MAX_RATE=10.0;
	AL_CHORUS_DEFAULT_RATE=1.1;
	AL_CHORUS_MIN_DEPTH=0;
	AL_CHORUS_MAX_DEPTH=1.0;
	AL_CHORUS_DEFAULT_DEPTH=0.1;
	AL_CHORUS_MIN_FEEDBACK=-1.0;
	AL_CHORUS_MAX_FEEDBACK=1.0;
	AL_CHORUS_DEFAULT_FEEDBACK=0.25;
	AL_CHORUS_MIN_DELAY=0;
	AL_CHORUS_MAX_DELAY=0.016;
	AL_CHORUS_DEFAULT_DELAY=0.016;
	AL_DISTORTION_MIN_EDGE=0;
	AL_DISTORTION_MAX_EDGE=1.0;
	AL_DISTORTION_DEFAULT_EDGE=0.2;
	AL_DISTORTION_MIN_GAIN=0.01;
	AL_DISTORTION_MAX_GAIN=1.0;
	AL_DISTORTION_DEFAULT_GAIN=0.05;
	AL_DISTORTION_MIN_LOWPASS_CUTOFF=80.0;
	AL_DISTORTION_MAX_LOWPASS_CUTOFF=24000.0;
	AL_DISTORTION_DEFAULT_LOWPASS_CUTOFF=8000.0;
	AL_DISTORTION_MIN_EQCENTER=80.0;
	AL_DISTORTION_MAX_EQCENTER=24000.0;
	AL_DISTORTION_DEFAULT_EQCENTER=3600.0;
	AL_DISTORTION_MIN_EQBANDWIDTH=80.0;
	AL_DISTORTION_MAX_EQBANDWIDTH=24000.0;
	AL_DISTORTION_DEFAULT_EQBANDWIDTH=3600.0;
	AL_ECHO_MIN_DELAY=0;
	AL_ECHO_MAX_DELAY=0.207;
	AL_ECHO_DEFAULT_DELAY=0.1;
	AL_ECHO_MIN_LRDELAY=0;
	AL_ECHO_MAX_LRDELAY=0.404;
	AL_ECHO_DEFAULT_LRDELAY=0.1;
	AL_ECHO_MIN_DAMPING=0;
	AL_ECHO_MAX_DAMPING=0.99;
	AL_ECHO_DEFAULT_DAMPING=0.5;
	AL_ECHO_MIN_FEEDBACK=0;
	AL_ECHO_MAX_FEEDBACK=1.0;
	AL_ECHO_DEFAULT_FEEDBACK=0.5;
	AL_ECHO_MIN_SPREAD=-1.0;
	AL_ECHO_MAX_SPREAD=1.0;
	AL_ECHO_DEFAULT_SPREAD=-1.0;
	AL_FLANGER_MIN_WAVEFORM=0;
	AL_FLANGER_MAX_WAVEFORM=1;
	AL_FLANGER_DEFAULT_WAVEFORM=1;
	AL_FLANGER_WAVEFORM_SINUSOID=0;
	AL_FLANGER_WAVEFORM_TRIANGLE=1;
	AL_FLANGER_MIN_PHASE=-180;
	AL_FLANGER_MAX_PHASE=180;
	AL_FLANGER_DEFAULT_PHASE=0;
	AL_FLANGER_MIN_RATE=0;
	AL_FLANGER_MAX_RATE=10.0;
	AL_FLANGER_DEFAULT_RATE=0.27;
	AL_FLANGER_MIN_DEPTH=0;
	AL_FLANGER_MAX_DEPTH=1.0;
	AL_FLANGER_DEFAULT_DEPTH=1.0;
	AL_FLANGER_MIN_FEEDBACK=-1.0;
	AL_FLANGER_MAX_FEEDBACK=1.0;
	AL_FLANGER_DEFAULT_FEEDBACK=-0.5;
	AL_FLANGER_MIN_DELAY=0;
	AL_FLANGER_MAX_DELAY=0.004;
	AL_FLANGER_DEFAULT_DELAY=0.002;
	AL_FREQUENCY_SHIFTER_MIN_FREQUENCY=0;
	AL_FREQUENCY_SHIFTER_MAX_FREQUENCY=24000.0;
	AL_FREQUENCY_SHIFTER_DEFAULT_FREQUENCY=0;
	AL_FREQUENCY_SHIFTER_MIN_LEFT_DIRECTION=0;
	AL_FREQUENCY_SHIFTER_MAX_LEFT_DIRECTION=2;
	AL_FREQUENCY_SHIFTER_DEFAULT_LEFT_DIRECTION=0;
	AL_FREQUENCY_SHIFTER_MIN_RIGHT_DIRECTION=0;
	AL_FREQUENCY_SHIFTER_MAX_RIGHT_DIRECTION=2;
	AL_FREQUENCY_SHIFTER_DEFAULT_RIGHT_DIRECTION=0;
	AL_FREQUENCY_SHIFTER_DIRECTION_DOWN=0;
	AL_FREQUENCY_SHIFTER_DIRECTION_UP=1;
	AL_FREQUENCY_SHIFTER_DIRECTION_OFF=2;
	AL_VOCAL_MORPHER_MIN_PHONEMEA=0;
	AL_VOCAL_MORPHER_MAX_PHONEMEA=29;
	AL_VOCAL_MORPHER_DEFAULT_PHONEMEA=0;
	AL_VOCAL_MORPHER_MIN_PHONEMEA_COARSE_TUNING=-24;
	AL_VOCAL_MORPHER_MAX_PHONEMEA_COARSE_TUNING=24;
	AL_VOCAL_MORPHER_DEFAULT_PHONEMEA_COARSE_TUNING=0;
	AL_VOCAL_MORPHER_MIN_PHONEMEB=0;
	AL_VOCAL_MORPHER_MAX_PHONEMEB=29;
	AL_VOCAL_MORPHER_DEFAULT_PHONEMEB=10;
	AL_VOCAL_MORPHER_PHONEME_A=0;
	AL_VOCAL_MORPHER_PHONEME_E=1;
	AL_VOCAL_MORPHER_PHONEME_I=2;
	AL_VOCAL_MORPHER_PHONEME_O=3;
	AL_VOCAL_MORPHER_PHONEME_U=4;
	AL_VOCAL_MORPHER_PHONEME_AA=5;
	AL_VOCAL_MORPHER_PHONEME_AE=6;
	AL_VOCAL_MORPHER_PHONEME_AH=7;
	AL_VOCAL_MORPHER_PHONEME_AO=8;
	AL_VOCAL_MORPHER_PHONEME_EH=9;
	AL_VOCAL_MORPHER_PHONEME_ER=10;
	AL_VOCAL_MORPHER_PHONEME_IH=11;
	AL_VOCAL_MORPHER_PHONEME_IY=12;
	AL_VOCAL_MORPHER_PHONEME_UH=13;
	AL_VOCAL_MORPHER_PHONEME_UW=14;
	AL_VOCAL_MORPHER_PHONEME_B=15;
	AL_VOCAL_MORPHER_PHONEME_D=16;
	AL_VOCAL_MORPHER_PHONEME_F=17;
	AL_VOCAL_MORPHER_PHONEME_G=18;
	AL_VOCAL_MORPHER_PHONEME_J=19;
	AL_VOCAL_MORPHER_PHONEME_K=20;
	AL_VOCAL_MORPHER_PHONEME_L=21;
	AL_VOCAL_MORPHER_PHONEME_M=22;
	AL_VOCAL_MORPHER_PHONEME_N=23;
	AL_VOCAL_MORPHER_PHONEME_P=24;
	AL_VOCAL_MORPHER_PHONEME_R=25;
	AL_VOCAL_MORPHER_PHONEME_S=26;
	AL_VOCAL_MORPHER_PHONEME_T=27;
	AL_VOCAL_MORPHER_PHONEME_V=28;
	AL_VOCAL_MORPHER_PHONEME_Z=29;
	AL_VOCAL_MORPHER_MIN_PHONEMEB_COARSE_TUNING=-24;
	AL_VOCAL_MORPHER_MAX_PHONEMEB_COARSE_TUNING=24;
	AL_VOCAL_MORPHER_DEFAULT_PHONEMEB_COARSE_TUNING=0;
	AL_VOCAL_MORPHER_MIN_WAVEFORM=0;
	AL_VOCAL_MORPHER_MAX_WAVEFORM=2;
	AL_VOCAL_MORPHER_DEFAULT_WAVEFORM=0;
	AL_VOCAL_MORPHER_WAVEFORM_SINUSOID=0;
	AL_VOCAL_MORPHER_WAVEFORM_TRIANGLE=1;
	AL_VOCAL_MORPHER_WAVEFORM_SAWTOOTH=2;
	AL_VOCAL_MORPHER_MIN_RATE=0;
	AL_VOCAL_MORPHER_MAX_RATE=10.0;
	AL_VOCAL_MORPHER_DEFAULT_RATE=1.41;
	AL_PITCH_SHIFTER_MIN_COARSE_TUNE=-12;
	AL_PITCH_SHIFTER_MAX_COARSE_TUNE=12;
	AL_PITCH_SHIFTER_DEFAULT_COARSE_TUNE=12;
	AL_PITCH_SHIFTER_MIN_FINE_TUNE=-50;
	AL_PITCH_SHIFTER_MAX_FINE_TUNE=50;
	AL_PITCH_SHIFTER_DEFAULT_FINE_TUNE=0;
	AL_RING_MODULATOR_MIN_FREQUENCY=0;
	AL_RING_MODULATOR_MAX_FREQUENCY=8000.0;
	AL_RING_MODULATOR_DEFAULT_FREQUENCY=440.0;
	AL_RING_MODULATOR_MIN_HIGHPASS_CUTOFF=0;
	AL_RING_MODULATOR_MAX_HIGHPASS_CUTOFF=24000.0;
	AL_RING_MODULATOR_DEFAULT_HIGHPASS_CUTOFF=800.0;
	AL_RING_MODULATOR_MIN_WAVEFORM=0;
	AL_RING_MODULATOR_MAX_WAVEFORM=2;
	AL_RING_MODULATOR_DEFAULT_WAVEFORM=0;
	AL_RING_MODULATOR_SINUSOID=0;
	AL_RING_MODULATOR_SAWTOOTH=1;
	AL_RING_MODULATOR_SQUARE=2;
	AL_AUTOWAH_MIN_ATTACK_TIME=0.0001;
	AL_AUTOWAH_MAX_ATTACK_TIME=1.0;
	AL_AUTOWAH_DEFAULT_ATTACK_TIME=0.06;
	AL_AUTOWAH_MIN_RELEASE_TIME=0.0001;
	AL_AUTOWAH_MAX_RELEASE_TIME=1.0;
	AL_AUTOWAH_DEFAULT_RELEASE_TIME=0.06;
	AL_AUTOWAH_MIN_RESONANCE=2.0;
	AL_AUTOWAH_MAX_RESONANCE=1000.0;
	AL_AUTOWAH_DEFAULT_RESONANCE=1000.0;
	AL_AUTOWAH_MIN_PEAK_GAIN=0.00003;
	AL_AUTOWAH_MAX_PEAK_GAIN=31621.0;
	AL_AUTOWAH_DEFAULT_PEAK_GAIN=11.22;
	AL_COMPRESSOR_MIN_ONOFF=0;
	AL_COMPRESSOR_MAX_ONOFF=1;
	AL_COMPRESSOR_DEFAULT_ONOFF=1;
	AL_EQUALIZER_MIN_LOW_GAIN=0.126;
	AL_EQUALIZER_MAX_LOW_GAIN=7.943;
	AL_EQUALIZER_DEFAULT_LOW_GAIN=1.0;
	AL_EQUALIZER_MIN_LOW_CUTOFF=50.0;
	AL_EQUALIZER_MAX_LOW_CUTOFF=800.0;
	AL_EQUALIZER_DEFAULT_LOW_CUTOFF=200.0;
	AL_EQUALIZER_MIN_MID1_GAIN=0.126;
	AL_EQUALIZER_MAX_MID1_GAIN=7.943;
	AL_EQUALIZER_DEFAULT_MID1_GAIN=1.0;
	AL_EQUALIZER_MIN_MID1_CENTER=200.0;
	AL_EQUALIZER_MAX_MID1_CENTER=3000.0;
	AL_EQUALIZER_DEFAULT_MID1_CENTER=500.0;
	AL_EQUALIZER_MIN_MID1_WIDTH=0.01;
	AL_EQUALIZER_MAX_MID1_WIDTH=1.0;
	AL_EQUALIZER_DEFAULT_MID1_WIDTH=1.0;
	AL_EQUALIZER_MIN_MID2_GAIN=0.126;
	AL_EQUALIZER_MAX_MID2_GAIN=7.943;
	AL_EQUALIZER_DEFAULT_MID2_GAIN=1.0;
	AL_EQUALIZER_MIN_MID2_CENTER=1000.0;
	AL_EQUALIZER_MAX_MID2_CENTER=8000.0;
	AL_EQUALIZER_DEFAULT_MID2_CENTER=3000.0;
	AL_EQUALIZER_MIN_MID2_WIDTH=0.01;
	AL_EQUALIZER_MAX_MID2_WIDTH=1.0;
	AL_EQUALIZER_DEFAULT_MID2_WIDTH=1.0;
	AL_EQUALIZER_MIN_HIGH_GAIN=0.126;
	AL_EQUALIZER_MAX_HIGH_GAIN=7.943;
	AL_EQUALIZER_DEFAULT_HIGH_GAIN=1.0;
	AL_EQUALIZER_MIN_HIGH_CUTOFF=4000.0;
	AL_EQUALIZER_MAX_HIGH_CUTOFF=16000.0;
	AL_EQUALIZER_DEFAULT_HIGH_CUTOFF=6000.0;
	AL_MIN_AIR_ABSORPTION_FACTOR=0;
	AL_MAX_AIR_ABSORPTION_FACTOR=10.0;
	AL_DEFAULT_AIR_ABSORPTION_FACTOR=0;
	AL_MIN_ROOM_ROLLOFF_FACTOR=0;
	AL_MAX_ROOM_ROLLOFF_FACTOR=10.0;
	AL_DEFAULT_ROOM_ROLLOFF_FACTOR=0;
	AL_MIN_CONE_OUTER_GAINHF=0;
	AL_MAX_CONE_OUTER_GAINHF=1.0;
	AL_DEFAULT_CONE_OUTER_GAINHF=1.0;
	AL_MIN_DIRECT_FILTER_GAINHF_AUTO=0;
	AL_MAX_DIRECT_FILTER_GAINHF_AUTO=1;
	AL_DEFAULT_DIRECT_FILTER_GAINHF_AUTO=1;
	AL_MIN_AUXILIARY_SEND_FILTER_GAIN_AUTO=0;
	AL_MAX_AUXILIARY_SEND_FILTER_GAIN_AUTO=1;
	AL_DEFAULT_AUXILIARY_SEND_FILTER_GAIN_AUTO=1;
	AL_MIN_AUXILIARY_SEND_FILTER_GAINHF_AUTO=0;
	AL_MAX_AUXILIARY_SEND_FILTER_GAINHF_AUTO=1;
	AL_DEFAULT_AUXILIARY_SEND_FILTER_GAINHF_AUTO=1;
	AL_MIN_METERS_PER_UNIT=0.00000001;
	AL_MAX_METERS_PER_UNIT=99999999.9;
	AL_DEFAULT_METERS_PER_UNIT=1.0;
	AL_EAXREVERB_DENSITY=1;
	AL_EAXREVERB_DIFFUSION=2;
	AL_EAXREVERB_GAIN=3;
	AL_EAXREVERB_GAINHF=4;
	AL_EAXREVERB_GAINLF=5;
	AL_EAXREVERB_DECAY_TIME=6;
	AL_EAXREVERB_DECAY_HFRATIO=7;
	AL_EAXREVERB_DECAY_LFRATIO=8;
	AL_EAXREVERB_REFLECTIONS_GAIN=9;
	AL_EAXREVERB_REFLECTIONS_DELAY=$A;
	AL_EAXREVERB_REFLECTIONS_PAN=$B;
	AL_EAXREVERB_LATE_REVERB_GAIN=$C;
	AL_EAXREVERB_LATE_REVERB_DELAY=$D;
	AL_EAXREVERB_LATE_REVERB_PAN=$E;
	AL_EAXREVERB_ECHO_TIME=$F;
	AL_EAXREVERB_ECHO_DEPTH=$10;
	AL_EAXREVERB_MODULATION_TIME=$11;
	AL_EAXREVERB_MODULATION_DEPTH=$12;
	AL_EAXREVERB_AIR_ABSORPTION_GAINHF=$13;
	AL_EAXREVERB_HFREFERENCE=$14;
	AL_EAXREVERB_LFREFERENCE=$15;
	AL_EAXREVERB_ROOM_ROLLOFF_FACTOR=$16;
	AL_EAXREVERB_DECAY_HFLIMIT=$17;
	AL_EFFECT_EAXREVERB=$8000;
	AL_EAXREVERB_MIN_DENSITY=0;
	AL_EAXREVERB_MAX_DENSITY=1.0;
	AL_EAXREVERB_DEFAULT_DENSITY=1.0;
	AL_EAXREVERB_MIN_DIFFUSION=0;
	AL_EAXREVERB_MAX_DIFFUSION=1.0;
	AL_EAXREVERB_DEFAULT_DIFFUSION=1.0;
	AL_EAXREVERB_MIN_GAIN=0;
	AL_EAXREVERB_MAX_GAIN=1.0;
	AL_EAXREVERB_DEFAULT_GAIN=0.32;
	AL_EAXREVERB_MIN_GAINHF=0;
	AL_EAXREVERB_MAX_GAINHF=1.0;
	AL_EAXREVERB_DEFAULT_GAINHF=0.89;
	AL_EAXREVERB_MIN_GAINLF=0;
	AL_EAXREVERB_MAX_GAINLF=1.0;
	AL_EAXREVERB_DEFAULT_GAINLF=1.0;
	AL_EAXREVERB_MIN_DECAY_TIME=0.1;
	AL_EAXREVERB_MAX_DECAY_TIME=20.0;
	AL_EAXREVERB_DEFAULT_DECAY_TIME=1.49;
	AL_EAXREVERB_MIN_DECAY_HFRATIO=0.1;
	AL_EAXREVERB_MAX_DECAY_HFRATIO=2.0;
	AL_EAXREVERB_DEFAULT_DECAY_HFRATIO=0.83;
	AL_EAXREVERB_MIN_DECAY_LFRATIO=0.1;
	AL_EAXREVERB_MAX_DECAY_LFRATIO=2.0;
	AL_EAXREVERB_DEFAULT_DECAY_LFRATIO=1.0;
	AL_EAXREVERB_MIN_REFLECTIONS_GAIN=0;
	AL_EAXREVERB_MAX_REFLECTIONS_GAIN=3.16;
	AL_EAXREVERB_DEFAULT_REFLECTIONS_GAIN=0.05;
	AL_EAXREVERB_MIN_REFLECTIONS_DELAY=0;
	AL_EAXREVERB_MAX_REFLECTIONS_DELAY=0.3;
	AL_EAXREVERB_DEFAULT_REFLECTIONS_DELAY=0.007;
	AL_EAXREVERB_MIN_LATE_REVERB_GAIN=0;
	AL_EAXREVERB_MAX_LATE_REVERB_GAIN=10.0;
	AL_EAXREVERB_DEFAULT_LATE_REVERB_GAIN=1.26;
	AL_EAXREVERB_MIN_LATE_REVERB_DELAY=0;
	AL_EAXREVERB_MAX_LATE_REVERB_DELAY=0.1;
	AL_EAXREVERB_DEFAULT_LATE_REVERB_DELAY=0.011;
	AL_EAXREVERB_MIN_ECHO_TIME=0.075;
	AL_EAXREVERB_MAX_ECHO_TIME=0.25;
	AL_EAXREVERB_DEFAULT_ECHO_TIME=0.25;
	AL_EAXREVERB_MIN_ECHO_DEPTH=0;
	AL_EAXREVERB_MAX_ECHO_DEPTH=1.0;
	AL_EAXREVERB_DEFAULT_ECHO_DEPTH=0;
	AL_EAXREVERB_MIN_MODULATION_TIME=0.04;
	AL_EAXREVERB_MAX_MODULATION_TIME=4.0;
	AL_EAXREVERB_DEFAULT_MODULATION_TIME=0.25;
	AL_EAXREVERB_MIN_MODULATION_DEPTH=0;
	AL_EAXREVERB_MAX_MODULATION_DEPTH=1.0;
	AL_EAXREVERB_DEFAULT_MODULATION_DEPTH=0;
	AL_EAXREVERB_MIN_AIR_ABSORPTION_GAINHF=0.892;
	AL_EAXREVERB_MAX_AIR_ABSORPTION_GAINHF=1.0;
	AL_EAXREVERB_DEFAULT_AIR_ABSORPTION_GAINHF=0.994;
	AL_EAXREVERB_MIN_HFREFERENCE=1000.0;
	AL_EAXREVERB_MAX_HFREFERENCE=20000.0;
	AL_EAXREVERB_DEFAULT_HFREFERENCE=5000.0;
	AL_EAXREVERB_MIN_LFREFERENCE=20.0;
	AL_EAXREVERB_MAX_LFREFERENCE=1000.0;
	AL_EAXREVERB_DEFAULT_LFREFERENCE=250.0;
	AL_EAXREVERB_MIN_ROOM_ROLLOFF_FACTOR=0;
	AL_EAXREVERB_MAX_ROOM_ROLLOFF_FACTOR=10.0;
	AL_EAXREVERB_DEFAULT_ROOM_ROLLOFF_FACTOR=0;
	AL_EAXREVERB_MIN_DECAY_HFLIMIT=0;
	AL_EAXREVERB_MAX_DECAY_HFLIMIT=1;
	AL_EAXREVERB_DEFAULT_DECAY_HFLIMIT=1;

procedure alGenBuffers(n:ALsizei;buffers:PALuint); cdecl; external name 'alGenBuffers';
procedure alDeleteBuffers(n:ALsizei;buffers:PALuint); cdecl; external name 'alDeleteBuffers';
function alIsBuffer(buffer:ALuint):ALboolean; cdecl; external name 'alIsBuffer';
procedure alBufferData(buffer:ALuint;format:ALenum;data:Pointer;size,freq:ALsizei); cdecl; external name 'alBufferData';
procedure alBufferf(buffer:ALuint;param:ALenum;value:ALfloat); cdecl; external name 'alBufferf';
procedure alBuffer3f(buffer:ALuint;param:ALenum;v1,v2,v3:ALfloat); cdecl; external name 'alBuffer3f';
procedure alBufferfv(buffer:ALuint;param:ALenum;values:PALfloat); cdecl; external name 'alBufferfv';
procedure alBufferi(buffer:ALuint;param:ALenum;value:ALint); cdecl; external name 'alBufferi';
procedure alBuffer3i(buffer:ALuint;param:ALenum;v1,v2,v3:ALint); cdecl; external name 'alBuffer3i';
procedure alBufferiv(buffer:ALuint;param:ALenum;values:PALint); cdecl; external name 'alBufferiv';
procedure alGetBufferf(buffer:ALuint;pname:ALenum;value:PALfloat); cdecl; external name 'alGetBufferf';
procedure alGetBuffer3f(buffer:ALuint;pname:ALenum;v1,v2,v3:PALfloat); cdecl; external name 'alGetBuffer3f';
procedure alGetBufferfv(buffer:ALuint;pname:ALenum;values:PALfloat); cdecl; external name 'alGetBufferfv';
procedure alGetBufferi(buffer:ALuint;pname:ALenum;value:PALint); cdecl; external name 'alGetBufferi';
procedure alGetBuffer3i(buffer:ALuint;pname:ALenum;v1,v2,v3:PALint); cdecl; external name 'alGetBuffer3i';
procedure alGetBufferiv(buffer:ALuint;pname:ALenum;values:PALint); cdecl; external name 'alGetBufferiv';
procedure alGenSources(n:ALsizei;sources:PALuint); cdecl; external name 'alGenSources';
procedure alDeleteSources(n:ALsizei;sources:PALuint); cdecl; external name 'alDeleteSources';
function alIsSource(source:ALuint):ALboolean; cdecl; external name 'alIsSource';
procedure alSourcef(source:ALuint;param:ALenum;value:ALfloat); cdecl; external name 'alSourcef';
procedure alSource3f(source:ALuint;param:ALenum;v1,v2,v3:ALfloat); cdecl; external name 'alSource3f';
procedure alSourcefv(source:ALuint;param:ALenum;values:PALfloat); cdecl; external name 'alSourcefv';
procedure alSourcei(source:ALuint;param:ALenum;value:ALint); cdecl; external name 'alSourcei';
procedure alSource3i(source:ALuint;param:ALenum;v1,v2,v3:ALint); cdecl; external name 'alSource3i';
procedure alSourceiv(source:ALuint;param:ALenum;values:PALint); cdecl; external name 'alSourceiv';
procedure alGetSourcef(source:ALuint;pname:ALenum;value:PALfloat); cdecl; external name 'alGetSourcef';
procedure alGetSource3f(source:ALuint;pname:ALenum;v1,v2,v3:PALfloat); cdecl; external name 'alGetSource3f';
procedure alGetSourcefv(source:ALuint;pname:ALenum;values:PALfloat); cdecl; external name 'alGetSourcefv';
procedure alGetSourcei(source:ALuint;pname:ALenum;value:PALint); cdecl; external name 'alGetSourcei';
procedure alGetSource3i(source:ALuint;pname:ALenum;v1,v2,v3:PALint); cdecl; external name 'alGetSource3i';
procedure alGetSourceiv(source:ALuint;pname:ALenum;values:PALint); cdecl; external name 'alGetSourceiv';
procedure alSourcePlay(source:ALuint); cdecl; external name 'alSourcePlay';
procedure alSourcePlayv(n:ALsizei;sources:PALuint); cdecl; external name 'alSourcePlayv';
procedure alSourcePause(source:ALuint); cdecl; external name 'alSourcePause';
procedure alSourcePausev(n:ALsizei;sources:PALuint); cdecl; external name 'alSourcePausev';
procedure alSourceStop(source:ALuint); cdecl; external name 'alSourceStop';
procedure alSourceStopv(n:ALsizei;sources:PALuint); cdecl; external name 'alSourceStopv';
procedure alSourceRewind(source:ALuint); cdecl; external name 'alSourceRewind';
procedure alSourceRewindv(n:ALsizei;sources:PALuint); cdecl; external name 'alSourceRewindv';
procedure alSourceQueueBuffers(source:ALuint;n:ALsizei;buffers:PALuint); cdecl; external name 'alSourceQueueBuffers';
procedure alSourceUnqueueBuffers(source:ALuint;n:ALsizei;buffers:PALuint); cdecl; external name 'alSourceUnqueueBuffers';
procedure alListenerf(param:ALenum;value:ALfloat); cdecl; external name 'alListenerf';
procedure alListener3f(param:ALenum;v1,v2,v3:ALfloat); cdecl; external name 'alListener3f';
procedure alListenerfv(param:ALenum;values:PALfloat); cdecl; external name 'alListenerfv';
procedure alListeneri(param:ALenum;value:ALint); cdecl; external name 'alListeneri';
procedure alListener3i(param:ALenum;v1,v2,v3:ALint); cdecl; external name 'alListener3i';
procedure alListeneriv(param:ALenum;values:PALint); cdecl; external name 'alListeneriv';
procedure alGetListenerf(pname:ALenum;value:PALfloat); cdecl; external name 'alGetListenerf';
procedure alGetListener3f(pname:ALenum;v1,v2,v3:PALfloat); cdecl; external name 'alGetListener3f';
procedure alGetListenerfv(pname:ALenum;values:PALfloat); cdecl; external name 'alGetListenerfv';
procedure alGetListeneri(pname:ALenum;value:PALint); cdecl; external name 'alGetListeneri';
procedure alGetListener3i(pname:ALenum;v1,v2,v3:PALint); cdecl; external name 'alGetListener3i';
procedure alGetListeneriv(pname:ALenum;values:PALint); cdecl; external name 'alGetListeneriv';
procedure alEnable(capability:ALenum); cdecl; external name 'alEnable';
procedure alDisable(capability:ALenum); cdecl; external name 'alDisable';
function alIsEnabled(capability:ALenum):ALboolean; cdecl; external name 'alIsEnabled';
function alGetBoolean(pname:ALenum):ALboolean; cdecl; external name 'alGetBoolean';
function alGetDouble(pname:ALenum):ALdouble; cdecl; external name 'alGetDouble';
function alGetFloat(pname:ALenum):ALfloat; cdecl; external name 'alGetFloat';
function alGetInteger(pname:ALenum):ALint; cdecl; external name 'alGetInteger';
procedure alGetBooleanv(pname:ALenum;data:PALboolean); cdecl; external name 'alGetBooleanv';
procedure alGetDoublev(pname:ALenum;data:PALdouble); cdecl; external name 'alGetDoublev';
procedure alGetFloatv(pname:ALenum;data:PALfloat); cdecl; external name 'alGetFloatv';
procedure alGetIntegerv(pname:ALenum;data:PALint); cdecl; external name 'alGetIntegerv';
function alGetString(pname:ALenum):PChar; cdecl; external name 'alGetString';
procedure alDistanceModel(value:ALenum); cdecl; external name 'alDistanceModel';
procedure alDopplerFactor(value:ALfloat); cdecl; external name 'alDopplerFactor';
procedure alDopplerVelocity(value:ALfloat); cdecl; external name 'alDopplerVelocity'; { Deprecated in v1.1: use alSpeedOfSound instead! }
procedure alSpeedOfSound(value:ALfloat); cdecl; external name 'alSpeedOfSound';
function alGetError:ALenum; cdecl; external name 'alGetError';
function alIsExtensionPresent(extname:PChar):ALboolean; cdecl; external name 'alIsExtensionPresent';
function alGetProcAddress(fname:PChar):Pointer; cdecl; external name 'alGetProcAddress';
function alGetEnumValue(ename:PChar):ALenum; cdecl; external name 'alGetEnumValue';
function alcCreateContext(device:PALCdevice;attrlist:PALCint):PALCcontext; cdecl; external name 'alcCreateContext';
function alcMakeContextCurrent(context:PALCcontext):ALCboolean; cdecl; external name 'alcMakeContextCurrent';
procedure alcProcessContext(context:PALCcontext); cdecl; external name 'alcProcessContext';
procedure alcSuspendContext(context:PALCcontext); cdecl; external name 'alcSuspendContext';
procedure alcDestroyContext(context:PALCcontext); cdecl; external name 'alcDestroyContext';
function alcGetCurrentContext:PALCcontext; cdecl; external name 'alcGetCurrentContext';
function alcGetContextsDevice(context:PALCcontext):PALCdevice; cdecl; external name 'alcGetContextsDevice';
function alcGetError(device:ALCdevice):ALCenum; cdecl; external name 'alcGetError';
function alcOpenDevice(devicename:PChar):PALCdevice; cdecl; external name 'alcOpenDevice';
function alcCloseDevice(device:PALCdevice):ALCboolean; cdecl; external name 'alcCloseDevice';
function alcIsExtensionPresent(device:PALCdevice;extname:PChar):ALCboolean; cdecl; external name 'alcIsExtensionPresent';
function alcGetProcAddress(device:PALCdevice;fname:PChar):Pointer; cdecl; external name 'alcGetProcAddress';
function alcGetEnumValue(device:PALCdevice;ename:PChar):ALCenum; cdecl; external name 'alcGetEnumValue';
function alcGetString(device:PALCdevice;param:ALCenum):PChar; cdecl; external name 'alcGetString';
procedure alcGetIntegerv(device:PALCdevice;param:ALCenum;size:ALCsizei;data:PALCint); cdecl; external name 'alcGetIntegerv';
function alcCaptureOpenDevice(devicename:PChar;frequency:ALCuint;format:ALCenum;buffersize:ALCsizei):PALCdevice; cdecl; external name 'alcCaptureOpenDevice';
function alcCaptureCloseDevice(device:PALCdevice):ALCboolean; cdecl; external name 'alcCaptureCloseDevice';
procedure alcCaptureStart(device:PALCdevice); cdecl; external name 'alcCaptureStart';
procedure alcCaptureStop(device:PALCdevice); cdecl; external name 'alcCaptureStop';
procedure alcCaptureSamples(device:PALCdevice;buffer:Pointer;samples:ALCsizei); cdecl; external name 'alcCaptureSamples';
{$LinkLib openal}

implementation
end.
