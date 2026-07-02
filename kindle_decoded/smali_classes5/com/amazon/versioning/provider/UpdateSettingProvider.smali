.class public Lcom/amazon/versioning/provider/UpdateSettingProvider;
.super Ljava/lang/Object;
.source "UpdateSettingProvider.java"

# interfaces
.implements Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener<",
        "Lcom/amazon/versioning/data/UpdateSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLASS_TAG:Ljava/lang/String;


# instance fields
.field private cachedSettingValue:Lcom/amazon/versioning/data/UpdateSetting;

.field private elapsedTimeOfRestCall:J

.field private onCompleteListener:Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;

.field private restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

.field private startTimeOfRestCall:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/versioning/provider/UpdateSettingProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lcom/amazon/versioning/data/enums/RestRequestState;->IDLE:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object v0, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    return-void
.end method

.method private declared-synchronized clearListenerValuesAndRequestStatus()V
    .locals 2

    monitor-enter p0

    .line 28
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "clearListenerAndValues: clearing listener and values"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/amazon/versioning/data/enums/RestRequestState;->IDLE:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object v0, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->cachedSettingValue:Lcom/amazon/versioning/data/UpdateSetting;

    .line 34
    invoke-virtual {p0}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->removeOnCompletelistener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private recordMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 214
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    move-result-object v0

    .line 215
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->recordReadingStreamsMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportPMET(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 209
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    move-result-object v0

    .line 210
    invoke-virtual {v0, p1, p2}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportPMET(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 204
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getUpdatePluginMetricsManager()Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/versioning/manager/UpdatePluginMetricsManager;->reportMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportPMETAndMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->reportPMET(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->recordMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportPMETandMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->reportPMET(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Status"

    .line 200
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->recordMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized fetchSetting(Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;)V
    .locals 2

    monitor-enter p0

    .line 61
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fetchNextThreshold: assigning new listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fetchNextThreshold: current status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;

    .line 65
    sget-object p1, Lcom/amazon/versioning/provider/UpdateSettingProvider$1;->$SwitchMap$com$amazon$versioning$data$enums$RestRequestState:[I

    iget-object v0, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const-string p1, "KCUPA"

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fetchSetting: cannot be handled, unknown restRequestState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->startTimeOfRestCall:J

    .line 76
    new-instance p1, Lcom/amazon/versioning/service/KCUPSHandler;

    invoke-direct {p1}, Lcom/amazon/versioning/service/KCUPSHandler;-><init>()V

    .line 77
    invoke-virtual {p1, p0}, Lcom/amazon/versioning/service/KCUPSHandler;->placeGetUpdateSettingsCallWithListener(Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;)V

    .line 78
    sget-object p1, Lcom/amazon/versioning/data/enums/RestRequestState;->OUTGOING_REQUEST:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object p1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    goto :goto_0

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;

    invoke-interface {p1}, Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;->onUpdateSettingFailed()V

    .line 72
    invoke-direct {p0}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->clearListenerValuesAndRequestStatus()V

    goto :goto_0

    .line 67
    :cond_2
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;

    iget-object v0, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->cachedSettingValue:Lcom/amazon/versioning/data/UpdateSetting;

    invoke-interface {p1, v0}, Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;->onUpdateSettingActive(Lcom/amazon/versioning/data/UpdateSetting;)V

    .line 68
    invoke-direct {p0}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->clearListenerValuesAndRequestStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isProviderBusy()Z
    .locals 3

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    sget-object v1, Lcom/amazon/versioning/data/enums/RestRequestState;->OUTGOING_REQUEST:Lcom/amazon/versioning/data/enums/RestRequestState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isProviderBusy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onErrorCode(Lcom/amazon/versioning/data/enums/KCUPSResponseCode;)V
    .locals 4

    monitor-enter p0

    .line 177
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->startTimeOfRestCall:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->elapsedTimeOfRestCall:J

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onErrorCode: rest call completion took "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->elapsedTimeOfRestCall:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string p1, "KCUPA_SETTINGS"

    const-string v0, "SETTINGS.TOGGLE_ABU_ERROR"

    .line 180
    invoke-direct {p0, p1, v0}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->reportPMETandMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KCUPA_SETTINGS"

    const-string v0, "SETTINGS.ON_ERROR_TIME_ELAPSED"

    .line 181
    iget-wide v1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->elapsedTimeOfRestCall:J

    .line 182
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->reportPMETAndMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object p1, Lcom/amazon/versioning/data/enums/RestRequestState;->CACHED_ERROR:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object p1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    .line 184
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;

    if-eqz p1, :cond_0

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onErrorCode: listener firing failure event"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;

    invoke-interface {p1}, Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;->onUpdateSettingFailed()V

    .line 187
    invoke-direct {p0}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->clearListenerValuesAndRequestStatus()V

    goto :goto_0

    .line 189
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onErrorCode: listener null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onException(Ljava/lang/Exception;)V
    .locals 4

    monitor-enter p0

    .line 156
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->startTimeOfRestCall:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->elapsedTimeOfRestCall:J

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onException: rest call completion took "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->elapsedTimeOfRestCall:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string p1, "KCUPA_SETTINGS"

    const-string v0, "SETTINGS.TOGGLE_ABU_EXCEPTION"

    .line 159
    invoke-direct {p0, p1, v0}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->reportPMETandMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "KCUPA_SETTINGS"

    const-string v0, "SETTINGS.ON_EXCEPTION_TIME_ELAPSED"

    .line 160
    iget-wide v1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->elapsedTimeOfRestCall:J

    .line 161
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->reportPMETAndMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object p1, Lcom/amazon/versioning/data/enums/RestRequestState;->CACHED_ERROR:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object p1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    .line 163
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;

    if-eqz p1, :cond_0

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onException: listener firing failure event"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;

    invoke-interface {p1}, Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;->onUpdateSettingFailed()V

    .line 166
    invoke-direct {p0}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->clearListenerValuesAndRequestStatus()V

    goto :goto_0

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onException: listener null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onResponse(Lcom/amazon/versioning/data/UpdateSetting;)V
    .locals 4

    monitor-enter p0

    .line 131
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->startTimeOfRestCall:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->elapsedTimeOfRestCall:J

    const-string v0, "KCUPA_SETTINGS"

    const-string v1, "SETTINGS.SUCCESSFULLY_LOADED"

    .line 133
    invoke-direct {p0, v0, v1}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->reportPMETandMetadata(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KCUPA_SETTINGS"

    const-string v1, "SETTINGS.ON_SUCCESS_TIME_ELAPSED"

    .line 134
    iget-wide v2, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->elapsedTimeOfRestCall:J

    .line 135
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->reportPMETAndMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onResponse: rest call completion took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->elapsedTimeOfRestCall:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/amazon/versioning/data/enums/RestRequestState;->CACHED_SUCCESS:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object v0, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    .line 140
    iput-object p1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->cachedSettingValue:Lcom/amazon/versioning/data/UpdateSetting;

    .line 142
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;

    if-eqz p1, :cond_0

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onResponse: listener found returning the result"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;

    iget-object v0, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->cachedSettingValue:Lcom/amazon/versioning/data/UpdateSetting;

    invoke-interface {p1, v0}, Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;->onUpdateSettingActive(Lcom/amazon/versioning/data/UpdateSetting;)V

    .line 145
    invoke-direct {p0}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->clearListenerValuesAndRequestStatus()V

    goto :goto_0

    .line 147
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "onResponse: listener null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/amazon/versioning/data/UpdateSetting;

    invoke-virtual {p0, p1}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->onResponse(Lcom/amazon/versioning/data/UpdateSetting;)V

    return-void
.end method

.method public declared-synchronized removeOnCompletelistener()V
    .locals 2

    monitor-enter p0

    .line 41
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeOnCompletelistener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSetting(Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;)V
    .locals 2

    monitor-enter p0

    .line 97
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fetchNextThreshold: assigning new listener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fetchNextThreshold: current status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;

    .line 101
    sget-object p1, Lcom/amazon/versioning/provider/UpdateSettingProvider$1;->$SwitchMap$com$amazon$versioning$data$enums$RestRequestState:[I

    iget-object v0, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const-string p1, "KCUPA"

    .line 121
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->CLASS_TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setSetting: cannot be handled, unknown restRequestState "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->startTimeOfRestCall:J

    .line 112
    new-instance p1, Lcom/amazon/versioning/service/KCUPSHandler;

    invoke-direct {p1}, Lcom/amazon/versioning/service/KCUPSHandler;-><init>()V

    .line 113
    invoke-virtual {p1, p0, p2}, Lcom/amazon/versioning/service/KCUPSHandler;->placePostUpdateSettingCallWithListener(Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;)V

    .line 114
    sget-object p1, Lcom/amazon/versioning/data/enums/RestRequestState;->OUTGOING_REQUEST:Lcom/amazon/versioning/data/enums/RestRequestState;

    iput-object p1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->restRequestState:Lcom/amazon/versioning/data/enums/RestRequestState;

    goto :goto_0

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;

    invoke-interface {p1}, Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;->onUpdateSettingFailed()V

    .line 108
    invoke-direct {p0}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->clearListenerValuesAndRequestStatus()V

    goto :goto_0

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->onCompleteListener:Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;

    iget-object p2, p0, Lcom/amazon/versioning/provider/UpdateSettingProvider;->cachedSettingValue:Lcom/amazon/versioning/data/UpdateSetting;

    invoke-interface {p1, p2}, Lcom/amazon/versioning/interfaces/SettingProviderOnCompleteListener;->onUpdateSettingActive(Lcom/amazon/versioning/data/UpdateSetting;)V

    .line 104
    invoke-direct {p0}, Lcom/amazon/versioning/provider/UpdateSettingProvider;->clearListenerValuesAndRequestStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
