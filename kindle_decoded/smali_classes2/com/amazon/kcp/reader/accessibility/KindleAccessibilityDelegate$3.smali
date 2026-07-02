.class Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$3;
.super Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;
.source "KindleAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$3;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 660
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 661
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$3;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-static {p1}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->access$300(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)V

    goto :goto_0

    .line 663
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$3;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-static {p1}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->access$400(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)V

    :goto_0
    return-void
.end method
