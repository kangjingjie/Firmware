
px4_add_board(
	PLATFORM nuttx
	VENDOR px4
	MODEL fmu-v2
	LABEL lpe
	TOOLCHAIN arm-none-eabi
	ARCHITECTURE cortex-m4
	ROMFSROOT px4fmu_common
	BOOTLOADER ${PX4_SOURCE_DIR}/ROMFS/px4fmu_common/extras/px4fmuv3_bl.bin
	IO px4_io-v2_default
	#TESTING
	#UAVCAN_INTERFACES 2

	SERIAL_PORTS
		GPS1:/dev/ttyS0
		TEL1:/dev/ttyS1
		TEL2:/dev/ttyS2
		TEL4:/dev/ttyS3

	DRIVERS
		#actuators/mkblctrl
		#actuators/pca9685
		actuators/pwm_out_sim
		actuators/px4fmu
		actuators/px4io
		#actuators/tap_esc
		#barometer # all available barometer drivers
		barometer/ms5611
		#batt_smbus
		camera_trigger
		#differential_pressure # all available differential pressure drivers
		distance_sensor # all available distance sensor drivers
		gps
		#heater
		#imu/adis16448
		#imu # all available imu drivers
		imu/l3gd20
		imu/lsm303d
		imu/mpu6000
		#imu/mpu9250
		#iridiumsbd
		irlock
		#lights/blinkm
		#lights/oreoled
		lights/rgbled
		#magnetometer # all available magnetometer drivers
		magnetometer/hmc5883
		#protocol_splitter
		#pwm_input
		stm32
		stm32/adc
		stm32/tone_alarm
		#telemetry # all available telemetry drivers
		#test_ppm
		#uavcan

	MODULES
		attitude_estimator_q
		camera_feedback
		commander
		dataman
		#ekf2
		events
		#fw_att_control
		#fw_pos_control_l1
		#gnd_att_control
		#gnd_pos_control
		#gpio_led
		land_detector
		landing_target_estimator
		load_mon
		local_position_estimator
		logger
		mavlink
		mc_att_control
		mc_pos_control
		navigator
		#position_estimator_inav
		sensors
		vmount
		#vtol_att_control
		#wind_estimator

	SYSTEMCMDS
		bl_update
		#config
		#dumpfile
		#esc_calib
		hardfault_log
		#led_control
		mixer
		#motor_ramp
		motor_test
		mtd
		#nshterm
		param
		perf
		pwm
		reboot
		#sd_bench
		#tests # tests and test runner
		top
		#topic_listener
		tune_control
		ver

	EXAMPLES
		#bottle_drop # OBC challenge
		#fixedwing_control # Tutorial code from https://px4.io/dev/example_fixedwing_control
		#hello
		#hwtest # Hardware test
		#px4_mavlink_debug # Tutorial code from https://px4.io/dev/debug_values
		#px4_simple_app # Tutorial code from https://px4.io/dev/px4_simple_app
		#rover_steering_control # Rover example app
		#segway
	)
