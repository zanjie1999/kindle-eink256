.class Lcom/amazon/weblab/mobile/service/ServiceProxy;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/service/IServiceProxy;


# instance fields
.field private mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

.field private mBasePathProvider:Lcom/amazon/weblab/mobile/service/BasePathProvider;

.field private mClient:Lcom/amazon/weblab/mobile/service/ServiceClient;

.field private mDefaultTtl:Lcom/amazon/weblab/mobile/settings/Interval;

.field private mEndpointType:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

.field private mListener:Lcom/amazon/weblab/mobile/service/ITriggerRequestListener;

.field private mRequestFilterCache:Lcom/amazon/weblab/mobile/service/RequestFilterCache;


# direct methods
.method constructor <init>(Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;Lcom/amazon/weblab/mobile/service/ITriggerRequestListener;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_5

    if-eqz p1, :cond_4

    .line 57
    invoke-interface {p1}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getWeblabs()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 63
    invoke-interface {p2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;->getTtl()Lcom/amazon/weblab/mobile/settings/Interval;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    invoke-interface {p2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;->getEndpoint()Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iput-object p3, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mListener:Lcom/amazon/weblab/mobile/service/ITriggerRequestListener;

    .line 71
    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    .line 72
    invoke-interface {p2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;->getTtl()Lcom/amazon/weblab/mobile/settings/Interval;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mDefaultTtl:Lcom/amazon/weblab/mobile/settings/Interval;

    .line 73
    invoke-interface {p2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;->getEndpoint()Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mEndpointType:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    .line 75
    new-instance p1, Lcom/amazon/weblab/mobile/service/RequestFilterCache;

    iget-object p3, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {p3}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/amazon/weblab/mobile/service/RequestFilterCache;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mRequestFilterCache:Lcom/amazon/weblab/mobile/service/RequestFilterCache;

    .line 76
    new-instance p1, Lcom/amazon/weblab/mobile/service/BasePathProvider;

    invoke-direct {p1}, Lcom/amazon/weblab/mobile/service/BasePathProvider;-><init>()V

    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mBasePathProvider:Lcom/amazon/weblab/mobile/service/BasePathProvider;

    .line 77
    new-instance p1, Lcom/amazon/weblab/mobile/service/ServiceClient;

    invoke-interface {p2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabRuntimeConfiguration;->getNetworkRetries()I

    move-result p2

    iget-object p3, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {p3}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/amazon/weblab/mobile/service/ServiceClient;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mClient:Lcom/amazon/weblab/mobile/service/ServiceClient;

    return-void

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endpoint in runtimeConf can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "ttl in runtimeConf can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "runtimeConf can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 58
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "weblab map in attr can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attr can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "listener can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructRecordTriggerMap(Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;"
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;->getTreatmentAssignments()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private constructTreatmentMap(Ljava/util/Collection;Ljava/util/Map;Lcom/amazon/weblab/mobile/settings/Interval;)Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/service/ServiceAssignment;",
            ">;",
            "Lcom/amazon/weblab/mobile/settings/Interval;",
            ")",
            "Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 93
    iget-object p3, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mDefaultTtl:Lcom/amazon/weblab/mobile/settings/Interval;

    .line 95
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 96
    new-instance v7, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v3}, Lcom/amazon/weblab/mobile/settings/Interval;->convertTo(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-direct {v7, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 97
    new-instance p3, Ljava/util/HashMap;

    .line 98
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p3, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 99
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 100
    invoke-interface {p2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/weblab/mobile/service/ServiceAssignment;

    .line 108
    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/service/ServiceAssignment;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/service/ServiceAssignment;->getTreatment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v4, v2

    goto :goto_3

    :cond_3
    :goto_2
    if-nez v3, :cond_4

    const-string v2, "com.amazon.weblab.mobile.version.Default"

    goto :goto_1

    :cond_4
    const-string v2, "com.amazon.weblab.mobile.version.Locked"

    goto :goto_1

    :goto_3
    if-nez v3, :cond_5

    .line 115
    iget-object v2, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {v2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getWeblabs()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_1

    .line 118
    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/service/ServiceAssignment;->getMayTrigger()Z

    move-result v6

    move-object v1, v8

    move-object v3, v4

    move-object v4, v0

    move-object v5, v7

    .line 119
    invoke-static/range {v1 .. v6}, Lcom/amazon/weblab/mobile/service/ServiceProxy;->createTreatmentAssignment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Z)Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    move-result-object v1

    .line 120
    invoke-virtual {p3, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_6
    new-instance p1, Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;

    invoke-direct {p1, p3}, Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;-><init>(Ljava/util/Map;)V

    return-object p1
.end method

.method private static createTreatmentAssignment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Z)Lcom/amazon/weblab/mobile/model/TreatmentAssignment;
    .locals 10

    .line 87
    new-instance v9, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    const-wide/16 v7, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ZJ)V

    return-object v9
.end method

.method private recordTriggerImpl(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;)Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    const-string v0, "Exception while recording trigger for weblab "

    const-string v1, " and treatment "

    .line 210
    iget-object v2, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mBasePathProvider:Lcom/amazon/weblab/mobile/service/BasePathProvider;

    invoke-virtual {p2}, Lcom/amazon/weblab/mobile/model/SessionInfo;->getMarketplaceId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mEndpointType:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    invoke-virtual {v2, v3, v4}, Lcom/amazon/weblab/mobile/service/BasePathProvider;->getBasePath(Ljava/lang/String;Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;)Ljava/lang/String;

    move-result-object v2

    .line 212
    new-instance v3, Lcom/amazon/weblab/mobile/service/TriggersServiceRequest;

    iget-object v4, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    .line 213
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v4, p2, p3, v5}, Lcom/amazon/weblab/mobile/service/TriggersServiceRequest;-><init>(Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)V

    .line 216
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    .line 217
    iget-object v6, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mClient:Lcom/amazon/weblab/mobile/service/ServiceClient;

    invoke-virtual {v6, v2, v3}, Lcom/amazon/weblab/mobile/service/ServiceClient;->invoke(Ljava/lang/String;Lcom/amazon/weblab/mobile/service/ServiceRequest;)Lcom/amazon/weblab/mobile/service/ServiceResponse;

    move-result-object v2

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    sub-double/2addr v6, v4

    .line 220
    invoke-virtual {v2}, Lcom/amazon/weblab/mobile/service/ServiceResponse;->getAssignments()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getWeblabName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;->REJECTED_FOR_ALLOCATION_MISMATCH:Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;->SUCCESSFUL:Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;

    .line 222
    :goto_0
    sget-object v4, Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;->REJECTED_FOR_ALLOCATION_MISMATCH:Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazon/weblab/mobile/service/UriTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "ServiceProxyRecordTriggerInvokeTime"

    if-ne v3, v4, :cond_1

    .line 223
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trigger rejected for allocation mismatch for weblab "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getWeblabName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getTreatment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/weblab/mobile/utils/TestUtils;->logIfUnderTest(Ljava/lang/String;)V

    .line 224
    iget-object v4, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mListener:Lcom/amazon/weblab/mobile/service/ITriggerRequestListener;

    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getWeblabName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v8

    .line 225
    invoke-virtual {v2}, Lcom/amazon/weblab/mobile/service/ServiceResponse;->getAssignments()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v2}, Lcom/amazon/weblab/mobile/service/ServiceResponse;->getTtl()Lcom/amazon/weblab/mobile/settings/Interval;

    move-result-object v2

    .line 224
    invoke-direct {p0, v8, v9, v2}, Lcom/amazon/weblab/mobile/service/ServiceProxy;->constructTreatmentMap(Ljava/util/Collection;Ljava/util/Map;Lcom/amazon/weblab/mobile/settings/Interval;)Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazon/weblab/mobile/service/ServiceProxy;->constructRecordTriggerMap(Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v4, p2, p3, v2}, Lcom/amazon/weblab/mobile/service/ITriggerRequestListener;->notifyMismatchAllocation(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Map;)V

    const-string p2, "ServiceProxyRecordTriggerAllocationMismatch"

    .line 227
    iget-object p3, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {p3}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 228
    iget-object p2, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {p2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, v6, v7, p2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;

    goto :goto_1

    .line 231
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Trigger successfully recorded for weblab "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getWeblabName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getTreatment()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/weblab/mobile/utils/TestUtils;->logIfUnderTest(Ljava/lang/String;)V

    const-string p2, "ServiceProxyRecordTriggerSuccess"

    .line 232
    iget-object p3, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {p3}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 233
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ServiceProxyRecordTriggerSuccess/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getWeblabName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {p3}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 234
    iget-object p2, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {p2}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, v6, v7, p2}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/amazon/weblab/mobile/service/UriTooLongException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object v3

    :catch_0
    move-exception p2

    .line 246
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getWeblabName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getTreatment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/weblab/mobile/utils/TestUtils;->logIfUnderTest(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {p3}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ServiceProxyRecordTriggerFailureURITooLong"

    invoke-static {v0, p1, p3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 248
    new-instance p1, Lcom/amazon/weblab/mobile/model/MobileWeblabException;

    invoke-direct {p1, p2}, Lcom/amazon/weblab/mobile/model/MobileWeblabException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p2

    .line 239
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getWeblabName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getTreatment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/amazon/weblab/mobile/utils/TestUtils;->logIfUnderTest(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceProxyRecordTriggerFailure"

    invoke-static {v1, p3, v0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 241
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ServiceProxyRecordTriggerFailure/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getWeblabName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 242
    new-instance p1, Lcom/amazon/weblab/mobile/model/MobileWeblabException;

    invoke-direct {p1, p2}, Lcom/amazon/weblab/mobile/model/MobileWeblabException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public getTreatmentAssignments(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/weblab/mobile/model/SessionInfo;",
            "Lcom/amazon/weblab/mobile/model/CustomerInfo;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    const-string v0, "MobileWeblabAndroidClient"

    .line 130
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    new-instance p1, Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;-><init>(Ljava/util/Map;)V

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mBasePathProvider:Lcom/amazon/weblab/mobile/service/BasePathProvider;

    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/SessionInfo;->getMarketplaceId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mEndpointType:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    invoke-virtual {v1, v2, v3}, Lcom/amazon/weblab/mobile/service/BasePathProvider;->getBasePath(Ljava/lang/String;Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;)Ljava/lang/String;

    move-result-object v1

    .line 140
    new-instance v2, Lcom/amazon/weblab/mobile/service/AssignmentsServiceRequest;

    iget-object v3, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/amazon/weblab/mobile/service/AssignmentsServiceRequest;-><init>(Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)V

    .line 143
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    long-to-double p1, p1

    .line 144
    iget-object v3, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mClient:Lcom/amazon/weblab/mobile/service/ServiceClient;

    invoke-virtual {v3, v1, v2}, Lcom/amazon/weblab/mobile/service/ServiceClient;->invoke(Ljava/lang/String;Lcom/amazon/weblab/mobile/service/ServiceRequest;)Lcom/amazon/weblab/mobile/service/ServiceResponse;

    move-result-object v1

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-double v2, v2

    sub-double/2addr v2, p1

    .line 147
    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/service/ServiceResponse;->getAssignments()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 148
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully retrieved "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " assignments from the service."

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/weblab/mobile/utils/TestUtils;->logDebugForAutomation(Ljava/lang/String;)V

    const-string p2, "ServiceProxyGetTreatmentAssignmentsSuccess"

    .line 157
    iget-object v4, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {v4}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logMetric(Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    const-string p2, "ServiceProxyGetTreatmentAssignmentsInvokeTime"

    .line 158
    iget-object v4, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {v4}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v2, v3, v4}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logTimerMetric(Ljava/lang/String;DLjava/lang/String;)Ljava/util/concurrent/Future;

    .line 160
    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/service/ServiceResponse;->getTtl()Lcom/amazon/weblab/mobile/settings/Interval;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Lcom/amazon/weblab/mobile/service/ServiceProxy;->constructTreatmentMap(Ljava/util/Collection;Ljava/util/Map;Lcom/amazon/weblab/mobile/settings/Interval;)Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "Service doesn\'t return assignments."

    .line 150
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "ServiceProxyGetTreatmentAssignmentsNullOrEmptyFailure"

    .line 151
    iget-object p3, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    .line 152
    invoke-interface {p3}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    .line 151
    invoke-static {p2, p1, p3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 153
    new-instance p2, Lcom/amazon/weblab/mobile/model/MobileWeblabException;

    invoke-direct {p2, p1}, Lcom/amazon/weblab/mobile/model/MobileWeblabException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "Exception retrieving assignments from service."

    .line 163
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mAttributes:Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    invoke-interface {p3}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ServiceProxyGetTreatmentAssignmentsFailure"

    invoke-static {v0, p2, p3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->logErrorMetric(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 165
    new-instance p2, Lcom/amazon/weblab/mobile/model/MobileWeblabException;

    invoke-direct {p2, p1}, Lcom/amazon/weblab/mobile/model/MobileWeblabException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 135
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sessionInfo can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public recordTrigger(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;)Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 182
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mRequestFilterCache:Lcom/amazon/weblab/mobile/service/RequestFilterCache;

    invoke-virtual {v0, p2, p3, p1}, Lcom/amazon/weblab/mobile/service/RequestFilterCache;->isCacheHit(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    sget-object p1, Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;->SUCCESSFUL:Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;

    return-object p1

    .line 187
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/weblab/mobile/service/ServiceProxy;->recordTriggerImpl(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;)Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;

    move-result-object v0

    .line 188
    sget-object v1, Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;->SUCCESSFUL:Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;

    if-ne v0, v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/amazon/weblab/mobile/service/ServiceProxy;->mRequestFilterCache:Lcom/amazon/weblab/mobile/service/RequestFilterCache;

    invoke-virtual {v1, p2, p3, p1}, Lcom/amazon/weblab/mobile/service/RequestFilterCache;->addTriggerRequest(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Lcom/amazon/weblab/mobile/model/TreatmentAssignment;)V

    .line 194
    :cond_1
    invoke-static {}, Lcom/amazon/weblab/mobile/experimental/PlatformWeblabsGlobalState;->getTreatmentsToTrigger()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 196
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    .line 197
    invoke-direct {p0, v1, p2, p3}, Lcom/amazon/weblab/mobile/service/ServiceProxy;->recordTriggerImpl(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;)Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;

    goto :goto_0

    :cond_2
    return-object v0

    .line 179
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "sessionInfo can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 176
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "treatment can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
