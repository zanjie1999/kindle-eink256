.class public Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;
.super Ljava/lang/Object;
.source "AccessiblePageSwipePlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TONE_DURATION:I = 0x64


# instance fields
.field private volatile accessiblePageSwipePlayer:Landroid/media/ToneGenerator;

.field private isPageSwipePlayerLoading:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->isPageSwipePlayerLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->accessiblePageSwipePlayer:Landroid/media/ToneGenerator;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->loadAccessiblePageSwipePlayer()V

    return-void
.end method

.method private loadAccessiblePageSwipePlayer()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->accessiblePageSwipePlayer:Landroid/media/ToneGenerator;

    if-nez v0, :cond_0

    .line 56
    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x3

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->accessiblePageSwipePlayer:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    sget-object v1, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in creating accessible page swipe player"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->isPageSwipePlayerLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->accessiblePageSwipePlayer:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->accessiblePageSwipePlayer:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->accessiblePageSwipePlayer:Landroid/media/ToneGenerator;

    :cond_0
    return-void
.end method

.method public lazyloadAccessiblePageSwipePlayer()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->isPageSwipePlayerLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer$1;-><init>(Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;)V

    .line 46
    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public startOrLoadAccessiblePageSwipePlayer()V
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->accessiblePageSwipePlayer:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->accessiblePageSwipePlayer:Landroid/media/ToneGenerator;

    const/16 v1, 0x21

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/accessibility/AccessiblePageSwipePlayer;->lazyloadAccessiblePageSwipePlayer()V

    :goto_0
    return-void
.end method
