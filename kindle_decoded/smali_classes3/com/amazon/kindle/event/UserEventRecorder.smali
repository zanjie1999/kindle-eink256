.class public Lcom/amazon/kindle/event/UserEventRecorder;
.super Ljava/lang/Object;
.source "UserEventRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/event/UserEventRecorder$UserEventRecorderSingleton;
    }
.end annotation


# static fields
.field private static final REFERRAL_PREFS:Ljava/lang/String; = "ReferralPrefs"

.field private static final REGISTRATIONS_FOR_VERSION_PREFIX:Ljava/lang/String; = "RegCount_v_"

.field private static final REGISTRATION_COUNT:Ljava/lang/String; = "RegCount"

.field private static final STARTS_FOR_VERSION_PREFIX:Ljava/lang/String; = "StartCount_v_"

.field private static final START_COUNT:Ljava/lang/String; = "StartCount"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appVersion:Ljava/lang/String;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kindle/event/UserEventRecorder;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/event/UserEventRecorder;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/event/UserEventRecorder;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/event/UserEventRecorder;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 101
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ReferralPrefs"

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/event/UserEventRecorder;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 104
    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getVersionString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/event/UserEventRecorder;->appVersion:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/event/UserEventRecorder$1;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/kindle/event/UserEventRecorder;-><init>()V

    return-void
.end method

.method private getCount(Ljava/lang/String;)J
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/amazon/kindle/event/UserEventRecorder;->sharedPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/amazon/kindle/event/UserEventRecorder;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/kindle/event/UserEventRecorder$UserEventRecorderSingleton;->INSTANCE:Lcom/amazon/kindle/event/UserEventRecorder;

    return-object v0
.end method

.method private incrementLong(Ljava/lang/String;)J
    .locals 5

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/event/UserEventRecorder;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/amazon/kindle/event/UserEventRecorder;->sharedPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    .line 119
    invoke-interface {v0, p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-wide v1
.end method


# virtual methods
.method public getRegs()Ljava/lang/String;
    .locals 2

    const-string v0, "RegCount"

    .line 154
    invoke-direct {p0, v0}, Lcom/amazon/kindle/event/UserEventRecorder;->getCount(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegsForVersion()Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegCount_v_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/event/UserEventRecorder;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/event/UserEventRecorder;->getCount(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStarts()Ljava/lang/String;
    .locals 2

    const-string v0, "StartCount"

    .line 140
    invoke-direct {p0, v0}, Lcom/amazon/kindle/event/UserEventRecorder;->getCount(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartsForVersion()Ljava/lang/String;
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartCount_v_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/event/UserEventRecorder;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/event/UserEventRecorder;->getCount(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAppRegistered()V
    .locals 5

    .line 79
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/UserEventRecorder;->TAG:Ljava/lang/String;

    const-string v2, "AppRegister"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegCount"

    .line 80
    invoke-direct {p0, v0}, Lcom/amazon/kindle/event/UserEventRecorder;->incrementLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 83
    new-instance v0, Lcom/amazon/kindle/event/UserEvent;

    sget-object v1, Lcom/amazon/kindle/event/UserEvent$EventType;->FIRST_REGISTRATION:Lcom/amazon/kindle/event/UserEvent$EventType;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/event/UserEvent;-><init>(Lcom/amazon/kindle/event/UserEvent$EventType;)V

    .line 84
    iget-object v1, p0, Lcom/amazon/kindle/event/UserEventRecorder;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 85
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/UserEventRecorder;->TAG:Ljava/lang/String;

    const-string v4, "AppFirstRegister"

    invoke-virtual {v0, v1, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegCount_v_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/event/UserEventRecorder;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/event/UserEventRecorder;->incrementLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "First registration for version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/event/UserEventRecorder;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    new-instance v0, Lcom/amazon/kindle/event/UserEvent;

    sget-object v1, Lcom/amazon/kindle/event/UserEvent$EventType;->FIRST_REGISTRATION_FOR_VERSION:Lcom/amazon/kindle/event/UserEvent$EventType;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/event/UserEvent;-><init>(Lcom/amazon/kindle/event/UserEvent$EventType;)V

    .line 91
    iget-object v1, p0, Lcom/amazon/kindle/event/UserEventRecorder;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 92
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/UserEventRecorder;->TAG:Ljava/lang/String;

    const-string v2, "AppFirstRegisterVersion"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isAnnotationsSyncEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->sendAnnotationBackupSettingState(Z)V

    return-void
.end method

.method public onAppStarted()V
    .locals 5

    .line 49
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/UserEventRecorder;->TAG:Ljava/lang/String;

    const-string v2, "AppStart"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StartCount"

    .line 50
    invoke-direct {p0, v0}, Lcom/amazon/kindle/event/UserEventRecorder;->incrementLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 53
    new-instance v0, Lcom/amazon/kindle/event/UserEvent;

    sget-object v1, Lcom/amazon/kindle/event/UserEvent$EventType;->FIRST_START:Lcom/amazon/kindle/event/UserEvent$EventType;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/event/UserEvent;-><init>(Lcom/amazon/kindle/event/UserEvent$EventType;)V

    .line 54
    iget-object v1, p0, Lcom/amazon/kindle/event/UserEventRecorder;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 55
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/UserEventRecorder;->TAG:Ljava/lang/String;

    const-string v4, "AppFirstStart"

    invoke-virtual {v0, v1, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartCount_v_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/event/UserEventRecorder;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/event/UserEventRecorder;->incrementLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "First start for version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/event/UserEventRecorder;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/amazon/kindle/event/UserEvent;

    sget-object v1, Lcom/amazon/kindle/event/UserEvent$EventType;->FIRST_START_FOR_VERSION:Lcom/amazon/kindle/event/UserEvent$EventType;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/event/UserEvent;-><init>(Lcom/amazon/kindle/event/UserEvent$EventType;)V

    .line 61
    iget-object v1, p0, Lcom/amazon/kindle/event/UserEventRecorder;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 62
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/UserEventRecorder;->TAG:Ljava/lang/String;

    const-string v2, "AppFirstStartVersion"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAmazonAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isAnnotationsSyncEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/amazon/kcp/readingstreams/ReadingStreamUtil;->sendAnnotationBackupSettingState(Z)V

    :cond_1
    return-void
.end method

.method public resetData()V
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/event/UserEventRecorder;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "StartCount"

    .line 129
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartCount_v_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/event/UserEventRecorder;->appVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v3, "RegCount"

    .line 131
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RegCount_v_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kindle/event/UserEventRecorder;->appVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
