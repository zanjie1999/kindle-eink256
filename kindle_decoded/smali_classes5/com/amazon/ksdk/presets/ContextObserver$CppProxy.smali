.class final Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;
.super Lcom/amazon/ksdk/presets/ContextObserver;
.source "ContextObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ksdk/presets/ContextObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CppProxy"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final nativeRef:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 3

    .line 64
    invoke-direct {p0}, Lcom/amazon/ksdk/presets/ContextObserver;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 66
    iput-wide p1, p0, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->nativeRef:J

    return-void

    .line 65
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "nativeRef is zero"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private native nativeDestroy(J)V
.end method

.method private native native_onBookContextChanged(JLcom/amazon/ksdk/presets/BookContext;)V
.end method

.method private native native_onDeviceContextChanged(JLcom/amazon/ksdk/presets/DeviceContext;)V
.end method

.method private native native_onRemoveUserData(J)V
.end method

.method private native native_onUserContextChanged(JLcom/amazon/ksdk/presets/UserContext;)V
.end method

.method private native native_onViewContextChanged(JLcom/amazon/ksdk/presets/ViewContext;)V
.end method

.method private native native_onWeblabContextChanged(JLcom/amazon/ksdk/presets/WeblabContext;)V
.end method


# virtual methods
.method public _djinni_private_destroy()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->nativeDestroy(J)V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->_djinni_private_destroy()V

    .line 80
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    sget-object v1, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught Exception: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBookContextChanged(Lcom/amazon/ksdk/presets/BookContext;)V
    .locals 2

    .line 108
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->native_onBookContextChanged(JLcom/amazon/ksdk/presets/BookContext;)V

    return-void
.end method

.method public onDeviceContextChanged(Lcom/amazon/ksdk/presets/DeviceContext;)V
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->native_onDeviceContextChanged(JLcom/amazon/ksdk/presets/DeviceContext;)V

    return-void
.end method

.method public onRemoveUserData()V
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1}, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->native_onRemoveUserData(J)V

    return-void
.end method

.method public onUserContextChanged(Lcom/amazon/ksdk/presets/UserContext;)V
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->native_onUserContextChanged(JLcom/amazon/ksdk/presets/UserContext;)V

    return-void
.end method

.method public onViewContextChanged(Lcom/amazon/ksdk/presets/ViewContext;)V
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->native_onViewContextChanged(JLcom/amazon/ksdk/presets/ViewContext;)V

    return-void
.end method

.method public onWeblabContextChanged(Lcom/amazon/ksdk/presets/WeblabContext;)V
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->nativeRef:J

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/ksdk/presets/ContextObserver$CppProxy;->native_onWeblabContextChanged(JLcom/amazon/ksdk/presets/WeblabContext;)V

    return-void
.end method
