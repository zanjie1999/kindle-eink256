.class public Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;
.super Lcom/amazon/reader/notifications/impl/SettingsTask;
.source "RegistrationTaskThirdParty.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fcmToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;)V
    .locals 2

    .line 42
    new-instance v0, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;

    new-instance v1, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;

    invoke-direct {v1}, Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;-><init>()V

    invoke-direct {v0, v1}, Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;-><init>(Lcom/amazon/reader/notifications/impl/AmazonSNSServiceClient;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/reader/notifications/impl/SettingsTask;-><init>(Landroid/content/Context;Lcom/amazon/reader/notifications/DeviceAttributes;Lcom/amazon/reader/notifications/ReaderNotificationsStatusCallback;Lcom/amazon/reader/notifications/impl/ReaderNotificationsSNSClient;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;->fcmToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;->fcmToken:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected getRegistrationToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    sget-object p1, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;->TAG:Ljava/lang/String;

    const-string v0, "Registering with FCM.."

    invoke-static {p1, v0}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;->fcmToken:Ljava/lang/String;

    .line 52
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 53
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty$1;-><init>(Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;Ljava/util/concurrent/CountDownLatch;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 72
    :try_start_0
    sget-object v0, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;->TAG:Ljava/lang/String;

    const-string v1, "Wait to get FCM token"

    invoke-static {v0, v1}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 74
    sget-object p1, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "unblocked, move on"

    invoke-static {p1, v0}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 79
    :goto_0
    sget-object p1, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RegistrationTaskThirdParty:getRegistrationToken return token to caller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;->fcmToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/amazon/reader/notifications/impl/RegistrationTaskThirdParty;->fcmToken:Ljava/lang/String;

    return-object p1
.end method
