.class Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$2;
.super Lcom/amazon/android/docviewer/KindleDocViewerEvents;
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

    .line 643
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$2;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleDocViewerEvents;-><init>()V

    return-void
.end method


# virtual methods
.method public onDocViewerRefresh()V
    .locals 3

    .line 646
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$2;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-virtual {v0}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateRoot()V

    .line 647
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$2;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->access$000(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)V

    .line 649
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$2;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->access$100(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$2;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    const/4 v1, -0x1

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$2;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->access$200(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)[I

    move-result-object v0

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 653
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$2;->this$0:Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->access$200(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)[I

    move-result-object v0

    const/4 v2, 0x1

    aput v1, v0, v2

    return-void
.end method
