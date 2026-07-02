.class public Lcom/amazon/reader/notifications/impl/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# static fields
.field public static final ENDPOINT_ARN_KEY:Ljava/lang/String; = "endpointArn"

.field public static final LAST_SUCCESSFUL_REGISTERED_TIME_KEY:Ljava/lang/String; = "LastSuccessfulRegisteredTime"

.field static final ONE_WEEK_TIME:J

.field public static final PREF_FILENAME:Ljava/lang/String; = "Notifications.pref"

.field public static final REGISTER_CALL_COUNT_KEY:Ljava/lang/String; = "CallCount"

.field public static final REGISTRATION_THRESHOLD:I = 0xa

.field public static final SERIALIZED_DEVICE_ATTRIBUTES_KEY:Ljava/lang/String; = "serializedDeviceAttributes"

.field private static final TAG:Ljava/lang/String; = "com.amazon.reader.notifications.impl.SettingsManager"


# instance fields
.field private final context:Landroid/content/Context;

.field private final deviceAttributes:Lcom/amazon/reader/notifications/DeviceAttributes;

.field private notificationsSNSClient:Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;

.field private final settingsTask:Lcom/amazon/reader/notifications/impl/SettingsTask;

.field private final statusListener:Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/reader/notifications/impl/SettingsManager;->ONE_WEEK_TIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;Lcom/amazon/reader/notifications/impl/SettingsTask;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/amazon/reader/notifications/impl/SettingsManager;->deviceAttributes:Lcom/amazon/reader/notifications/DeviceAttributes;

    .line 82
    iput-object p3, p0, Lcom/amazon/reader/notifications/impl/SettingsManager;->statusListener:Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;

    .line 83
    iput-object p1, p0, Lcom/amazon/reader/notifications/impl/SettingsManager;->context:Landroid/content/Context;

    .line 84
    iput-object p4, p0, Lcom/amazon/reader/notifications/impl/SettingsManager;->notificationsSNSClient:Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;

    .line 85
    iput-object p5, p0, Lcom/amazon/reader/notifications/impl/SettingsManager;->settingsTask:Lcom/amazon/reader/notifications/impl/SettingsTask;

    return-void
.end method

.method private registerWithSNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/reader/notifications/exception/UnexpectedResponseException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/amazon/reader/notifications/impl/SettingsManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "Initiating registration with SNS token {%s}, existing endpoint {%s}"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/SettingsManager;->notificationsSNSClient:Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;

    iget-object v1, p0, Lcom/amazon/reader/notifications/impl/SettingsManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/reader/notifications/impl/SettingsManager;->deviceAttributes:Lcom/amazon/reader/notifications/DeviceAttributes;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;->register(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private shouldRegister(Lcom/amazon/reader/notifications/DeviceAttributes;Ljava/lang/String;JI)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 167
    invoke-static {p1}, Lcom/amazon/reader/notifications/impl/DeviceAttributesSerializer;->serializeWithDefaultTimestamp(Lcom/amazon/reader/notifications/DeviceAttributes;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xa

    if-ge p5, p1, :cond_1

    sub-long/2addr v0, p3

    sget-wide p1, Lcom/amazon/reader/notifications/impl/SettingsManager;->ONE_WEEK_TIME:J

    cmp-long p3, v0, p1

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method protected getRegistrationToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/SettingsManager;->settingsTask:Lcom/amazon/reader/notifications/impl/SettingsTask;

    invoke-virtual {v0, p1}, Lcom/amazon/reader/notifications/impl/SettingsTask;->getRegistrationToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public run()Lcom/amazon/reader/notifications/impl/RegistrationStatus;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lcom/amazon/reader/notifications/exception/UnexpectedResponseException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/SettingsManager;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "Notifications.pref"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "serializedDeviceAttributes"

    .line 105
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "LastSuccessfulRegisteredTime"

    const-wide/16 v4, 0x0

    .line 106
    invoke-interface {v0, v10, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v11, "CallCount"

    .line 107
    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v12, "endpointArn"

    .line 108
    invoke-interface {v0, v12, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    iget-object v5, p0, Lcom/amazon/reader/notifications/impl/SettingsManager;->deviceAttributes:Lcom/amazon/reader/notifications/DeviceAttributes;

    move-object v4, p0

    move v9, v1

    invoke-direct/range {v4 .. v9}, Lcom/amazon/reader/notifications/impl/SettingsManager;->shouldRegister(Lcom/amazon/reader/notifications/DeviceAttributes;Ljava/lang/String;JI)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 112
    sget-object v3, Lcom/amazon/reader/notifications/impl/SettingsManager;->TAG:Ljava/lang/String;

    const-string v4, "Skipping notification registration process"

    invoke-static {v3, v4}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v1, v5

    .line 113
    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    invoke-static {v2}, Lcom/amazon/reader/notifications/impl/RegistrationStatus;->skipped(Ljava/lang/String;)Lcom/amazon/reader/notifications/impl/RegistrationStatus;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    sget-object v1, Lcom/amazon/reader/notifications/impl/SettingsManager;->TAG:Ljava/lang/String;

    const-string v4, "Initiating device registration process"

    invoke-static {v1, v4}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/amazon/reader/notifications/impl/SettingsManager;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/amazon/reader/notifications/impl/SettingsManager;->getRegistrationToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 120
    sget-object v4, Lcom/amazon/reader/notifications/impl/SettingsManager;->TAG:Ljava/lang/String;

    const-string v6, "Finished device registration process. Received token."

    invoke-static {v4, v6}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v4, Lcom/amazon/reader/notifications/impl/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Registration token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    sget-object v0, Lcom/amazon/reader/notifications/impl/SettingsManager;->TAG:Ljava/lang/String;

    const-string v1, "The registration token is null. Hence, not registering with SNS"

    invoke-static {v0, v1}, Lcom/amazon/reader/notifications/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {v2}, Lcom/amazon/reader/notifications/impl/RegistrationStatus;->failed(Ljava/lang/String;)Lcom/amazon/reader/notifications/impl/RegistrationStatus;

    move-result-object v0

    return-object v0

    .line 131
    :cond_1
    sget-object v4, Lcom/amazon/reader/notifications/impl/SettingsManager;->TAG:Ljava/lang/String;

    const-string v6, "Registering with SNS - start"

    invoke-static {v4, v6}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0, v1, v2}, Lcom/amazon/reader/notifications/impl/SettingsManager;->registerWithSNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/amazon/reader/notifications/impl/SettingsManager;->deviceAttributes:Lcom/amazon/reader/notifications/DeviceAttributes;

    invoke-static {v2}, Lcom/amazon/reader/notifications/impl/DeviceAttributesSerializer;->serializeWithDefaultTimestamp(Lcom/amazon/reader/notifications/DeviceAttributes;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0, v12, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v10, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0, v11, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    sget-object v0, Lcom/amazon/reader/notifications/impl/SettingsManager;->TAG:Ljava/lang/String;

    const-string v2, "The SNS endpoint arn registration succeeded."

    invoke-static {v0, v2}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/amazon/reader/notifications/impl/SettingsManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The SNS endpoint arn is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/SettingsManager;->statusListener:Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;

    invoke-interface {v0, v1}, Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;->onSuccess(Ljava/lang/String;)V

    .line 145
    invoke-static {v1}, Lcom/amazon/reader/notifications/impl/RegistrationStatus;->registered(Ljava/lang/String;)Lcom/amazon/reader/notifications/impl/RegistrationStatus;

    move-result-object v0

    return-object v0
.end method
