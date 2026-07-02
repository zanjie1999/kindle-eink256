.class public Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;
.super Ljava/lang/Object;
.source "FirstPageRenderLock.java"


# instance fields
.field private final PAGE_RENDER_TIMEOUT:I

.field private firstPageRendered:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 17
    iput v0, p0, Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;->PAGE_RENDER_TIMEOUT:I

    .line 21
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;->firstPageRendered:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public notifyPageRendered()V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;->firstPageRendered:Ljava/lang/Boolean;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "notifying of page render"

    const/4 v2, 0x1

    .line 25
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 27
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;->firstPageRendered:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 28
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;->firstPageRendered:Ljava/lang/Boolean;

    const-string/jumbo v1, "notifying of page render"

    const/4 v2, 0x0

    .line 30
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 31
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForRenderedPage()V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;->firstPageRendered:Ljava/lang/Boolean;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;->firstPageRendered:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Waiting for page to render"

    const/4 v2, 0x1

    .line 38
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :try_start_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;->firstPageRendered:Ljava/lang/Boolean;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    const-string v1, "Waiting for page to render"

    const/4 v2, 0x0

    .line 43
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 45
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
