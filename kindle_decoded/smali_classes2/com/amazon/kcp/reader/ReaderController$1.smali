.class Lcom/amazon/kcp/reader/ReaderController$1;
.super Ljava/lang/Object;
.source "ReaderController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderController;->closeCurrentBook(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$currentBookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 0

    .line 314
    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderController$1;->val$currentBookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderController$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 317
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBookLockManager()Lcom/amazon/kcp/reader/IBookLockManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderController$1;->val$currentBookInfo:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/IBookLockManager;->getLock(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 320
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
