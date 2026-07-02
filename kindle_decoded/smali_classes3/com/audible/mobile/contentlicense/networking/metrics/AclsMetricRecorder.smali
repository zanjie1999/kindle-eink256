.class public final Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;
.super Ljava/lang/Object;
.source "AclsMetricRecorder.java"


# static fields
.field private static final X_AMZN_DATE:Ljava/lang/String; = "X-Amz-Date"

.field private static final X_AMZN_ERRORTYPE:Ljava/lang/String; = "x-amzn-ErrorType"

.field private static final X_AMZN_REQUESTID:Ljava/lang/String; = "x-amzn-RequestId"


# instance fields
.field private final metricManager:Lcom/audible/mobile/metric/logger/MetricManager;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/metric/logger/MetricManager;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "metricManager cannot be null"

    .line 47
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    return-void
.end method

.method private static getSource(Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;)Lcom/audible/mobile/metric/domain/Metric$Source;
    .locals 1

    .line 194
    sget-object v0, Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;->STREAMING:Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;

    if-ne p0, v0, :cond_0

    .line 195
    sget-object p0, Lcom/audible/mobile/metric/logger/AAPSource;->ACLS_STREAMING:Lcom/audible/mobile/metric/logger/AAPSource;

    return-object p0

    .line 197
    :cond_0
    sget-object p0, Lcom/audible/mobile/metric/logger/AAPSource;->ACLS_DOWNLOAD:Lcom/audible/mobile/metric/logger/AAPSource;

    return-object p0
.end method

