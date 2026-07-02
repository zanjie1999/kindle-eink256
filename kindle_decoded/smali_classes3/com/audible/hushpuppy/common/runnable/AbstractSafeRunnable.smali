.class public abstract Lcom/audible/hushpuppy/common/runnable/AbstractSafeRunnable;
.super Ljava/lang/Object;
.source "AbstractSafeRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final throwException:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/runnable/AbstractSafeRunnable;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/runnable/AbstractSafeRunnable;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Lcom/audible/hushpuppy/common/runnable/AbstractSafeRunnable;->throwException:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/runnable/AbstractSafeRunnable;->safeRun()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 36
    sget-object v1, Lcom/audible/hushpuppy/common/runnable/AbstractSafeRunnable;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Runnable threw exception"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    iget-boolean v1, p0, Lcom/audible/hushpuppy/common/runnable/AbstractSafeRunnable;->throwException:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    .line 38
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract safeRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
