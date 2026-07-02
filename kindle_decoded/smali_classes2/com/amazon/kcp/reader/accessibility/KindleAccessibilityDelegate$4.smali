.class Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$4;
.super Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;
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

    .line 668
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$4;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPaused()V
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$4;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->handleActivityPaused()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$4;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    iget-object v0, v0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->context:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 682
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 683
    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$4;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    .line 684
    invoke-static {v1}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->access$500(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    move-result-object v1

    .line 683
    invoke-static {v0, v1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z

    .line 685
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$4;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->access$400(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)V

    return-void
.end method

.method public onOverlayVisibilityChanged(Z)V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$4;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->handleOverlayVisibilityChanged(Z)V

    return-void
.end method
