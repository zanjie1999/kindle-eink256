.class public Lcom/amazon/e3oseventhandler/ExpandableListViewEventHandler;
.super Lcom/amazon/e3oseventhandler/ListViewEventHandler;
.source "ExpandableListViewEventHandler.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final WIDGET_CLASS_NAME:Ljava/lang/String; = "com.amazon.e3oseventhandler.ExpandableListViewEventHandler"


# instance fields
.field mExpandableListView:Landroid/widget/ExpandableListView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/ListViewEventHandler;-><init>()V

    .line 42
    move-object v0, p1

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/amazon/e3oseventhandler/ExpandableListViewEventHandler;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 43
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->setWidgetView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/amazon/e3oseventhandler/ExpandableListViewEventHandler;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/os/Bundle;)Z
    .locals 5

    .line 59
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/ExpandableListViewEventHandler;->mExpandableListView:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 60
    sget-object p1, Lcom/amazon/e3oseventhandler/ExpandableListViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string p2, "ExpandableListView reference not found."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->isScrollingNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/ExpandableListViewEventHandler;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/ExpandableListView;->pointToPosition(II)I

    move-result v0

    .line 66
    iget-object v3, p0, Lcom/amazon/e3oseventhandler/ExpandableListViewEventHandler;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v0}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v3

    .line 67
    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 75
    invoke-static {v3, v4}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 76
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/ExpandableListViewEventHandler;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/ExpandableListViewEventHandler;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z

    .line 80
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/ExpandableListViewEventHandler;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 81
    invoke-static {v0}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/e3oseventhandler/ExpandableListViewEventHandler;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 82
    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/ExpandableListViewEventHandler;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setSelection(I)V

    .line 87
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
