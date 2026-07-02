.class final Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompatIcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs;->newAccessibilityDelegateBridge(Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bridge:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$1;->val$bridge:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
