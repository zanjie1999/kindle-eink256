.class public Lcom/amazon/kindle/FTUELoadingActivity;
.super Lcom/amazon/kindle/BaseFTUELoadingActivity;
.source "FTUELoadingActivity.java"


# static fields
.field private static final FTUE_STORE_REF_TAG:Ljava/lang/String; = "kindle_kfa_ftue_redirect"

.field private static final GO_TO_STORE_DELAY_MS:I = 0x3e8

.field private static final REFERRAL_VALIDITY_PERIOD_MS:J = 0x240c8400L

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/kindle/FTUELoadingActivity;


# instance fields
.field private closeSignal:Z

.field private waitForCloseSignal:Z

.field private volatile waitForCounter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/amazon/kindle/FTUELoadingActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/FTUELoadingActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcom/amazon/kindle/FTUELoadingActivity;->instance:Lcom/amazon/kindle/FTUELoadingActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/amazon/kindle/BaseFTUELoadingActivity;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/amazon/kindle/FTUELoadingActivity;->closeSignal:Z

    .line 50
    iput-boolean v0, p0, Lcom/amazon/kindle/FTUELoadingActivity;->waitForCloseSignal:Z

    .line 52
    iput-boolean v0, p0, Lcom/amazon/kindle/FTUELoadingActivity;->waitForCounter:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/FTUELoadingActivity;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/amazon/kindle/FTUELoadingActivity;->checkVisibleContentCount()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/kindle/FTUELoadingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkVisibleContentCount()V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/amazon/kindle/BaseFTUELoadingActivity;->getVisibleContentCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/amazon/kcp/application/sync/SyncHelper;->getLastSyncDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/FTUELoadingActivity;->tryToShowLibrary()Z

    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 143
    :goto_0
    iput-boolean v0, p0, Lcom/amazon/kindle/FTUELoadingActivity;->waitForCounter:Z

    return-void
.end method

.method public static forceClose()V
    .locals 3

    .line 254
    sget-object v0, Lcom/amazon/kindle/FTUELoadingActivity;->instance:Lcom/amazon/kindle/FTUELoadingActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/FTUELoadingActivity;->instance:Lcom/amazon/kindle/FTUELoadingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    const-class v0, Lcom/amazon/kindle/FTUELoadingActivity;

    monitor-enter v0

    .line 256
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/FTUELoadingActivity;->instance:Lcom/amazon/kindle/FTUELoadingActivity;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/FTUELoadingActivity;->instance:Lcom/amazon/kindle/FTUELoadingActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/FTUELoadingActivity;->instance:Lcom/amazon/kindle/FTUELoadingActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    sget-object v1, Lcom/amazon/kindle/FTUELoadingActivity;->instance:Lcom/amazon/kindle/FTUELoadingActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/amazon/kindle/FTUELoadingActivity;->closeSignal:Z

    .line 258
    sget-object v1, Lcom/amazon/kindle/FTUELoadingActivity;->instance:Lcom/amazon/kindle/FTUELoadingActivity;

    invoke-virtual {v1}, Lcom/amazon/kindle/FTUELoadingActivity;->finish()V

    .line 260
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method private shouldShowStore()Z
    .locals 5

    .line 175
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isStoreAccessAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/librarymodule/R$bool;->nuo_show_home_as_ftue:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 185
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceType()Lcom/amazon/kcp/application/AndroidDeviceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidDeviceType;->getAmazonDeviceType()Lcom/amazon/kcp/application/IAmazonDeviceType;

    move-result-object v0

    .line 186
    sget-object v2, Lcom/amazon/kcp/application/AmazonDeviceType;->REDDING:Lcom/amazon/kcp/application/AmazonDeviceType;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    invoke-static {v0}, Lcom/amazon/kcp/application/AmazonDeviceType;->isUnknownType(Lcom/amazon/kcp/application/IAmazonDeviceType;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 191
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    sget-object v4, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v2, v4}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v2

    .line 192
    sget-object v4, Lcom/amazon/kcp/application/AmazonDeviceType;->WHISKEYTOWN:Lcom/amazon/kcp/application/AmazonDeviceType;

    if-ne v0, v4, :cond_3

    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v3
.end method


