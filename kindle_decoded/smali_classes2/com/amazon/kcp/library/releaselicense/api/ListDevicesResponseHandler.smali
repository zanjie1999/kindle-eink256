.class public final Lcom/amazon/kcp/library/releaselicense/api/ListDevicesResponseHandler;
.super Lcom/amazon/kindle/webservices/ResultResponseHandler;
.source "GetDeviceConsumptionsForAsinWebRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/releaselicense/api/ListDevicesResponseHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/webservices/ResultResponseHandler<",
        "Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final NO_RESULT_MAP_SUCCESS:Ljava/lang/String; = "SUCCESS_RESPONSE_WITH_EMPTY_RESULT_MAP"

.field private static final NULL_RESULT_MAP_REASON:Ljava/lang/String; = "SUCCESS_RESPONSE_WITH_NULL_RESULT_MAP"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final asin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/releaselicense/api/ListDevicesResponseHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/releaselicense/api/ListDevicesResponseHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/ResultResponseHandler;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/api/ListDevicesResponseHandler;->asin:Ljava/lang/String;

    .line 102
    const-class p1, Lcom/amazon/kcp/library/releaselicense/api/GetDeviceConsumptionsForAsinWebRequest;

    invoke-static {p1}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/api/ListDevicesResponseHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final parseServerResponse(Lorg/json/JSONObject;)Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;
    .locals 13

    const-string v0, "result"

    .line 123
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/api/ListDevicesResponseHandler;->asin:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    const-string v1, "CONSUMPTION_DETAILS"

    .line 124
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    .line 125
    :goto_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 127
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    .line 128
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "deviceAccountId"

    .line 129
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "deviceAccountName"

    .line 130
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "deviceAccountType"

    .line 131
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v7, "consumptionStartDate"

    .line 132
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v5, "deviceId"

    .line 133
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;

    const-string v7, "deviceName"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "deviceType"

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v5

    move-object v8, v6

    invoke-direct/range {v7 .. v12}, Lcom/amazon/kcp/library/releaselicense/DeviceConsumptionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 135
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 136
    iget-object p1, p0, Lcom/amazon/kcp/library/releaselicense/api/ListDevicesResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "List Devices success response with empty List of devices"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance p1, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;

    iget v1, p0, Lcom/amazon/kindle/webservices/BaseResponseHandler;->httpStatusCode:I

    const-string v3, "SUCCESS_RESPONSE_WITH_EMPTY_RESULT_MAP"

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;-><init>(Ljava/util/Map;ZLjava/lang/String;I)V

    return-object p1

    .line 139
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/library/releaselicense/api/ListDevicesResponseHandler;->TAG:Ljava/lang/String;

    const-string v2, "List Devices success response with Non-empty List of devices"

    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance p1, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {p1, v1, v3, v0, v2}, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;-><init>(Ljava/util/Map;ZLjava/lang/String;I)V

    return-object p1

    .line 142
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/library/releaselicense/api/ListDevicesResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "List Devices success response with null devices"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance p1, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;

    iget v1, p0, Lcom/amazon/kindle/webservices/BaseResponseHandler;->httpStatusCode:I

    const-string v3, "SUCCESS_RESPONSE_WITH_NULL_RESULT_MAP"

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;-><init>(Ljava/util/Map;ZLjava/lang/String;I)V

    return-object p1
.end method


# virtual methods
.method public onInputStream(Ljava/io/InputStream;)V
    .locals 3

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/releaselicense/api/ListDevicesResponseHandler;->parseServerResponse(Lorg/json/JSONObject;)Lcom/amazon/kcp/library/releaselicense/api/model/GetDeviceConsumptionsForAsinResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/ResultResponseHandler;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 116
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/api/ListDevicesResponseHandler;->TAG:Ljava/lang/String;

    const-string v2, "Exception while parsing response"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 114
    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/api/ListDevicesResponseHandler;->TAG:Ljava/lang/String;

    const-string v2, "IOException thrown while converting input-stream to JSONObject"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void

    :goto_1
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method
