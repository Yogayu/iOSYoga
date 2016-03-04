@IBAction func faceDetecing() {
    let inputImage = CIImage(image: originalImage)
    let detector = CIDetector(ofType: CIDetectorTypeFace,
        context: context,
        options: [CIDetectorAccuracy: CIDetectorAccuracyHigh])
    var faceFeatures: [CIFaceFeature]!
    if let orientation: AnyObject = inputImage.properties()?[kCGImagePropertyOrientation] {
        faceFeatures = detector.featuresInImage(inputImage, options: [CIDetectorImageOrientation: orientation]) as [CIFaceFeature]
    } else {
        faceFeatures = detector.featuresInImage(inputImage) as [CIFaceFeature]
    }
     
    println(faceFeatures)

    for faceFeature in faceFeatures {
        let faceView = UIView(frame: faceFeature.bounds)
        faceView.layer.borderColor = UIColor.orangeColor().CGColor
        faceView.layer.borderWidth = 2
        
        imageView.addSubview(faceView)
    }
}


@IBAction func faceDetecing() {
    let inputImage = CIImage(image: originalImage)
    let detector = CIDetector(ofType: CIDetectorTypeFace,
        context: context,
        options: [CIDetectorAccuracy: CIDetectorAccuracyHigh])
    var faceFeatures: [CIFaceFeature]!
    if let orientation: AnyObject = inputImage.properties()?[kCGImagePropertyOrientation] {
        faceFeatures = detector.featuresInImage(inputImage, options: [CIDetectorImageOrientation: orientation]) as [CIFaceFeature]
    } else {
        faceFeatures = detector.featuresInImage(inputImage) as [CIFaceFeature]
    }
    
    println(faceFeatures)
    
    // 1.
    let inputImageSize = inputImage.extent().size
    var transform = CGAffineTransformIdentity
    transform = CGAffineTransformScale(transform, 1, -1)
    transform = CGAffineTransformTranslate(transform, 0, -inputImageSize.height)

    for faceFeature in faceFeatures {
        var faceViewBounds = CGRectApplyAffineTransform(faceFeature.bounds, transform)
        
        // 2.
        var scale = min(imageView.bounds.size.width / inputImageSize.width,
            imageView.bounds.size.height / inputImageSize.height)
        var offsetX = (imageView.bounds.size.width - inputImageSize.width * scale) / 2
        var offsetY = (imageView.bounds.size.height - inputImageSize.height * scale) / 2
        
        faceViewBounds = CGRectApplyAffineTransform(faceViewBounds, CGAffineTransformMakeScale(scale, scale))
        faceViewBounds.origin.x += offsetX
        faceViewBounds.origin.y += offsetY
        
        let faceView = UIView(frame: faceViewBounds)
        faceView.layer.borderColor = UIColor.orangeColor().CGColor
        faceView.layer.borderWidth = 2
        
        imageView.addSubview(faceView)
    }
}