.class public Lcom/amazon/kcp/service/BackendInteractionService;
.super Lcom/amazon/kcp/service/ReddingService;
.source "BackendInteractionService.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/amazon/kcp/service/ReddingService;-><init>()V

    return-void
.end method

.method public static final synthetic access$startFTUE(Lcom/amazon/kcp/service/BackendInteractionService;Lcom/amazon/kcp/application/IKindleObjectFactory;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/kcp/service/BackendInteractionService;->startFTUE(Lcom/amazon/kcp/application/IKindleObjectFactory;)V

    return-void
.end method

.method public static synthetic performStart$KindleReaderLibrary_release$default(Lcom/amazon/kcp/service/BackendInteractionService;Ljava/lang/String;Lcom/amazon/kcp/application/IKindleObjectFactory;ILjava/lang/Object;)I
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 35
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    const-string p3, "Utils.getFactory()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/service/BackendInteractionService;->performStart$KindleReaderLibrary_release(Ljava/lang/String;Lcom/amazon/kcp/application/IKindleObjectFactory;)I

    move-result p0

    return p0

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: performStart"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final startFTUE(Lcom/amazon/kcp/application/IKindleObjectFactory;)V
    .locals 3

    .line 80
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->LOGIN:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 81
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    .line 83
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v1, "factory.authenticationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v0

    const-string v1, "phase_two_ftue_broadcast_received"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 87
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v0

    const-string v1, "store_cookies"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/CookieJar;->areCookiesValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/service/BackendInteractionServiceKt;->access$getTAG$p()Ljava/lang/String;

    .line 89
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/store/IWebStoreController;->updateStoreCookies()V

    :cond_2
    return-void
.end method


# virtual methods
.method public blockOnAppInit$KindleReaderLibrary_release()V
    .locals 0

    .line 95
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->blockOnAppInitialization()Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p2, "intent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x2

    invoke-static {p0, p1, p2, p3, p2}, Lcom/amazon/kcp/service/BackendInteractionService;->performStart$KindleReaderLibrary_release$default(Lcom/amazon/kcp/service/BackendInteractionService;Ljava/lang/String;Lcom/amazon/kcp/application/IKindleObjectFactory;ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public performStart$KindleReaderLibrary_release(Ljava/lang/String;Lcom/amazon/kcp/application/IKindleObjectFactory;)I
    .locals 2

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget v0, Lcom/amazon/kindle/krl/R$string;->bis_notification_desc:I

    const v1, 0xddba11

    invoke-virtual {p0, v1, v0}, Lcom/amazon/kcp/service/ReddingService;->startForegroundWithNotification(II)V

    .line 40
    invoke-static {}, Lcom/amazon/kcp/service/BackendInteractionServiceKt;->access$getTAG$p()Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/amazon/kcp/service/BackendInteractionService;->blockOnAppInit$KindleReaderLibrary_release()V

    if-nez p1, :cond_0

    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x2e437909

    if-eq v0, v1, :cond_2

    const v1, 0x14e4ca32

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "com.amazon.kindle.action.FTUE"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 45
    invoke-static {}, Lcom/amazon/kcp/service/BackendInteractionServiceKt;->access$getTAG$p()Ljava/lang/String;

    .line 47
    invoke-direct {p0, p2}, Lcom/amazon/kcp/service/BackendInteractionService;->startFTUE(Lcom/amazon/kcp/application/IKindleObjectFactory;)V

    goto :goto_2

    :cond_2
    const-string v0, "com.amazon.kindle.action.REGISTER"

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 51
    invoke-static {}, Lcom/amazon/kcp/service/BackendInteractionServiceKt;->access$getTAG$p()Ljava/lang/String;

    .line 52
    sget-object p1, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->INSTANCE:Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/FTUEPerformanceMetricsReporter;->setRegistrationStartTime(J)V

    .line 54
    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;

    move-result-object p1

    const-string v0, "accountProvider"

    .line 55
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAmazonAccount()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    .line 57
    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    const/4 v0, 0x0

    new-instance v1, Lcom/amazon/kcp/service/BackendInteractionService$performStart$1;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/service/BackendInteractionService$performStart$1;-><init>(Lcom/amazon/kcp/service/BackendInteractionService;Lcom/amazon/kcp/application/IKindleObjectFactory;)V

    invoke-interface {p1, v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->handleRegistration(Ljava/util/List;Lcom/amazon/kindle/callback/ICallback;)V

    const/4 p1, 0x3

    return p1

    .line 72
    :cond_4
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/service/BackendInteractionServiceKt;->access$getTAG$p()Ljava/lang/String;

    .line 75
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const/4 p1, 0x2

    return p1
.end method
