.class Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "PageFlipFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeekBarRecyclerViewStateManager"
.end annotation


# instance fields
.field private currentRecyclerState:I

.field private isSeekBarPressed:Z

.field private shouldSync:Z

.field private usedNavigation:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 766
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 767
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->isSeekBarPressed:Z

    .line 768
    iput v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->currentRecyclerState:I

    .line 769
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->usedNavigation:Z

    const/4 v0, 0x1

    .line 770
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->shouldSync:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;)V
    .locals 0

    .line 766
    invoke-direct {p0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    monitor-enter p0

    .line 790
    :try_start_0
    iget p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->currentRecyclerState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, p1, :cond_0

    .line 791
    monitor-exit p0

    return-void

    .line 794
    :cond_0
    :try_start_1
    iget p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->currentRecyclerState:I

    .line 795
    iput p2, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->currentRecyclerState:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    if-eq p2, v0, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    .line 815
    invoke-static {}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->access$700()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected invalid new state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    if-eqz p1, :cond_2

    .line 806
    iget-boolean p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->isSeekBarPressed:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->usedNavigation:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->shouldSync:Z

    goto :goto_3

    .line 799
    :cond_3
    iget-boolean p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->isSeekBarPressed:Z

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->shouldSync:Z

    .line 800
    iput-boolean v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->usedNavigation:Z

    goto :goto_3

    .line 810
    :cond_5
    iget-boolean p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->isSeekBarPressed:Z

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->shouldSync:Z

    .line 811
    iput-boolean v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->usedNavigation:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 817
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setSeekBarPressed(Z)V
    .locals 4

    monitor-enter p0

    .line 778
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->isSeekBarPressed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    .line 779
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 782
    :try_start_1
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->usedNavigation:Z

    .line 783
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->isSeekBarPressed:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 784
    iget v2, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->currentRecyclerState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    :cond_1
    if-nez p1, :cond_2

    iget p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->currentRecyclerState:I

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->shouldSync:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 786
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized shouldSync()Z
    .locals 1

    monitor-enter p0

    .line 834
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->shouldSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized usingNavigation()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 823
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->usedNavigation:Z

    const/4 v0, 0x0

    .line 824
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->shouldSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
