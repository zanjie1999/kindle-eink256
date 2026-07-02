.class Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ICSViewCompatImpl;
.super Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$GBViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICSViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$GBViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(Landroid/view/View;I)Z
    .locals 0

    .line 98
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompatICS;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .locals 0

    .line 102
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompatICS;->canScrollVertically(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 110
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompatICS;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 114
    invoke-virtual {p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getImpl()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompatICS;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 106
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompatICS;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 0

    .line 118
    invoke-virtual {p2}, Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;->getBridge()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompatICS;->setAccessibilityDelegate(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method
