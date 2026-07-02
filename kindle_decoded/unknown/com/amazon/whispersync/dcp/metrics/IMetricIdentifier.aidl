package com.amazon.dcp.metrics;

/**
 * This interface is deprecated. 
 * Refer to https://w.amazon.com/index.php/Kindle/Device_Metric_APIs for the newest metrics API.
 * 
 */
interface IMetricIdentifier
{
    /**
     * Used for associating an error level with the metric.
     * See MetricIdentifier.Level for valid values
     */
    int getLevelCode();

    /**
    * A string that uniquely identifies your application.
    */
    String getDomain();

    /**
    * A string identifying the component of your application that the metric applies to.
    */
    String getComponent();

    /**
    * A string identifying the name of the specific metric.
    */
    String getName();
}
