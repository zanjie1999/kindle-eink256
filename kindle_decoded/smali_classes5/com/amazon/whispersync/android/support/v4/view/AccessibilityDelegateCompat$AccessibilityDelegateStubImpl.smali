.class Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateStubImpl;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"

# interfaces
.implements Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat$AccessibilityDelegateImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegateStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public newAccessiblityDelegateBridge(Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public newAccessiblityDelegateDefaultImpl()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    return-void
.end method

.method public onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method
