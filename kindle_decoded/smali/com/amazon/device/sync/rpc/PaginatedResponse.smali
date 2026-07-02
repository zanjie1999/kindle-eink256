.class public abstract Lcom/amazon/device/sync/rpc/PaginatedResponse;
.super Ljava/lang/Object;
.source "PaginatedResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCurrentPage:Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/sync/rpc/PaginatedResponse<",
            "TT;T",
            "L;",
            ">.Page<TT;T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;-><init>(Lcom/amazon/device/sync/rpc/PaginatedResponse;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse;->mCurrentPage:Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;

    return-void
.end method


# virtual methods
.method protected abstract createNextPage(Ljava/lang/String;)Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/device/sync/rpc/PaginatedResponse<",
            "TT;T",
            "L;",
            ">.Page<TT;T",
            "L;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getLinks()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse;->mCurrentPage:Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;

    invoke-virtual {v0}, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->getLinks()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNextPageUri()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse;->mCurrentPage:Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;

    invoke-virtual {v0}, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->getNextPageUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriptionUri()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse;->mCurrentPage:Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;

    invoke-virtual {v0}, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->getSubscriptionUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatesUri()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse;->mCurrentPage:Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;

    invoke-virtual {v0}, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->getUpdatesUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse;->mCurrentPage:Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;

    invoke-virtual {v0}, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse;->mCurrentPage:Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;

    invoke-virtual {v0}, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/amazon/device/sync/rpc/PaginatedResponse;->getNextPageUri()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-virtual {p0, v0}, Lcom/amazon/device/sync/rpc/PaginatedResponse;->createNextPage(Ljava/lang/String;)Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/sync/rpc/PaginatedResponse;->mCurrentPage:Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;

    .line 149
    invoke-virtual {v0}, Lcom/amazon/device/sync/rpc/PaginatedResponse$Page;->get()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 143
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