.method private recordCounterMetricHttpException(Lretrofit2/HttpException;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/domain/Asin;)V
    .locals 7

    const-string v0, "exception cannot be null"

    .line 145
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "consumptionType cannot be null"

    .line 146
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "asin cannot be null"

    .line 147
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 153
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    const-string v2, "x-amzn-RequestId"

    invoke-virtual {v1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v2

    invoke-virtual {v2}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    const-string v3, "X-Amz-Date"

    invoke-virtual {v2, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    const-string v4, "x-amzn-ErrorType"

    invoke-virtual {v3, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {v1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    sget-object v4, Lcom/audible/mobile/metric/domain/CommonDataTypes;->AMZN_REQUEST_ID_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    invoke-static {v2}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    sget-object v1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->AMZN_DATE_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_1
    invoke-static {v3}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 164
    sget-object v1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->AMZN_ERROR_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSHttpException:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    new-instance v3, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object v4, Lcom/audible/mobile/metric/logger/AAPCategory;->ACLS:Lcom/audible/mobile/metric/logger/AAPCategory;

    invoke-static {p2}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->getSource(Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;)Lcom/audible/mobile/metric/domain/Metric$Source;

    move-result-object v5

    new-instance v6, Lcom/audible/mobile/metric/domain/DynamicMetricName;

    invoke-direct {v6, v1}, Lcom/audible/mobile/metric/domain/DynamicMetricName;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    sget-object v1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v3, v1, p3}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v3, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    invoke-virtual {v3, v0}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoints(Ljava/util/Map;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v3, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    invoke-virtual {v3}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    .line 175
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_3

    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v1

    const/16 v2, 0x257

    if-gt v1, v2, :cond_3

    .line 176
    iget-object p1, p0, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    new-instance v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPCategory;->ACLS:Lcom/audible/mobile/metric/logger/AAPCategory;

    invoke-static {p2}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->getSource(Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;)Lcom/audible/mobile/metric/domain/Metric$Source;

    move-result-object p2

    sget-object v3, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSHttp500Exception:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    invoke-direct {v1, v2, p2, v3}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    invoke-virtual {v1, v0}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoints(Ljava/util/Map;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object p2, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v1, p2, p3}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    invoke-virtual {v1}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->highPriority()Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    invoke-virtual {v1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    goto/16 :goto_0

    .line 177
    :cond_3
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_4

    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v1

    const/16 v2, 0x1f3

    if-gt v1, v2, :cond_4

    .line 178
    iget-object p1, p0, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    new-instance v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPCategory;->ACLS:Lcom/audible/mobile/metric/logger/AAPCategory;

    invoke-static {p2}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->getSource(Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;)Lcom/audible/mobile/metric/domain/Metric$Source;

    move-result-object p2

    sget-object v3, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSHttp400Exception:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    invoke-direct {v1, v2, p2, v3}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    invoke-virtual {v1, v0}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoints(Ljava/util/Map;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object p2, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v1, p2, p3}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    invoke-virtual {v1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    goto :goto_0

    .line 179
    :cond_4
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v1

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_5

    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v1

    const/16 v2, 0x18f

    if-gt v1, v2, :cond_5

    .line 180
    iget-object p1, p0, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    new-instance v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPCategory;->ACLS:Lcom/audible/mobile/metric/logger/AAPCategory;

    invoke-static {p2}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->getSource(Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;)Lcom/audible/mobile/metric/domain/Metric$Source;

    move-result-object p2

    sget-object v3, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSHttp300Exception:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    invoke-direct {v1, v2, p2, v3}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    invoke-virtual {v1, v0}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoints(Ljava/util/Map;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object p2, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v1, p2, p3}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    invoke-virtual {v1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    goto :goto_0

    .line 181
    :cond_5
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_6

    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result p1

    const/16 v1, 0x12b

    if-gt p1, v1, :cond_6

    .line 182
    iget-object p1, p0, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    new-instance v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPCategory;->ACLS:Lcom/audible/mobile/metric/logger/AAPCategory;

    invoke-static {p2}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->getSource(Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;)Lcom/audible/mobile/metric/domain/Metric$Source;

    move-result-object p2

    sget-object v3, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSHttp200Exception:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    invoke-direct {v1, v2, p2, v3}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    invoke-virtual {v1, v0}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoints(Ljava/util/Map;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object p2, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v1, p2, p3}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    invoke-virtual {v1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    :cond_6
    :goto_0
    return-void
.end method


# virtual methods
.method public getAndStartTimerMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/domain/Asin;)Lcom/audible/mobile/metric/domain/TimerMetric;
    .locals 2

    const-string v0, "metricName cannot be null"

    .line 107
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "consumptionType cannot be null"

    .line 108
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "asin cannot be null"

    .line 109
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->ACLS:Lcom/audible/mobile/metric/logger/AAPCategory;

    invoke-static {p2}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->getSource(Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;)Lcom/audible/mobile/metric/domain/Metric$Source;

    move-result-object p2

    invoke-direct {v0, v1, p2, p1}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v0, p1, p3}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v0, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;

    invoke-virtual {v0}, Lcom/audible/mobile/metric/domain/impl/TimerMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/TimerMetric;

    move-result-object p1

    .line 111
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->start()V

    return-object p1
.end method

.method public recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/domain/Asin;)V
    .locals 3

    const-string v0, "metricName cannot be null"

    .line 59
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "consumptionType cannot be null"

    .line 60
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "asin cannot be null"

    .line 61
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    new-instance v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPCategory;->ACLS:Lcom/audible/mobile/metric/logger/AAPCategory;

    invoke-static {p2}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->getSource(Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;)Lcom/audible/mobile/metric/domain/Metric$Source;

    move-result-object p2

    invoke-direct {v1, v2, p2, p1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v1, p1, p3}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    invoke-virtual {v1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    return-void
.end method

.method public recordCounterMetricException(Ljava/lang/Throwable;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/domain/Asin;)V
    .locals 4

    const-string v0, "exception cannot be null"

    .line 123
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "consumptionType cannot be null"

    .line 124
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "asin cannot be null"

    .line 125
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    instance-of v0, p1, Lretrofit2/HttpException;

    if-eqz v0, :cond_0

    .line 128
    check-cast p1, Lretrofit2/HttpException;

    invoke-direct {p0, p1, p2, p3}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->recordCounterMetricHttpException(Lretrofit2/HttpException;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/domain/Asin;)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    new-instance v1, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPCategory;->ACLS:Lcom/audible/mobile/metric/logger/AAPCategory;

    invoke-static {p2}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->getSource(Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;)Lcom/audible/mobile/metric/domain/Metric$Source;

    move-result-object p2

    sget-object v3, Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;->ACLSUnknownException:Lcom/audible/mobile/contentlicense/networking/metrics/MetricNames;

    invoke-direct {v1, v2, p2, v3, p1}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v1, p1, p3}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;

    invoke-virtual {v1}, Lcom/audible/mobile/metric/domain/impl/ExceptionMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/ExceptionMetric;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/ExceptionMetric;)V

    :goto_0
    return-void
.end method

.method public recordCounterMetricWithRequestId(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/domain/RequestId;Lcom/audible/mobile/domain/Asin;)V
    .locals 3

    const-string v0, "metricName cannot be null"

    .line 74
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "consumptionType cannot be null"

    .line 75
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "asin cannot be null"

    .line 76
    invoke-static {p4, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 77
    invoke-interface {p3}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    new-instance v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object v2, Lcom/audible/mobile/metric/logger/AAPCategory;->ACLS:Lcom/audible/mobile/metric/logger/AAPCategory;

    invoke-static {p2}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->getSource(Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;)Lcom/audible/mobile/metric/domain/Metric$Source;

    move-result-object p2

    invoke-direct {v1, v2, p2, p1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;-><init>(Lcom/audible/mobile/metric/domain/Metric$Category;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->REQUEST_ID_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v1, p1, p3}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    sget-object p1, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v1, p1, p4}, Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;->addDataPoint(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)Lcom/audible/mobile/metric/domain/impl/AbstractMetric$AbstractMetricsBuilder;

    check-cast v1, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;

    invoke-virtual {v1}, Lcom/audible/mobile/metric/domain/impl/CounterMetricImpl$Builder;->build()Lcom/audible/mobile/metric/domain/CounterMetric;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/CounterMetric;)V

    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->recordCounterMetric(Lcom/audible/mobile/metric/domain/Metric$Name;Lcom/audible/mobile/contentlicense/networking/request/ConsumptionType;Lcom/audible/mobile/domain/Asin;)V

    :goto_1
    return-void
.end method

.method public recordTimerMetric(Lcom/audible/mobile/metric/domain/TimerMetric;)V
    .locals 1

    const-string v0, "time metric cannot be null"

    .line 91
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    invoke-interface {p1}, Lcom/audible/mobile/metric/domain/TimerMetric;->stop()V

    .line 93
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/metrics/AclsMetricRecorder;->metricManager:Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-interface {v0, p1}, Lcom/audible/mobile/metric/logger/MetricLogger;->record(Lcom/audible/mobile/metric/domain/DurationMetric;)V

    return-void
.end method
