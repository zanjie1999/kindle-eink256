.class public abstract Lcom/amazon/reader/notifications/impl/SettingsTask;
.super Ljava/lang/Object;
.source "SettingsTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final deviceAttributes:Lcom/amazon/reader/notifications/DeviceAttributes;

.field private notificationsSNSClient:Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;

.field protected final settingsManager:Lcom/amazon/reader/notifications/impl/SettingsManager;

.field private final statusListener:Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/reader/notifications/impl/SettingsTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/reader/notifications/impl/SettingsTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;)V
    .locals 6

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/amazon/reader/notifications/impl/SettingsTask;->deviceAttributes:Lcom/amazon/reader/notifications/DeviceAttributes;

    .line 61
    iput-object p3, p0, Lcom/amazon/reader/notifications/impl/SettingsTask;->statusListener:Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;

    .line 62
    iput-object p1, p0, Lcom/amazon/reader/notifications/impl/SettingsTask;->context:Landroid/content/Context;

    .line 63
    iput-object p4, p0, Lcom/amazon/reader/notifications/impl/SettingsTask;->notificationsSNSClient:Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;

    .line 65
    new-instance p1, Lcom/amazon/reader/notifications/impl/SettingsManager;

    iget-object v1, p0, Lcom/amazon/reader/notifications/impl/SettingsTask;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/reader/notifications/impl/SettingsTask;->deviceAttributes:Lcom/amazon/reader/notifications/DeviceAttributes;

    iget-object v3, p0, Lcom/amazon/reader/notifications/impl/SettingsTask;->statusListener:Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;

    iget-object v4, p0, Lcom/amazon/reader/notifications/impl/SettingsTask;->notificationsSNSClient:Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;

    move-object v0, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/reader/notifications/impl/SettingsManager;-><init>(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;Lcom/amazon/reader/notifications/impl/SettingsTask;)V

    iput-object p1, p0, Lcom/amazon/reader/notifications/impl/SettingsTask;->settingsManager:Lcom/amazon/reader/notifications/impl/SettingsManager;

    return-void
.end method


# virtual methods
.method protected abstract getRegistrationToken(Landroid/content/Context;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public run()V
    .locals 3

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/SettingsTask;->settingsManager:Lcom/amazon/reader/notifications/impl/SettingsManager;

    invoke-virtual {v0}, Lcom/amazon/reader/notifications/impl/SettingsManager;->run()Lcom/amazon/reader/notifications/impl/RegistrationStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 89
    sget-object v1, Lcom/amazon/reader/notifications/impl/SettingsTask;->TAG:Ljava/lang/String;

    const-string v2, "Exception while trying to register"

    invoke-static {v1, v2, v0}, Lcom/amazon/reader/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    iget-object v1, p0, Lcom/amazon/reader/notifications/impl/SettingsTask;->statusListener:Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;

    invoke-interface {v1, v0}, Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;->onException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
