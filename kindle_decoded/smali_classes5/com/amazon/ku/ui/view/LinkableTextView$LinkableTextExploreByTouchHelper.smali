.class Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "LinkableTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ku/ui/view/LinkableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkableTextExploreByTouchHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ku/ui/view/LinkableTextView;

.field private final virtualViewBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/amazon/ku/ui/view/LinkableTextView;Landroid/view/View;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;->this$0:Lcom/amazon/ku/ui/view/LinkableTextView;

    .line 163
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 160
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;->virtualViewBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 5

    const/4 v0, 0x0

    .line 167
    :goto_0
    iget-object v1, p0, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;->this$0:Lcom/amazon/ku/ui/view/LinkableTextView;

    invoke-static {v1}, Lcom/amazon/ku/ui/view/LinkableTextView;->access$100(Lcom/amazon/ku/ui/view/LinkableTextView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;->this$0:Lcom/amazon/ku/ui/view/LinkableTextView;

    invoke-static {v1}, Lcom/amazon/ku/ui/view/LinkableTextView;->access$100(Lcom/amazon/ku/ui/view/LinkableTextView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ku/ui/view/LinkableTextView$VirtualView;

    .line 169
    iget-object v1, v1, Lcom/amazon/ku/ui/view/LinkableTextView$VirtualView;->bounds:Landroid/graphics/Rect;

    float-to-int v2, p1

    iget-object v3, p0, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;->this$0:Lcom/amazon/ku/ui/view/LinkableTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    float-to-int v3, p2

    iget-object v4, p0, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;->this$0:Lcom/amazon/ku/ui/view/LinkableTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x80000000

    return p1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;->this$0:Lcom/amazon/ku/ui/view/LinkableTextView;

    invoke-static {v1}, Lcom/amazon/ku/ui/view/LinkableTextView;->access$100(Lcom/amazon/ku/ui/view/LinkableTextView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 178
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 209
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    const/4 p2, 0x1

    .line 210
    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return p2
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    const/4 v0, 0x0

    .line 183
    :goto_0
    iget-object v1, p0, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;->this$0:Lcom/amazon/ku/ui/view/LinkableTextView;

    invoke-static {v1}, Lcom/amazon/ku/ui/view/LinkableTextView;->access$100(Lcom/amazon/ku/ui/view/LinkableTextView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;->this$0:Lcom/amazon/ku/ui/view/LinkableTextView;

    invoke-static {p1}, Lcom/amazon/ku/ui/view/LinkableTextView;->access$100(Lcom/amazon/ku/ui/view/LinkableTextView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/ku/ui/view/LinkableTextView$VirtualView;

    iget-object p1, p1, Lcom/amazon/ku/ui/view/LinkableTextView$VirtualView;->text:Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    const/4 v0, 0x0

    .line 192
    :goto_0
    iget-object v1, p0, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;->this$0:Lcom/amazon/ku/ui/view/LinkableTextView;

    invoke-static {v1}, Lcom/amazon/ku/ui/view/LinkableTextView;->access$100(Lcom/amazon/ku/ui/view/LinkableTextView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-ne v0, p1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;->this$0:Lcom/amazon/ku/ui/view/LinkableTextView;

    invoke-static {v1}, Lcom/amazon/ku/ui/view/LinkableTextView;->access$100(Lcom/amazon/ku/ui/view/LinkableTextView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ku/ui/view/LinkableTextView$VirtualView;

    .line 195
    iget-object v2, v1, Lcom/amazon/ku/ui/view/LinkableTextView$VirtualView;->text:Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v2, 0x10

    .line 196
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 198
    iget-object v2, p0, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;->virtualViewBounds:Landroid/graphics/Rect;

    iget-object v1, v1, Lcom/amazon/ku/ui/view/LinkableTextView$VirtualView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 199
    iget-object v1, p0, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;->virtualViewBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;->this$0:Lcom/amazon/ku/ui/view/LinkableTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    neg-int v2, v2

    iget-object v3, p0, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;->this$0:Lcom/amazon/ku/ui/view/LinkableTextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 200
    iget-object v1, p0, Lcom/amazon/ku/ui/view/LinkableTextView$LinkableTextExploreByTouchHelper;->virtualViewBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
