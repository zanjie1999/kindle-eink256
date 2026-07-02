package com.amazon.dcp.metrics;

import java.util.Map;

/**
 * This interface is deprecated. 
 * Refer to https://w.amazon.com/index.php/Kindle/Device_Metric_APIs for the newest metrics API.
 * 
 * Use this interface to start and stop the log capture process.
 */
interface IMetricsService
{
    boolean isLogCaptureStarted();
    void startLogCapture();
    void stopLogCapture();

    boolean sendCrashReport(in ParcelFileDescriptor pfd, in String domain);
}
