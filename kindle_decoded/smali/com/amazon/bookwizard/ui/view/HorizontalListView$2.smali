.class Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/ui/view/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 150
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 152
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    aget v2, v0, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    aget v0, v0, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr v0, p2

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, p2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$200(Lcom/amazon/bookwizard/ui/view/HorizontalListView;Z)V

    .line 86
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$300(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)Landroid/widget/Scroller;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 92
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$300(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$400(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)I

    move-result v1

    neg-float p1, p3

    float-to-int v3, p1

    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$500(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)I

    move-result v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 93
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$200(Lcom/amazon/bookwizard/ui/view/HorizontalListView;Z)V

    .line 94
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->requestLayout()V

    return p2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9

    .line 126
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$200(Lcom/amazon/bookwizard/ui/view/HorizontalListView;Z)V

    .line 127
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 129
    iget-object v2, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 130
    invoke-direct {p0, p1, v5}, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$1000(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$1000(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {v4}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$700(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    add-int v6, p1, v1

    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$800(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)Landroid/widget/ListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {v0}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$700(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$400(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)I

    move-result p2

    float-to-int p3, p3

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$402(Lcom/amazon/bookwizard/ui/view/HorizontalListView;I)I

    .line 101
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$200(Lcom/amazon/bookwizard/ui/view/HorizontalListView;Z)V

    .line 102
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->requestLayout()V

    return p2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 108
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$200(Lcom/amazon/bookwizard/ui/view/HorizontalListView;Z)V

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-ge v1, v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 111
    invoke-direct {p0, p1, v0}, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->isEventWithinView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$600(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$600(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {v4}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$700(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)I

    move-result p1

    add-int/2addr p1, v2

    add-int v6, p1, v1

    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$800(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)Landroid/widget/ListAdapter;

    move-result-object p1

    iget-object v5, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {v5}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$700(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    invoke-interface {p1, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    move-object v5, v0

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$900(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$900(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {v4}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$700(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)I

    move-result p1

    add-int/2addr p1, v2

    add-int v6, p1, v1

    iget-object p1, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$800(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)Landroid/widget/ListAdapter;

    move-result-object p1

    iget-object v5, p0, Lcom/amazon/bookwizard/ui/view/HorizontalListView$2;->this$0:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-static {v5}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->access$700(Lcom/amazon/bookwizard/ui/view/HorizontalListView;)I

    move-result v5

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    invoke-interface {p1, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v7

    move-object v5, v0

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method
