.class public Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "JumpToWaypointTracker.java"


# instance fields
.field private isJumpingToWaypoint:Z

.field private notifier:Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;->isJumpingToWaypoint:Z

    .line 22
    iput-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;->notifier:Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;->notifier:Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;

    return-void
.end method

.method public isJumpingToWaypoint()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;->isJumpingToWaypoint:Z

    return v0
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 31
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 33
    iget-object p1, p0, Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;->notifier:Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_2

    :cond_1
    const/4 p2, 0x0

    .line 40
    iput-boolean p2, p0, Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;->isJumpingToWaypoint:Z

    .line 42
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/nln/VisibleViewsChangedNotifier;->updateVisibleViews(Z)V

    :cond_2
    return-void
.end method

.method public setIsJumpingToWaypoint(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/amazon/kindle/nln/breadcrumb/JumpToWaypointTracker;->isJumpingToWaypoint:Z

    return-void
.end method