# virtual methods
.method protected checkAndHandleKindlePlayerReferral()Z
    .locals 10

    .line 213
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "kp_market_referral_params"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "asin"

    .line 214
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    .line 218
    :try_start_0
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "location"

    const-string v3, "-1"

    .line 219
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "timestamp"

    const-wide/16 v6, 0x0

    .line 220
    invoke-interface {v0, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const-wide/32 v3, 0x240c8400

    cmp-long v0, v6, v3

    if-gtz v0, :cond_2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening ASIN "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-ltz v2, :cond_0

    .line 230
    new-instance v0, Lcom/amazon/kcp/reader/IReaderController$StartPagePosition;

    invoke-direct {v0, v2}, Lcom/amazon/kcp/reader/IReaderController$StartPagePosition;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kcp/reader/IReaderController$StartPageBeginning;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/IReaderController$StartPageBeginning;-><init>()V

    :goto_0
    move-object v8, v0

    const/4 v6, 0x1

    .line 231
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$EXTERNAL;

    const-string v0, "KindlePlayerReferral"

    invoke-direct {v9, v0}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$EXTERNAL;-><init>(Ljava/lang/String;)V

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/amazon/kcp/library/BookOpenHelper;->open(Landroid/app/Activity;Ljava/lang/String;ZLjava/lang/String;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/FTUELoadingActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 240
    sget-object v2, Lcom/amazon/kindle/FTUELoadingActivity;->TAG:Ljava/lang/String;

    const-string v3, "Exception occurred while checking for Kindle Player referral params"

    invoke-static {v2, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return v1
.end method

.method public finish()V
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/amazon/kindle/FTUELoadingActivity;->waitForCloseSignal:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/FTUELoadingActivity;->closeSignal:Z

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    invoke-super {p0}, Lcom/amazon/kindle/BaseFTUELoadingActivity;->finish()V

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->finishCalled:Z

    const/4 v0, 0x0

    .line 100
    sput-object v0, Lcom/amazon/kindle/FTUELoadingActivity;->instance:Lcom/amazon/kindle/FTUELoadingActivity;

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 247
    iget-boolean v0, p0, Lcom/amazon/kindle/FTUELoadingActivity;->waitForCloseSignal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lcom/amazon/kindle/FTUELoadingActivity;->closeSignal:Z

    .line 250
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onBackPressed()V

    return-void
.end method

.method public onCounterRegisteredEvent(Lcom/amazon/kcp/library/CounterRegisteredEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 127
    iget-boolean v0, p0, Lcom/amazon/kindle/FTUELoadingActivity;->waitForCounter:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/library/CounterRegisteredEvent;->getRegisteredKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ALL_ITEMS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/amazon/kindle/FTUELoadingActivity;->checkVisibleContentCount()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 58
    invoke-static {p0}, Lcom/amazon/kcp/util/ActivityUtils;->ensureSafeWindowBackground(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 62
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kindle/BaseFTUELoadingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sput-object p0, Lcom/amazon/kindle/FTUELoadingActivity;->instance:Lcom/amazon/kindle/FTUELoadingActivity;

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "wait_close_signal"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/FTUELoadingActivity;->waitForCloseSignal:Z

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 69
    invoke-super {p0}, Lcom/amazon/kindle/BaseFTUELoadingActivity;->onStart()V

    .line 70
    new-instance v0, Lcom/amazon/kindle/FTUELoadingActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/FTUELoadingActivity$1;-><init>(Lcom/amazon/kindle/FTUELoadingActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 76
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 79
    sget-object v0, Lcom/amazon/kindle/FTUELoadingActivity$4;->$SwitchMap$com$amazon$kcp$store$IWebStoreController$StoreCredentialStatus:[I

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/store/IWebStoreController;->getStoreCredentialStatus()Lcom/amazon/kcp/store/IWebStoreController$StoreCredentialStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/FTUELoadingActivity;->tryToShowLibrary()Z

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->storeCredentialsFetched:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method public onWebStoreCredentialsEvent(Lcom/amazon/kcp/store/WebStoreCredentialEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 108
    iget-boolean v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->finishCalled:Z

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    sget-object v0, Lcom/amazon/kindle/FTUELoadingActivity$4;->$SwitchMap$com$amazon$kcp$store$WebStoreCredentialEvent$EventType:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/store/WebStoreCredentialEvent;->getType()Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 120
    invoke-virtual {p0}, Lcom/amazon/kindle/FTUELoadingActivity;->tryToShowLibrary()Z

    goto :goto_0

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->storeCredentialsFetched:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/amazon/kindle/FTUELoadingActivity;->tryToShowStore()V

    :goto_0
    return-void
.end method

.method protected tryToShowLibrary()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/amazon/kindle/FTUELoadingActivity;->waitForCloseSignal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 203
    :cond_0
    invoke-super {p0}, Lcom/amazon/kindle/BaseFTUELoadingActivity;->tryToShowLibrary()Z

    move-result v0

    return v0
.end method

.method protected tryToShowStore()V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->ftueSyncFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->storeCredentialsFetched:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->hasSeenStore:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/amazon/kindle/FTUELoadingActivity;->shouldShowStore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/amazon/kindle/FTUELoadingActivity;->finish()V

    return-void

    .line 155
    :cond_0
    new-instance v0, Lcom/amazon/kindle/FTUELoadingActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/FTUELoadingActivity$2;-><init>(Lcom/amazon/kindle/FTUELoadingActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 161
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/kindle/FTUELoadingActivity$3;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/FTUELoadingActivity$3;-><init>(Lcom/amazon/kindle/FTUELoadingActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
