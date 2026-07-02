.class public Lcom/amazon/reader/notifications/impl/RegistrationTaskFPT;
.super Lcom/amazon/reader/notifications/impl/SettingsTask;
.source "RegistrationTaskFPT.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/reader/notifications/impl/RegistrationTaskFPT;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/reader/notifications/impl/RegistrationTaskFPT;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;)V
    .locals 2

    .line 35
    new-instance v0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;

    new-instance v1, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;

    invoke-direct {v1}, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;-><init>(Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/reader/notifications/impl/SettingsTask;-><init>(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;)V

    return-void
.end method


# virtual methods
.method protected getRegistrationToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    sget-object v0, Lcom/amazon/reader/notifications/impl/RegistrationTaskFPT;->TAG:Ljava/lang/String;

    const-string v1, "Registering with ADM.."

    invoke-static {v0, v1}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/amazon/device/messaging/ADM;

    invoke-direct {v0, p1}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->startRegister()V

    .line 47
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public registerWithSNS(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/reader/notifications/DeviceAttributes;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/reader/notifications/exception/UnexpectedResponseException;
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;

    new-instance v1, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;

    invoke-direct {v1}, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;-><init>(Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;)V

    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, p1, p3, p2, v1}, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;->register(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
