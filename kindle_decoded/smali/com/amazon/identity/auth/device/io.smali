.class public Lcom/amazon/identity/auth/device/io;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private final rc:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/amazon/identity/auth/device/el;

    new-instance v1, Lcom/amazon/identity/auth/device/ip;

    invoke-direct {v1, p1}, Lcom/amazon/identity/auth/device/ip;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/el;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/io;->rc:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/identity/auth/device/io;->rc:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
