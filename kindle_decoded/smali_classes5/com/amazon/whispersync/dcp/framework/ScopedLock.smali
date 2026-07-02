.class public Lcom/amazon/whispersync/dcp/framework/ScopedLock;
.super Ljava/lang/Object;
.source "ScopedLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/ScopedLock$ProtectedCallable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ScopedLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method


# virtual methods
.method public ensureLocked()V
    .locals 0

    return-void
.end method

.method public underScopedLock(Lcom/amazon/whispersync/dcp/framework/ScopedLock$ProtectedCallable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/amazon/whispersync/dcp/framework/ScopedLock$ProtectedCallable<",
            "TT;TE;>;)TT;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ScopedLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 20
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/whispersync/dcp/framework/ScopedLock$ProtectedCallable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ScopedLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ScopedLock;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
