.class public Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer;
.super Ljava/lang/Object;
.source "ViewAccessibilityInitializer.java"

# interfaces
.implements Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer;


# instance fields
.field protected defaultIncrementFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x3d4ccccd    # 0.05f

    .line 14
    iput p1, p0, Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer;->defaultIncrementFactor:F

    return-void
.end method


# virtual methods
.method public initializeForAccessibility(Landroid/view/View;Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer$ViewType;)V
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer$ViewType;->SEEK_BAR:Lcom/amazon/kcp/reader/accessibility/IViewAccessibilityInitializer$ViewType;

    if-ne p2, v0, :cond_0

    .line 22
    check-cast p1, Lcom/amazon/kcp/reader/ui/ReaderLayoutSeekBar;

    .line 23
    new-instance p2, Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer$1;-><init>(Lcom/amazon/kcp/reader/accessibility/ViewAccessibilityInitializer;)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_0
    return-void
.end method
