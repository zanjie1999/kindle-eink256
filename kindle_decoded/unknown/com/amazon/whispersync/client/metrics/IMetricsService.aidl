//IMetricsService.aidl
package com.amazon.client.metrics;
import com.amazon.client.metrics.DataPointEnvelope;

/**
 * The main interface for the metrics service
 */

interface IMetricsService {

   /**
   * Record data point values assosiated with a metric event
   *
   * @param priority Priority associated with this metric event
   * @param program The program or application that emitted this metric event
   * @param source The source that emitted this metric event
   * @param timestamp The time at which the metric event was recorded in milliseconds since 1/1/1970
   * UTC
   * @param datapoints List of recorded data points
   */
   oneway void record(int priority, String program, String source, long timestamp,
          in List<DataPointEnvelope> datapoints);

    /**
    * Method to return the recordMetricsSetting to client side
    *
    * @return true - metric collection is turned on for device.
    *         false - metric collection is turned off.
    */
    boolean getRecordMetricsSetting();
}
