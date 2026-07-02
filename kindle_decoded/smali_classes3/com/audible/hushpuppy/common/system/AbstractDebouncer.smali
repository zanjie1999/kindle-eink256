.class public abstract Lcom/audible/hushpuppy/common/system/AbstractDebouncer;
.super Ljava/lang/Object;
.source "AbstractDebouncer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/common/system/AbstractDebouncer$RunnableWrapper;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field protected final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 15
    sget-object v0, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method


# virtual methods
.method protected abstract handlePost(Ljava/lang/Runnable;)V
.end method

.method protected onAfterRun()V
    .locals 0

    return-void
.end method

.method public final post(Ljava/lang/Runnable;)V
    .locals 2

    .line 47
    new-instance v0, Lcom/audible/hushpuppy/common/system/AbstractDebouncer$RunnableWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/audible/hushpuppy/common/system/AbstractDebouncer$RunnableWrapper;-><init>(Lcom/audible/hushpuppy/common/system/AbstractDebouncer;Ljava/lang/Runnable;Lcom/audible/hushpuppy/common/system/AbstractDebouncer$1;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->handlePost(Ljava/lang/Runnable;)V

    return-void
.end method
