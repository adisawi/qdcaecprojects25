hello, world! :>

## outline

### 1. quadrature down converter
- why do we use it
- how does it work (vaguely)
	- qf if thing
	- equations
	- [fig] diagram

### 1.5 bonus question (not mandatory)
- explain utility/need of quadrature operation

### 2. quadrature oscillator
- what does it do: produce two sinusoidal signals with 90 phase difference
- how does it work
	- barkhausen criterion (why?)
	- two integrators (inverting + non-inverting)
		- [fig] inverting integrator = negative feedback + caps
		- [fig] non-inverting integrator = difference amp + caps
	- how does this satisfy barkhausen
	- why does it not grow to infinity: non-linear clamping due to saturation
	- why is it weird and triangular: shit opamp
		- finite open-loop gain (decreases with increase in freq (bad))
		- too small slew-rate (not enough for 100kHz)
	- [fig] the whole circuit
	- so we choose RC for 265kHz, get 100kHz
	- [plot] sine and cosine transient
	- [plot] phase difference 90 through fft

### 3. mixer
- what does it do: (((multiply))) two signals (technically just "imbibing" freq of one into another)
- how does it work
	- operation regions (biased at threshold): cutoff and triode
	- [fig] diagram
	- relevant equations
	- [plots] for each fin

### 4. low pass filter
- what does it do: attenuate freq after cutoff
- how does it work:
	- low freq stays, high freq leaves
- design for 2kHz
- [plot] bode plots for 2kHz filters
- [plots] transient response for 1kHz and 10kHz
- [plot] connect mixer show transient plots and fft for 99kHz and 95kHz

### 5. complete prototype
- complete working in detail
- [plots] transient input, osci, in phase mixed, in phase low pass, quad mixed, quad low pass (show phase diff)
- [plots] fft of if (low pass) and qf (low pass), find phase of final i, q
- [table] simul values

### 6. references
- wow so cool
