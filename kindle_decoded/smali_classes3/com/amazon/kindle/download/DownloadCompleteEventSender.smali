.class public final Lcom/amazon/kindle/download/DownloadCompleteEventSender;
.super Ljava/lang/Object;
.source "DownloadCompleteEventSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;
    }
.end annotation


# static fields
.field private static final METADATA_HEADER_KEY:Ljava/lang/String; = "header_"

.field private static final RESPONSE_HEADERS_IN_METADATA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    const-class v0, Lcom/amazon/kindle/download/DownloadCompleteEventSender;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->TAG:Ljava/lang/String;

    const-string v0, "X-ADP-Host"

    const-string v1, "x-amz-id-2"

    const-string v2, "x-amzn-RequestId"

    .line 65
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->RESPONSE_HEADERS_IN_METADATA:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static correctWifiBytesIfNecessary(JLjava/lang/String;)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    .line 511
    sget-object p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bytesByTransport.WiFi is negative and this should not happen!!"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p0

    sget-object p1, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "negative"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".bytesByTransport.WiFi"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    :cond_0
    return-wide p0
.end method

.method static getDeliveryMessage(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/download/KRXRequestErrorState;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            "Lcom/amazon/kindle/webservices/RequestStatus;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 147
    invoke-static {}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->getInstance()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;->getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    move-result-object v0

    .line 149
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->size()I

    move-result v1

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 168
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 169
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "version"

    const-string v6, "2.0"

    .line 171
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getDownloadStartTime()J

    move-result-wide v5

    const-string v7, "startTime"

    invoke-virtual {v3, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 173
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getDownloadEndTime()J

    move-result-wide v5

    const-string v7, "endTime"

    invoke-virtual {v3, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "responseContext"

    move-object/from16 v6, p3

    .line 174
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "correlationId"

    move-object/from16 v6, p1

    .line 175
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getInternalVersion()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v5, "appSoftwareVersion"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v9, v6

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v17, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p1, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/amazon/kindle/webservices/RequestStatus;

    .line 181
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/amazon/kindle/services/download/IDownloadRequest;

    .line 182
    invoke-interface {v13}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v16

    move-object/from16 v22, v4

    invoke-interface/range {v16 .. v16}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v4

    .line 183
    invoke-interface {v13}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v23

    add-long v14, v14, v23

    move-wide/from16 v25, v14

    .line 186
    sget-object v14, Lcom/amazon/kindle/webservices/RequestStatus;->COMPLETE:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-virtual {v14, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 188
    :cond_0
    sget-object v14, Lcom/amazon/kindle/webservices/RequestStatus;->ERROR:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-virtual {v14, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 190
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 198
    :goto_1
    sget-object v14, Lcom/amazon/kindle/services/download/AssetPriority;->OPTIONAL:Lcom/amazon/kindle/services/download/AssetPriority;

    invoke-virtual {v14, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 200
    invoke-static {v10}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->isRequestInError(Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/amazon/kindle/webservices/RequestStatus;->COMPLETE:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-virtual {v4, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    sget-object v10, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->COMPLETED:Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    goto/16 :goto_4

    .line 202
    :cond_2
    sget-object v4, Lcom/amazon/kindle/webservices/RequestStatus;->ERROR:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-virtual {v4, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 203
    invoke-interface {v13}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->getFailedDownloadEventStatus(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    move-result-object v10

    goto/16 :goto_4

    .line 207
    :cond_3
    sget-object v14, Lcom/amazon/kindle/services/download/AssetPriority;->PREFERRED:Lcom/amazon/kindle/services/download/AssetPriority;

    invoke-virtual {v14, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 209
    invoke-static {v12}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->isRequestInError(Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/amazon/kindle/webservices/RequestStatus;->COMPLETE:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-virtual {v4, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 210
    sget-object v12, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->COMPLETED:Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    goto :goto_4

    .line 211
    :cond_4
    sget-object v4, Lcom/amazon/kindle/webservices/RequestStatus;->ERROR:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-virtual {v4, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 212
    invoke-interface {v13}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->getFailedDownloadEventStatus(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    move-result-object v12

    goto :goto_4

    .line 216
    :cond_5
    sget-object v14, Lcom/amazon/kindle/services/download/AssetPriority;->DEFERRED:Lcom/amazon/kindle/services/download/AssetPriority;

    invoke-virtual {v14, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 218
    invoke-static {v11}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->isRequestInError(Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lcom/amazon/kindle/webservices/RequestStatus;->COMPLETE:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-virtual {v4, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 219
    sget-object v11, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->COMPLETED:Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    goto :goto_2

    .line 220
    :cond_6
    sget-object v4, Lcom/amazon/kindle/webservices/RequestStatus;->ERROR:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-virtual {v4, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 221
    invoke-interface {v13}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->getFailedDownloadEventStatus(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    move-result-object v11

    :cond_7
    :goto_2
    add-long v17, v17, v23

    goto :goto_4

    .line 225
    :cond_8
    sget-object v14, Lcom/amazon/kindle/services/download/AssetPriority;->REQUIRED:Lcom/amazon/kindle/services/download/AssetPriority;

    invoke-virtual {v14, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 227
    invoke-static {v9}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->isRequestInError(Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;)Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Lcom/amazon/kindle/webservices/RequestStatus;->COMPLETE:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-virtual {v4, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 228
    sget-object v9, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->COMPLETED:Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    goto :goto_3

    .line 229
    :cond_9
    sget-object v4, Lcom/amazon/kindle/webservices/RequestStatus;->ERROR:Lcom/amazon/kindle/webservices/RequestStatus;

    invoke-virtual {v4, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 230
    invoke-interface {v13}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->getFailedDownloadEventStatus(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    move-result-object v9

    :cond_a
    :goto_3
    add-long v7, v7, v23

    :cond_b
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v4, v22

    move-wide/from16 v14, v25

    goto/16 :goto_0

    :cond_c
    move-object/from16 v22, v4

    if-nez v9, :cond_d

    .line 239
    sget-object v9, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->FAILED:Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    .line 245
    :cond_d
    invoke-static {v9}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->isRequestInError(Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 246
    invoke-static/range {p0 .. p0}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->getFailedDownloadEventStatus(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    move-result-object v11

    .line 247
    invoke-static/range {p0 .. p0}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->getFailedDownloadEventStatus(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    move-result-object v12

    .line 248
    invoke-static/range {p0 .. p0}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->getFailedDownloadEventStatus(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    move-result-object v10

    .line 251
    :cond_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "totalCount"

    .line 252
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "failedCount"

    .line 253
    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "successCount"

    .line 254
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "resourceCounters"

    .line 255
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-lez v6, :cond_f

    .line 259
    invoke-static {v2}, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->getFailedResources(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_f

    const-string v1, "failedResources"

    .line 261
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    const-wide/16 v0, 0x0

    cmp-long v2, v17, v0

    if-lez v2, :cond_10

    move-object/from16 v16, p2

    move-object/from16 v19, v11

    move-wide/from16 v20, v7

    .line 268
    invoke-static/range {v16 .. v21}, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->getDownloadCountersDeferredCompleted(Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;JLcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;J)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, "downloadCounters.deferredCompleted"

    move-object/from16 v2, v22

    .line 271
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_10
    move-object/from16 v2, v22

    :goto_5
    move-object/from16 v0, p2

    .line 276
    invoke-static {v0, v7, v8, v9}, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->getDownloadCountersContentReadyForUse(Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;JLcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_11

    const-string v4, "downloadCounters.contentReadyForUse"

    .line 279
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11
    move-object/from16 v13, p2

    move-object/from16 v16, v9

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v10

    .line 283
    invoke-static/range {v13 .. v19}, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->getDownloadCounters(Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;JLcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "downloadCounters"

    .line 286
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12
    const-string v0, "contentDownload"

    .line 290
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 294
    invoke-static {}, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->getUtcTime()J

    move-result-wide v1

    const-string v4, "creationTime"

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "auditInfo"

    .line 295
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    new-instance v0, Lorg/json/JSONObject;

    .line 298
    invoke-static/range {p4 .. p4}, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->getDownloadCompleteMetadata(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "metadata"

    .line 297
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v3
.end method

.method private static getDownloadCompleteMetadata(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            "Lcom/amazon/kindle/webservices/RequestStatus;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 330
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    .line 331
    instance-of v2, v1, Lcom/amazon/kindle/download/assets/AssetDownloadRequest;

    if-eqz v2, :cond_0

    .line 332
    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/webservices/IResponseHandler;->getHttpResponseProperties()Lcom/amazon/kindle/webservices/HttpResponseProperties;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 334
    sget-object v3, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->RESPONSE_HEADERS_IN_METADATA:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 335
    invoke-virtual {v2, v4}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getLastValueOfHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 338
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "header_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 338
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static getDownloadCounters(Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;JLcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 451
    sget-object v0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->COMPLETED:Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;

    .line 452
    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getTotalBytes()J

    move-result-wide v1

    .line 458
    invoke-static {p3}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->isRequestInError(Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    invoke-static {p4}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->isRequestInError(Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;)Z

    move-result p3

    if-eqz p3, :cond_1

    move-object p3, p4

    goto :goto_0

    .line 462
    :cond_1
    invoke-static {p5}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->isRequestInError(Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;)Z

    move-result p3

    if-eqz p3, :cond_2

    move-object p3, p5

    goto :goto_0

    .line 464
    :cond_2
    invoke-static {p6}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;->isRequestInError(Lcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;)Z

    move-result p3

    if-eqz p3, :cond_3

    move-object p3, p6

    goto :goto_0

    :cond_3
    move-object p3, v0

    :goto_0
    if-nez p3, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 472
    :cond_4
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 473
    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getDownloadEndTime()J

    move-result-wide p5

    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getDownloadStartTime()J

    move-result-wide v3

    sub-long/2addr p5, v3

    const-string v0, "time"

    .line 474
    invoke-virtual {p4, v0, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 475
    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getDownloadEndTime()J

    move-result-wide p5

    const-string v0, "endTime"

    invoke-virtual {p4, v0, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p5, "bytes"

    .line 476
    invoke-virtual {p4, p5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 477
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    const-string p5, "status"

    invoke-virtual {p4, p5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "size"

    .line 478
    invoke-virtual {p4, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide/16 p1, 0x0

    cmp-long p3, v1, p1

    if-lez p3, :cond_5

    .line 481
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 482
    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getWanBytes()J

    move-result-wide p2

    .line 483
    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getTotalBytes()J

    move-result-wide p5

    sub-long/2addr p5, p2

    const-string p0, "DownloadCounters"

    .line 484
    invoke-static {p5, p6, p0}, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->correctWifiBytesIfNecessary(JLjava/lang/String;)J

    move-result-wide p5

    const-string p0, "WiFi"

    .line 485
    invoke-virtual {p1, p0, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "WAN"

    .line 486
    invoke-virtual {p1, p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "bytesByTransport"

    .line 487
    invoke-virtual {p4, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    return-object p4
.end method

.method static getDownloadCountersContentReadyForUse(Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;JLcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getRequiredEndTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getDownloadStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 431
    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getRequiredDownloadTotalBytes()J

    move-result-wide v2

    .line 432
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "time"

    .line 433
    invoke-virtual {v4, v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 434
    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getRequiredEndTime()J

    move-result-wide v0

    const-string v5, "endTime"

    invoke-virtual {v4, v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "bytes"

    .line 435
    invoke-virtual {v4, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 436
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    const-string v0, "status"

    invoke-virtual {v4, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "size"

    .line 437
    invoke-virtual {v4, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide/16 p1, 0x0

    cmp-long p3, v2, p1

    if-lez p3, :cond_1

    .line 439
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 440
    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getRequiredDownloadWanBytes()J

    move-result-wide p2

    .line 441
    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getRequiredDownloadTotalBytes()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getRequiredDownloadWanBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-string p0, "ContentReadyForUse"

    .line 442
    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->correctWifiBytesIfNecessary(JLjava/lang/String;)J

    move-result-wide v0

    const-string p0, "WiFi"

    .line 443
    invoke-virtual {p1, p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "WAN"

    .line 444
    invoke-virtual {p1, p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "bytesByTransport"

    .line 445
    invoke-virtual {v4, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v4
.end method

.method static getDownloadCountersDeferredCompleted(Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;JLcom/amazon/kindle/download/DownloadCompleteEventSender$DownloadEventStatus;J)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 404
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 405
    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getDeferredDownloadTotalBytes()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getRequiredDownloadTotalBytes()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 407
    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getDeferredEndTime()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getDownloadStartTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-string v5, "time"

    .line 408
    invoke-virtual {v0, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 409
    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getDeferredEndTime()J

    move-result-wide v3

    const-string v5, "endTime"

    invoke-virtual {v0, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "bytes"

    .line 410
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "status"

    .line 411
    invoke-virtual {v0, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-long/2addr p1, p4

    const-string p3, "size"

    .line 412
    invoke-virtual {v0, p3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide/16 p1, 0x0

    cmp-long p3, v1, p1

    if-lez p3, :cond_1

    .line 415
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 416
    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getDeferredDownloadWanBytes()J

    move-result-wide p2

    invoke-virtual {p0}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getRequiredDownloadWanBytes()J

    move-result-wide p4

    add-long/2addr p2, p4

    sub-long/2addr v1, p2

    const-string p0, "DeferredCompleted"

    .line 418
    invoke-static {v1, v2, p0}, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->correctWifiBytesIfNecessary(JLjava/lang/String;)J

    move-result-wide p4

    const-string p0, "WiFi"

    .line 419
    invoke-virtual {p1, p0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "WAN"

    .line 420
    invoke-virtual {p1, p0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "bytesByTransport"

    .line 421
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-object v0
.end method

.method private static getFailedResources(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 351
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 353
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/services/download/IDownloadRequest;

    .line 354
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 356
    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IDownloadRequest;->getBookAsset()Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/services/download/IBookAsset;->getResourceContext()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 359
    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v4, "responseContext"

    .line 361
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/webservices/IResponseHandler;->getHttpStatusCode()I

    move-result v3

    invoke-static {v3}, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->translateHttpStatus(I)I

    move-result v3

    const-string v4, "httpStatus"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 365
    sget-object v3, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v4

    if-eq v3, v4, :cond_2

    sget-object v3, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 366
    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v4

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "Client"

    goto :goto_2

    :cond_2
    :goto_1
    const-string v3, "Server"

    :goto_2
    const-string v4, "errorSource"

    .line 365
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->getDomain()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "unknown"

    :cond_3
    const-string v4, "domain"

    .line 372
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 376
    invoke-interface {v1}, Lcom/amazon/kindle/webservices/IResponseHandler;->getHttpResponseProperties()Lcom/amazon/kindle/webservices/HttpResponseProperties;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 378
    invoke-virtual {v1}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getHeaderIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 379
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 380
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 381
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 382
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Lorg/json/JSONArray;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_4
    const-string v1, "responseHeaders"

    .line 384
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    :cond_5
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method private static getUtcTime()J
    .locals 2

    const-string v0, "UTC"

    .line 584
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 585
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static isSupportedBookType(Lcom/amazon/kcp/library/models/BookType;)Z
    .locals 2

    .line 553
    sget-object v0, Lcom/amazon/kindle/download/DownloadCompleteEventSender$2;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static sendDownloadCompleteEvent(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/download/KRXRequestErrorState;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/services/download/IDownloadRequest;",
            "Lcom/amazon/kindle/webservices/RequestStatus;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->isSupportedBookType(Lcom/amazon/kcp/library/models/BookType;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 82
    sget-object p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->TAG:Ljava/lang/String;

    const-string p1, "groupContext is null"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p0

    new-instance p1, Lcom/amazon/kindle/krx/metrics/MetricsData;

    const-class p3, Lcom/amazon/kindle/download/DownloadCompleteEventSender;

    .line 85
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "AmazonKindle"

    invoke-direct {p1, p4, p3}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "ResponseContextMissing"

    invoke-virtual {p1, p4, p3, p2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;ILjava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 87
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    const/4 p2, 0x0

    .line 88
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return-void

    .line 94
    :cond_0
    new-instance v7, Lcom/amazon/kindle/download/DownloadCompleteEventSender$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/download/DownloadCompleteEventSender$1;-><init>(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/kindle/model/content/IBookID;)V

    invoke-static {v7}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 135
    :cond_1
    sget-object p0, Lcom/amazon/kindle/download/DownloadCompleteEventSender;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Avoiding download complete ODOT event as content type is not supported: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static translateHttpStatus(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x257

    :cond_0
    return p0
.end method
