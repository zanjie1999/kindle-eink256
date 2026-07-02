.class public Lcom/amazon/whispersync/android/support/v4/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ICSViewCompatImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$GBViewCompatImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$BaseViewCompatImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 126
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ICSViewCompatImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ICSViewCompatImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 128
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$GBViewCompatImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$GBViewCompatImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;

    goto :goto_0

    .line 130
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$BaseViewCompatImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$BaseViewCompatImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
    .locals 1

    .line 142
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .locals 1

    .line 153
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;->canScrollVertically(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .locals 1

    .line 166
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;->getOverScrollMode(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public static onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 252
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 288
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public static onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 219
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public static setAccessibilityDelegate(Landroid/view/View;Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 1

    .line 303
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;->setAccessibilityDelegate(Landroid/view/View;Lcom/amazon/whispersync/android/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public static setOverScrollMode(Landroid/view/View;I)V
    .locals 1

    .line 182
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;

    invoke-interface {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/view/ViewCompat$ViewCompatImpl;->setOverScrollMode(Landroid/view/View;I)V

    return-void
.end method
