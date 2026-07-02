.class public Lcom/amazon/kcp/reader/ui/LayoutCache;
.super Ljava/lang/Object;
.source "LayoutCache.java"


# static fields
.field private static volatile INSTANCE:Lcom/amazon/kcp/reader/ui/LayoutCache;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private curThemeId:I

.field private layoutMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private themedContext:Landroid/view/ContextThemeWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/kcp/reader/ui/LayoutCache;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/LayoutCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/LayoutCache;->layoutMap:Ljava/util/Map;

    .line 45
    invoke-static {}, Lcom/amazon/android/util/UIUtils;->getThemeForColorMode()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/LayoutCache;->curThemeId:I

    .line 46
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lcom/amazon/kcp/reader/ui/LayoutCache;->curThemeId:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/LayoutCache;->themedContext:Landroid/view/ContextThemeWrapper;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/amazon/kcp/reader/ui/LayoutCache;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/kcp/reader/ui/LayoutCache;->INSTANCE:Lcom/amazon/kcp/reader/ui/LayoutCache;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/amazon/kcp/reader/ui/LayoutCache;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/LayoutCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/LayoutCache;->INSTANCE:Lcom/amazon/kcp/reader/ui/LayoutCache;

    .line 41
    :cond_0
    sget-object p0, Lcom/amazon/kcp/reader/ui/LayoutCache;->INSTANCE:Lcom/amazon/kcp/reader/ui/LayoutCache;

    return-object p0
.end method


# virtual methods
.method public getLayout(I)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Landroid/view/View;",
            ">(I)TK;"
        }
    .end annotation

    .line 50
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 51
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 52
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v3, Lcom/amazon/kcp/reader/ui/LayoutCache$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/amazon/kcp/reader/ui/LayoutCache$1;-><init>(Lcom/amazon/kcp/reader/ui/LayoutCache;ILjava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v3}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    .line 61
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    sget-object v1, Lcom/amazon/kcp/reader/ui/LayoutCache;->TAG:Ljava/lang/String;

    const-string v3, "Something wrong with layout initialization"

    invoke-static {v1, v3, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    :cond_0
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start getting or generating BookLayout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/LayoutCache;->layoutMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/LayoutCache;->layoutMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_1

    .line 76
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/LayoutCache;->layoutMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :goto_1
    invoke-static {}, Lcom/amazon/android/util/UIUtils;->getThemeForColorMode()I

    move-result v1

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_2

    .line 84
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start generating BookLayout"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    :cond_4
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/LayoutCache;->themedContext:Landroid/view/ContextThemeWrapper;

    invoke-virtual {v3, v1}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 89
    iput v1, p0, Lcom/amazon/kcp/reader/ui/LayoutCache;->curThemeId:I

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inflate BookLayout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 91
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/LayoutCache;->themedContext:Landroid/view/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 97
    :goto_2
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish getting or generating BookLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_5
    return-object v0
.end method
