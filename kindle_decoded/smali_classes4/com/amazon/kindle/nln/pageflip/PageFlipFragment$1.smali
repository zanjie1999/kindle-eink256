.class Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;
.super Ljava/lang/Object;
.source "PageFlipFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private targetPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field final synthetic this$0:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;->this$0:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 114
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;->targetPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_1

    .line 119
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;->this$0:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    invoke-static {p1}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->access$100(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;)Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;->setIsJumpingToWaypoint(Z)V

    .line 120
    new-instance p1, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    .line 121
    iget-object p2, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;->this$0:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p3

    invoke-static {p2, p3}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->access$202(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;I)I

    .line 124
    iget-object p2, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;->this$0:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    invoke-static {p2}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->access$300(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;)Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    move-result-object p2

    const/4 p3, -0x1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 126
    invoke-virtual {p2, p1, v0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->getAdapterPositionForKRFPosition(Lcom/amazon/kindle/krx/reader/IPosition;Z)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    if-eq p2, p3, :cond_1

    .line 132
    iget-object p3, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;->this$0:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    invoke-static {p3}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->access$400(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 137
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;->targetPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 144
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;->this$0:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    invoke-static {p1}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->access$500(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;)Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->setSeekBarPressed(Z)V

    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;->targetPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 152
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;->this$0:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    invoke-static {p1}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->access$500(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;)Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$SeekBarRecyclerViewStateManager;->setSeekBarPressed(Z)V

    .line 154
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;->this$0:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    invoke-static {p1}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->access$600(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;)Lcom/amazon/kindle/nln/NlnThumbnailAdapter;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;->targetPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->isKRFPositionWithinIndexedChunk(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->access$700()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Seekbar jumping to position outside indexed chunk. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;->targetPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;->targetPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/nln/NlnThumbnailAdapter;->rebuildAdapterAroundPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    .line 158
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;->this$0:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->access$800(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;->targetPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz p1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;->this$0:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->access$900(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;I)V

    :cond_1
    const/4 p1, 0x0

    .line 166
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$1;->targetPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void
.end method
