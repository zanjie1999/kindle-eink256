.class public Lcom/amazon/kindle/dcaps/registration/RegistrationRequest;
.super Ljava/lang/Object;
.source "RegistrationRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "dcaps.registration.request"

.field private static final mPrefix:Ljava/lang/String; = "registration.request."


# direct methods
.method public static register()V
    .locals 9

    const-string v0, "application/json"

    const-string v1, "dcaps.registration.request"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :try_start_0
    const-string v4, "Attempting to register capabilities"

    .line 84
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v4, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;

    invoke-direct {v4}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;-><init>()V

    .line 88
    invoke-virtual {v4}, Lcom/amazon/kindle/dcaps/hardware/DeviceHardwareInspector;->getDeviceInfo()Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;

    move-result-object v4

    const-string v5, "http://dcaps.amazon.com/schema/dcaps_android/1"

    .line 94
    invoke-static {v4}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeFilter;->applyFilter(Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;)Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;

    move-result-object v4

    .line 96
    new-instance v6, Lcom/amazon/kindle/dcaps/registration/RegistrationPayload;

    invoke-virtual {v4}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->asJSON()Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "android.1"

    invoke-direct {v6, v7, v5, v8}, Lcom/amazon/kindle/dcaps/registration/RegistrationPayload;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v5, Lcom/amazon/kindle/dcaps/common/LocalData;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/amazon/kindle/dcaps/hardware/HardwareAttributeSet;->hashCode()I

    move-result v4

    invoke-direct {v5, v7, v4}, Lcom/amazon/kindle/dcaps/common/LocalData;-><init>(ZI)V

    .line 101
    invoke-static {v5}, Lcom/amazon/kindle/dcaps/registration/RegistrationRequest;->shouldReport(Lcom/amazon/kindle/dcaps/common/LocalData;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Capabilities need to be reported"

    .line 102
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v4, Lcom/amazon/kindle/dcaps/registration/RegistrationCallback;

    invoke-direct {v4, v5}, Lcom/amazon/kindle/dcaps/registration/RegistrationCallback;-><init>(Lcom/amazon/kindle/dcaps/common/LocalData;)V

    .line 105
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v7, "Accept"

    .line 106
    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "Content-Type"

    .line 107
    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Registering capabilities with payload: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/amazon/kindle/dcaps/registration/RegistrationPayload;->asString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "registration.request.success"

    .line 110
    invoke-static {v0, v2, v3}, Lcom/amazon/kindle/dcaps/common/Metrics;->addCounter(Ljava/lang/String;D)V

    const-string v0, "capabilities/register"

    .line 112
    invoke-virtual {v6}, Lcom/amazon/kindle/dcaps/registration/RegistrationPayload;->asString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6, v4}, Lcom/amazon/kindle/dcaps/common/HttpClient;->post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/amazon/kindle/dcaps/common/ResponseHandler;)V

    goto :goto_0

    :cond_0
    const-string v0, "Capabilities need NOT be reported"

    .line 115
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "registration.request.JSONException"

    .line 120
    invoke-static {v0, v2, v3}, Lcom/amazon/kindle/dcaps/common/Metrics;->addCounter(Ljava/lang/String;D)V

    :goto_0
    return-void
.end method

.method private static shouldReport(Lcom/amazon/kindle/dcaps/common/LocalData;)Z
    .locals 7

    .line 46
    invoke-static {}, Lcom/amazon/kindle/dcaps/common/LocalData;->retrieveData()Lcom/amazon/kindle/dcaps/common/LocalData;

    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/dcaps/common/LocalData;->sameAs(Lcom/amazon/kindle/dcaps/common/LocalData;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "dcaps.registration.request"

    if-nez v1, :cond_1

    const-string v1, "Capabilities have changed"

    .line 50
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p0}, Lcom/amazon/kindle/dcaps/common/LocalData;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/amazon/kindle/dcaps/common/LocalData;->getTimestamp()J

    move-result-wide v0

    sub-long/2addr v5, v0

    const-wide/32 v0, 0x240c8400

    cmp-long p0, v5, v0

    if-ltz p0, :cond_0

    const-string p0, "And elapsed time has exceeded threshold"

    .line 56
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string p0, "But elapsed time has NOT exceeded threshold"

    .line 59
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const-string p0, "Capabilities have NOT changed"

    .line 65
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v0}, Lcom/amazon/kindle/dcaps/common/LocalData;->getStatus()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "But last registration failed"

    .line 68
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    return v3
.end method
