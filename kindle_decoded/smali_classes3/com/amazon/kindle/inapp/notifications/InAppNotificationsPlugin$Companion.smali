.class public final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;
.super Ljava/lang/Object;
.source "InAppNotificationsPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getRequestQueue$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;)Lcom/android/volley/RequestQueue;
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setRequestQueue$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;Lcom/android/volley/RequestQueue;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->setRequestQueue(Lcom/android/volley/RequestQueue;)V

    return-void
.end method

.method public static final synthetic access$setSdk$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->setSdk(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method

.method public static final synthetic access$setWeblabGateKeeper$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->setWeblabGateKeeper(Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;)V

    return-void
.end method

.method private final getNUM_REQUEST_QUEUE_THREADS()I
    .locals 1

    .line 82
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->access$getNUM_REQUEST_QUEUE_THREADS$cp()I

    move-result v0

    return v0
.end method

.method private final getRequestQueue()Lcom/android/volley/RequestQueue;
    .locals 1

    .line 92
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->access$getRequestQueue$cp()Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method private final setRequestQueue(Lcom/android/volley/RequestQueue;)V
    .locals 0

    .line 92
    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->access$setRequestQueue$cp(Lcom/android/volley/RequestQueue;)V

    return-void
.end method

.method private final setSdk(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 84
    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->access$setSdk$cp(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method

.method private final setWeblabGateKeeper(Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;)V
    .locals 0

    .line 87
    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->access$setWeblabGateKeeper$cp(Lcom/amazon/kindle/inapp/notifications/weblab/WeblabGateKeeper;)V

    return-void
.end method


# virtual methods
.method public final getMainActivity()Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;
    .locals 1

    .line 90
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->access$getMainActivity$cp()Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 10

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 115
    new-instance v0, Lcom/android/volley/toolbox/DiskBasedCache;

    sget-object v2, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;

    invoke-virtual {v2, p1}, Lcom/amazon/kindle/inapp/notifications/util/InAppNotificationsUtil;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    .line 116
    new-instance v2, Lcom/android/volley/toolbox/BasicNetwork;

    new-instance v9, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kindle/inapp/notifications/http/AuthenticationAwareHurlStack;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/AuthenticationType;Ljava/net/CookieManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v2, v9}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 117
    new-instance p1, Lcom/android/volley/RequestQueue;

    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getNUM_REQUEST_QUEUE_THREADS()I

    move-result v3

    invoke-direct {p1, v0, v2, v3}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->setRequestQueue(Lcom/android/volley/RequestQueue;)V

    .line 118
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/RequestQueue;->start()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 120
    :cond_1
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    const/4 v0, 0x0

    throw v0

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SDK has not been initialized!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 84
    invoke-static {}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->access$getSdk$cp()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    return-object v0
.end method

.method public final setMainActivity(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V
    .locals 0

    .line 90
    invoke-static {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->access$setMainActivity$cp(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V

    return-void
.end method
