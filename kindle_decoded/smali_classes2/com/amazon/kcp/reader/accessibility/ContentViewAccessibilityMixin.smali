.class public Lcom/amazon/kcp/reader/accessibility/ContentViewAccessibilityMixin;
.super Ljava/lang/Object;
.source "ContentViewAccessibilityMixin.java"

# interfaces
.implements Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;


# instance fields
.field private accessibilityDelegationEnabled:Z

.field private delegate:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

.field private virtualViewId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/amazon/kcp/reader/accessibility/ContentViewAccessibilityMixin;->virtualViewId:I

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/ContentViewAccessibilityMixin;->delegate:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->dispatchHoverEventInReader(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public initializeForAccessibility(Lcom/amazon/android/docviewer/KindleDocView;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 1

    .line 21
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilityDelegate(Lcom/amazon/android/docviewer/KindleDocView;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/accessibility/ContentViewAccessibilityMixin;->delegate:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    .line 22
    invoke-interface {p3}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsTouchAccessibility()Z

    move-result p2

    iput-boolean p2, p0, Lcom/amazon/kcp/reader/accessibility/ContentViewAccessibilityMixin;->accessibilityDelegationEnabled:Z

    if-eqz p2, :cond_0

    .line 24
    iget-object p2, p0, Lcom/amazon/kcp/reader/accessibility/ContentViewAccessibilityMixin;->delegate:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/ContentViewAccessibilityMixin;->accessibilityDelegationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/ContentViewAccessibilityMixin;->delegate:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setContentVirtualViewId(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/amazon/kcp/reader/accessibility/ContentViewAccessibilityMixin;->virtualViewId:I

    return-void
.end method
