.class public Lcom/amazon/ku/KuBannerInfoManager;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "KuBannerInfoManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ku/KuBannerInfoManager$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ku.KuBannerInfoManager"


# instance fields
.field private kuBannerInfo:Lcom/amazon/ku/data/KuBannerInfo;

.field private openKuBook:Lcom/amazon/kindle/krx/content/IBook;

.field private request:Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;

.field private responseListener:Lcom/amazon/ku/service/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/ku/service/ResponseListener<",
            "Lcom/amazon/ku/data/KuBannerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 3

    .line 62
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    .line 43
    new-instance v0, Lcom/amazon/ku/KuBannerInfoManager$1;

    invoke-direct {v0, p0}, Lcom/amazon/ku/KuBannerInfoManager$1;-><init>(Lcom/amazon/ku/KuBannerInfoManager;)V

    iput-object v0, p0, Lcom/amazon/ku/KuBannerInfoManager;->responseListener:Lcom/amazon/ku/service/ResponseListener;

    .line 63
    iput-object p1, p0, Lcom/amazon/ku/KuBannerInfoManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 64
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "KuConversionPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/ku/KuBannerInfoManager;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 65
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 66
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerActivityLifecycleListener(Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/ku/KuBannerInfoManager$1;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/ku/KuBannerInfoManager;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method

.method static synthetic access$102(Lcom/amazon/ku/KuBannerInfoManager;Lcom/amazon/ku/data/KuBannerInfo;)Lcom/amazon/ku/data/KuBannerInfo;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/ku/KuBannerInfoManager;->kuBannerInfo:Lcom/amazon/ku/data/KuBannerInfo;

    return-object p1
.end method

.method static synthetic access$202(Lcom/amazon/ku/KuBannerInfoManager;Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;)Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/ku/KuBannerInfoManager;->request:Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/ku/KuBannerInfoManager;)Landroid/content/SharedPreferences;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/ku/KuBannerInfoManager;->sharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static getInstance()Lcom/amazon/ku/KuBannerInfoManager;
    .locals 1

    .line 40
    sget-object v0, Lcom/amazon/ku/KuBannerInfoManager$InstanceHolder;->instance:Lcom/amazon/ku/KuBannerInfoManager;

    return-object v0
.end method


# virtual methods
.method public getKuBannerInfo()Lcom/amazon/ku/data/KuBannerInfo;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/ku/KuBannerInfoManager;->kuBannerInfo:Lcom/amazon/ku/data/KuBannerInfo;

    return-object v0
.end method

.method public onActionBarVisibilityChange(Z)V
    .locals 0

    return-void
.end method

.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lcom/amazon/ku/KuBannerInfoManager;->openKuBook:Lcom/amazon/kindle/krx/content/IBook;

    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 90
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getOriginType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KindleUnlimited"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/amazon/ku/KuBannerInfoManager;->retrieveBannerInfo()V

    .line 92
    iput-object p1, p0, Lcom/amazon/ku/KuBannerInfoManager;->openKuBook:Lcom/amazon/kindle/krx/content/IBook;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onOverlayVisibilityChange(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/ku/KuBannerInfoManager;->openKuBook:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/amazon/ku/KuBannerInfoManager;->retrieveBannerInfo()V

    :cond_0
    return-void
.end method

.method public onSettingsChange()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public declared-synchronized retrieveBannerInfo()V
    .locals 3

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ku/KuBannerInfoManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "NeverShowBanner"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Lcom/amazon/ku/KuBannerInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "Already converted; skipping"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/ku/KuBannerInfoManager;->request:Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lcom/amazon/ku/KuBannerInfoManager;->TAG:Ljava/lang/String;

    const-string v1, "Request already queued; skipping"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 83
    :try_start_2
    iput-object v0, p0, Lcom/amazon/ku/KuBannerInfoManager;->kuBannerInfo:Lcom/amazon/ku/data/KuBannerInfo;

    .line 84
    new-instance v0, Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;

    iget-object v1, p0, Lcom/amazon/ku/KuBannerInfoManager;->responseListener:Lcom/amazon/ku/service/ResponseListener;

    invoke-direct {v0, v1}, Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;-><init>(Lcom/amazon/ku/service/ResponseListener;)V

    iput-object v0, p0, Lcom/amazon/ku/KuBannerInfoManager;->request:Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;

    .line 85
    iget-object v0, p0, Lcom/amazon/ku/KuBannerInfoManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ku/KuBannerInfoManager;->request:Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
