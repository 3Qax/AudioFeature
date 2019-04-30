import CAudioFeature
// import TensorFlow

public func loadSound(_ filename: String) -> ([Float], SF_INFO) {
  var info = SF_INFO()
  info.format = 0
  let file = sf_open(filename, Int32(SFM_READ), &info);

  let dataSize: Int = Int(info.channels) * Int(info.frames)
  var data = [Float](repeating: 0, count: dataSize)
  sf_readf_float(file, UnsafeMutablePointer(&data), Int64(dataSize))
  sf_close(file)
  return (data, info)
}

struct PowerSpectrum {
  // featureparams
  // I can hardcode the default params for now.
    // What are the default params?

  // dither
  // windowing

  // fftw_plan
  // inFftBuf_, outFftBuf_;
  // fftMutix_
}