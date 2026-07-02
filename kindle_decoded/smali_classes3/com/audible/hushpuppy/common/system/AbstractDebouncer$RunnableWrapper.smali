.class final Lcom/audible/hushpuppy/common/system/AbstractDebouncer$RunnableWrapper;
.super Ljava/lang/Object;
.source "AbstractDebouncer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/common/system/AbstractDebouncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RunnableWrapper"
.end annotation


# instance fields
.field private final runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/audible/hushpuppy/common/system/AbstractDebouncer;


# direct methods
.method private constructor <init>(Lcom/audible/hushpuppy/common/system/AbstractDebouncer;Ljava/lang/Runnable;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/audible/hushpuppy/common/system/AbstractDebouncer$RunnableWrapper;->this$0:Lcom/audible/hushpuppy/common/system/AbstractDebouncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/audible/hushpuppy/common/system/AbstractDebouncer$RunnableWrapper;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/hushpuppy/common/system/AbstractDebouncer;Ljava/lang/Runnable;Lcom/audible/hushpuppy/common/system/AbstractDebouncer$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/common/system/AbstractDebouncer$RunnableWrapper;-><init>(Lcom/audible/hushpuppy/common/system/AbstractDebouncer;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/common/system/AbstractDebouncer$RunnableWrapper;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    invoke-static {}, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->access$100()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v1

    const-string v2, "Runnable threw exception"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/audible/hushpuppy/common/system/AbstractDebouncer$RunnableWrapper;->this$0:Lcom/audible/hushpuppy/common/system/AbstractDebouncer;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->onAfterRun()V

    return-void
.end method
