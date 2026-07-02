.class public Lcom/amazon/bookwizard/webview/WebViewManager;
.super Ljava/lang/Object;
.source "WebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/webview/WebViewManager$SingletonHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.bookwizard.webview.WebViewManager"


# instance fields
.field private active:Z

.field private activity:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

.field private isRefreshingWebView:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastRefresh:Ljava/util/Date;

.field private libraryVisible:Z

.field private pageLoaded:Z

.field private webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->isRefreshingWebView:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/bookwizard/webview/WebViewManager$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/bookwizard/webview/WebViewManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/bookwizard/webview/WebViewManager;)Lcom/amazon/bookwizard/webview/BookWizardWebView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/bookwizard/webview/WebViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/amazon/bookwizard/webview/WebViewManager;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->lastRefresh:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$502(Lcom/amazon/bookwizard/webview/WebViewManager;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->pageLoaded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/amazon/bookwizard/webview/WebViewManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->isRefreshingWebView:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/bookwizard/webview/WebViewManager;Ljava/lang/Runnable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/webview/WebViewManager;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/bookwizard/webview/WebViewManager;)Lcom/amazon/bookwizard/ui/BookWizardWebActivity;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->activity:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    return-object p0
.end method

.method static synthetic access$802(Lcom/amazon/bookwizard/webview/WebViewManager;Lcom/amazon/bookwizard/ui/BookWizardWebActivity;)Lcom/amazon/bookwizard/ui/BookWizardWebActivity;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->activity:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    return-object p1
.end method

.method static synthetic access$900(Lcom/amazon/bookwizard/webview/WebViewManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/bookwizard/webview/WebViewManager;->clearWebview()V

    return-void
.end method

.method private clearWebview()V
    .locals 2

    .line 165
    iget-boolean v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->active:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 166
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 167
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    .line 169
    iput-boolean v1, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->pageLoaded:Z

    .line 170
    iput-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->lastRefresh:Ljava/util/Date;

    .line 171
    sget-object v0, Lcom/amazon/bookwizard/webview/WebViewManager;->TAG:Ljava/lang/String;

    const-string v1, "Cleared webview"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_0
    sget-object v0, Lcom/amazon/bookwizard/webview/WebViewManager;->TAG:Ljava/lang/String;

    const-string v1, "Ignoring clear webview"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/amazon/bookwizard/webview/WebViewManager;
    .locals 1

    .line 53
    invoke-static {}, Lcom/amazon/bookwizard/webview/WebViewManager$SingletonHelper;->access$100()Lcom/amazon/bookwizard/webview/WebViewManager;

    move-result-object v0

    return-object v0
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->activity:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 296
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method flashNextUpdate()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->activity:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    if-nez v0, :cond_0

    return-void

    .line 270
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->flashNextUpdate()V

    return-void
.end method

.method public declared-synchronized getWebView(Landroid/content/Context;)Lcom/amazon/bookwizard/webview/BookWizardWebView;
    .locals 1

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/amazon/bookwizard/webview/BookWizardWebView;

    invoke-direct {v0, p1}, Lcom/amazon/bookwizard/webview/BookWizardWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isPageLoaded()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->pageLoaded:Z

    return v0
.end method

.method public onExit()V
    .locals 2

    .line 181
    sget-object v0, Lcom/amazon/bookwizard/webview/WebViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onExit"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->setActive(Z)V

    .line 184
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->activity:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    .line 185
    new-instance v1, Lcom/amazon/bookwizard/webview/WebViewManager$2;

    invoke-direct {v1, p0, v0}, Lcom/amazon/bookwizard/webview/WebViewManager$2;-><init>(Lcom/amazon/bookwizard/webview/WebViewManager;Lcom/amazon/bookwizard/ui/BookWizardWebActivity;)V

    invoke-direct {p0, v1}, Lcom/amazon/bookwizard/webview/WebViewManager;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method onPageLoaded()V
    .locals 1

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->pageLoaded:Z

    .line 242
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->activity:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    if-nez v0, :cond_0

    return-void

    .line 245
    :cond_0
    new-instance v0, Lcom/amazon/bookwizard/webview/WebViewManager$4;

    invoke-direct {v0, p0}, Lcom/amazon/bookwizard/webview/WebViewManager$4;-><init>(Lcom/amazon/bookwizard/webview/WebViewManager;)V

    invoke-direct {p0, v0}, Lcom/amazon/bookwizard/webview/WebViewManager;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "onTrimMemory"
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    if-nez v0, :cond_0

    return-void

    .line 207
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->active:Z

    if-eqz v0, :cond_1

    .line 208
    sget-object p1, Lcom/amazon/bookwizard/webview/WebViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "not clearing webview since ACTIVE"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 212
    :cond_1
    sget-object v0, Lcom/amazon/bookwizard/webview/WebViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrimMemory ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: libraryVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->libraryVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 216
    :cond_2
    iget-boolean p1, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->libraryVisible:Z

    if-eqz p1, :cond_3

    goto :goto_1

    .line 227
    :cond_3
    :goto_0
    new-instance p1, Lcom/amazon/bookwizard/webview/WebViewManager$3;

    invoke-direct {p1, p0}, Lcom/amazon/bookwizard/webview/WebViewManager$3;-><init>(Lcom/amazon/bookwizard/webview/WebViewManager;)V

    invoke-direct {p0, p1}, Lcom/amazon/bookwizard/webview/WebViewManager;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public declared-synchronized refreshWebView()V
    .locals 3

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lcom/amazon/bookwizard/webview/WebViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "webview not initialized for refresh"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 71
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    sget-object v0, Lcom/amazon/bookwizard/webview/WebViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "webview not refreshed: no connection"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 76
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->lastRefresh:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->lastRefresh:Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DateUtils;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->isRefreshingWebView:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 77
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    sget-object v0, Lcom/amazon/bookwizard/webview/WebViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start refreshing WebView"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getTaskExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazon/bookwizard/webview/WebViewManager$1;

    invoke-direct {v1, p0}, Lcom/amazon/bookwizard/webview/WebViewManager$1;-><init>(Lcom/amazon/bookwizard/webview/WebViewManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 107
    :cond_3
    sget-object v0, Lcom/amazon/bookwizard/webview/WebViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cachedWebView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->webView:Lcom/amazon/bookwizard/webview/BookWizardWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->active:Z

    return-void
.end method

.method public setActivity(Lcom/amazon/bookwizard/ui/BookWizardWebActivity;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->activity:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    return-void
.end method

.method public setLibraryVisible(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->libraryVisible:Z

    return-void
.end method

.method showNetworkErrorDialog(Ljava/lang/String;)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->activity:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->showNetworkErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method updateVisibility()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/amazon/bookwizard/webview/WebViewManager;->activity:Lcom/amazon/bookwizard/ui/BookWizardWebActivity;

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/bookwizard/ui/BookWizardWebActivity;->updateVisibility()V

    return-void
.end method
