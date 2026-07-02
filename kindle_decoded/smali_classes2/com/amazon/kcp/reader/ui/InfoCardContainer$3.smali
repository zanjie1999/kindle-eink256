.class Lcom/amazon/kcp/reader/ui/InfoCardContainer$3;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "InfoCardContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/InfoCardContainer;->addCard(Lcom/amazon/kindle/krx/ui/InfoCardView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

.field final synthetic val$wrapper:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/InfoCardContainer;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$3;->val$wrapper:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    .line 386
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 388
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    .line 389
    iget-object v0, p1, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWrappers:Ljava/util/List;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$3;->val$wrapper:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 391
    iget-boolean v1, p1, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->isPartiallyHidden:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget v1, p1, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->currentCenterIndex:I

    if-eq v0, v1, :cond_0

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->access$100(Lcom/amazon/kcp/reader/ui/InfoCardContainer;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$3;->val$wrapper:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->getWrapperDescription(Landroid/widget/LinearLayout;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 401
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isAccessibilityFocused()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 402
    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->access$100(Lcom/amazon/kcp/reader/ui/InfoCardContainer;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, -0x1

    if-eq v0, p2, :cond_1

    iget p2, p1, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->currentCenterIndex:I

    if-eq v0, p2, :cond_1

    .line 403
    invoke-virtual {p1, v0, v2}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->scrollToIndex(IZ)V

    :cond_1
    return-void

    .line 394
    :cond_2
    :goto_0
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 395
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 376
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 378
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 379
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const v0, 0x8000

    if-ne p1, v0, :cond_1

    .line 380
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$3;->val$wrapper:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->getWrapperDescription(Landroid/widget/LinearLayout;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    .line 409
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/InfoCardContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/InfoCardContainer;

    .line 410
    iget-object v1, v0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->cardWrappers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 412
    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->access$100(Lcom/amazon/kcp/reader/ui/InfoCardContainer;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v2, v0, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->currentCenterIndex:I

    if-eq v1, v2, :cond_0

    .line 415
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const v3, 0x8000

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 416
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/InfoCardContainer;->scrollToIndex(IZ)V

    .line 419
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method
