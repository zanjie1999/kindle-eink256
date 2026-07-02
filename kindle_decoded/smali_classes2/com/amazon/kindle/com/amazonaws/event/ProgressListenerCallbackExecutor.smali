.class public Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;
.super Ljava/lang/Object;
.source "ProgressListenerCallbackExecutor.java"


# static fields
.field static executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final listener:Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;->createNewExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;->listener:Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;->listener:Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;)Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;->listener:Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;

    return-object p0
.end method

.method static createNewExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 116
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor$3;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor$3;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static wrapListener(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 107
    :cond_0
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;-><init>(Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public progressChanged(Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;->listener:Lcom/amazon/kindle/com/amazonaws/event/ProgressListener;

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor$2;-><init>(Lcom/amazon/kindle/com/amazonaws/event/ProgressListenerCallbackExecutor;Lcom/amazon/kindle/com/amazonaws/event/ProgressEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
