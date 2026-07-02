.class Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;
.super Ljava/lang/Object;
.source "GraphicalHighlightGestureDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WordSelectorRunnable"
.end annotation


# instance fields
.field element:Lcom/amazon/android/docviewer/pdf/PdfPageElement;

.field final synthetic this$0:Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;Lcom/amazon/android/docviewer/pdf/PdfPageElement;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-object p2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->element:Lcom/amazon/android/docviewer/pdf/PdfPageElement;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 459
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;

    invoke-static {v0}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->access$000(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)I

    move-result v0

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;

    .line 460
    invoke-static {v0}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->access$100(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;

    invoke-static {v0}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->access$200(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-lez v0, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;

    invoke-static {v0}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->access$000(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;

    .line 463
    invoke-static {v0}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->access$100(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;

    invoke-static {v0}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->access$300(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;

    .line 464
    invoke-static {v0}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->access$200(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;

    invoke-static {v0}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->access$100(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 468
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->element:Lcom/amazon/android/docviewer/pdf/PdfPageElement;

    iget-object v1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;

    .line 469
    invoke-static {v1}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->access$400(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->element:Lcom/amazon/android/docviewer/pdf/PdfPageElement;

    iget-object v1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;

    .line 470
    invoke-static {v1}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->access$500(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)Lcom/amazon/android/docviewer/IPageElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 471
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;

    iget-object v1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->element:Lcom/amazon/android/docviewer/pdf/PdfPageElement;

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->access$502(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;Lcom/amazon/android/docviewer/IPageElement;)Lcom/amazon/android/docviewer/IPageElement;

    .line 472
    iget-object v0, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;

    invoke-static {v0}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->access$700(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->element:Lcom/amazon/android/docviewer/pdf/PdfPageElement;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPageElement;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector$WordSelectorRunnable;->this$0:Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;

    .line 473
    invoke-static {v2}, Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;->access$600(Lcom/amazon/kcp/reader/GraphicalHighlightGestureDetector;)Lcom/amazon/kcp/reader/ui/GraphicalHighlightLayout;

    move-result-object v2

    .line 472
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_3
    return-void
.end method
