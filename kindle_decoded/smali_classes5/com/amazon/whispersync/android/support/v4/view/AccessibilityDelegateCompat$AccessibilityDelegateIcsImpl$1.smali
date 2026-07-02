.class Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"

# interfaces
.implements Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompatIcs$AccessibilityDelegateBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;->newAccessiblityDelegateBridge(Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;

.field final synthetic val$compat:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->this$0:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl;

    iput-object p2, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;

    new-instance v1, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateIcsImpl$1;->val$compat:Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
