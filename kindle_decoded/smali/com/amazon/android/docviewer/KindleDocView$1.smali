.class Lcom/amazon/android/docviewer/KindleDocView$1;
.super Ljava/lang/Object;
.source "KindleDocView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/KindleDocView;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/KindleDocView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$viewer:Lcom/amazon/android/docviewer/KindleDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/KindleDocView;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/android/docviewer/KindleDocView$1;->this$0:Lcom/amazon/android/docviewer/KindleDocView;

    iput-object p2, p0, Lcom/amazon/android/docviewer/KindleDocView$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/amazon/android/docviewer/KindleDocView$1;->val$viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 59
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocView$1;->val$context:Landroid/content/Context;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 62
    instance-of v2, v0, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v2, :cond_0

    .line 63
    check-cast v0, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_2

    .line 69
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocView$1;->this$0:Lcom/amazon/android/docviewer/KindleDocView;

    iget-object v2, v0, Lcom/amazon/android/docviewer/KindleDocView;->accessibilityMixin:Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;

    if-eqz v2, :cond_1

    .line 70
    iget-object v3, p0, Lcom/amazon/android/docviewer/KindleDocView$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/amazon/android/docviewer/KindleDocView$1;->val$viewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2, v0, v3, v4, v1}, Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;->initializeForAccessibility(Lcom/amazon/android/docviewer/KindleDocView;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocView$1;->this$0:Lcom/amazon/android/docviewer/KindleDocView;

    new-instance v1, Lcom/amazon/kcp/reader/accessibility/OverlaysAccessibilityListener;

    iget-object v2, p0, Lcom/amazon/android/docviewer/KindleDocView$1;->val$context:Landroid/content/Context;

    iget-object v3, v0, Lcom/amazon/android/docviewer/KindleDocView;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/kcp/reader/accessibility/OverlaysAccessibilityListener;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/KindleDocView;->access$002(Lcom/amazon/android/docviewer/KindleDocView;Lcom/amazon/kcp/reader/accessibility/OverlaysAccessibilityListener;)Lcom/amazon/kcp/reader/accessibility/OverlaysAccessibilityListener;

    :cond_2
    return-void
.end method
