.class Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally(Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getOverScrollMode(Landroid/view/View;)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 0

    return-void
.end method

.method public setOverScrollMode(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
