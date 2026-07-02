.class public Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer;
.super Ljava/lang/Thread;
.source "Finalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer$ShutDown;
    }
.end annotation


# static fields
.field private static final FINALIZABLE_REFERENCE:Ljava/lang/String; = "com.amazon.whispersync.com.google.inject.internal.util.$FinalizableReference"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final finalizableReferenceClassReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final frqReference:Ljava/lang/ref/PhantomReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/PhantomReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 92
    const-class v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 94
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer;->finalizableReferenceClassReference:Ljava/lang/ref/WeakReference;

    .line 98
    new-instance p1, Ljava/lang/ref/PhantomReference;

    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1, p2, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer;->frqReference:Ljava/lang/ref/PhantomReference;

    const/4 p1, 0x1

    .line 100
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-void
.end method

.method private cleanUp(Ljava/lang/ref/Reference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer$ShutDown;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer;->getFinalizeReferentMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 130
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 132
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer;->frqReference:Ljava/lang/ref/PhantomReference;

    if-eq p1, v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 141
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 143
    sget-object v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "Error cleaning up after reference."

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    :goto_0
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 137
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer$ShutDown;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer$ShutDown;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer$1;)V

    throw p1
.end method

.method private getFinalizeReferentMethod()Ljava/lang/reflect/Method;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer$ShutDown;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer;->finalizableReferenceClassReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "finalizeReferent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    .line 171
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 173
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 168
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer$ShutDown;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer$ShutDown;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer$1;)V

    throw v0
.end method

.method public static startFinalizer(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/ref/ReferenceQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.whispersync.com.google.inject.internal.util.$FinalizableReference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    iget-object p0, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer;->queue:Ljava/lang/ref/ReferenceQueue;

    return-object p0

    .line 77
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Expected com.google.inject.internal.util.FinalizableReference."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 114
    :catch_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer;->cleanUp(Ljava/lang/ref/Reference;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/util/$Finalizer$ShutDown; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_1
    return-void
.end method
