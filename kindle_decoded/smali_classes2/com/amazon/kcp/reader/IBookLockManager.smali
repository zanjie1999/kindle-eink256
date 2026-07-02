.class public interface abstract Lcom/amazon/kcp/reader/IBookLockManager;
.super Ljava/lang/Object;
.source "IBookLockManager.java"


# virtual methods
.method public abstract getLock(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.end method

.method public abstract unLock()V
.end method
