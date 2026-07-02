.class public Lcom/amazon/android/webkit/AmazonWebBackForwardList;
.super Ljava/lang/Object;
.source "AmazonWebBackForwardList.java"


# instance fields
.field private final currentItemIndex:I

.field private final historyItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/webkit/AmazonWebHistoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/android/webkit/AmazonWebHistoryItem;",
            ">;I)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/android/webkit/AmazonWebBackForwardList;->historyItems:Ljava/util/List;

    .line 26
    iput p2, p0, Lcom/amazon/android/webkit/AmazonWebBackForwardList;->currentItemIndex:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentIndex()I
    .locals 1

    monitor-enter p0

    .line 31
    :try_start_0
    iget v0, p0, Lcom/amazon/android/webkit/AmazonWebBackForwardList;->currentItemIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentItem()Lcom/amazon/android/webkit/AmazonWebHistoryItem;
    .locals 1

    monitor-enter p0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebBackForwardList;->getCurrentIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/android/webkit/AmazonWebBackForwardList;->getItemAtIndex(I)Lcom/amazon/android/webkit/AmazonWebHistoryItem;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getItemAtIndex(I)Lcom/amazon/android/webkit/AmazonWebHistoryItem;
    .locals 1

    monitor-enter p0

    if-ltz p1, :cond_1

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/webkit/AmazonWebBackForwardList;->getSize()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebBackForwardList;->historyItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/webkit/AmazonWebHistoryItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 42
    monitor-exit p0

    return-object p1
.end method

.method public declared-synchronized getSize()I
    .locals 1

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/webkit/AmazonWebBackForwardList;->historyItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
