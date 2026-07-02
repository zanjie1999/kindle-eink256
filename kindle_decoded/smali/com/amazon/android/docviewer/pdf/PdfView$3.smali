.class Lcom/amazon/android/docviewer/pdf/PdfView$3;
.super Ljava/lang/Object;
.source "PdfView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/pdf/PdfView;->applyPageTurn(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/pdf/PdfView;

.field final synthetic val$pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfView;Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;)V
    .locals 0

    .line 967
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfView$3;->this$0:Lcom/amazon/android/docviewer/pdf/PdfView;

    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfView$3;->val$pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 970
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView$3;->val$pageTurnDirection:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    sget-object v1, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Backward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne v0, v1, :cond_0

    .line 971
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView$3;->this$0:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->access$600(Lcom/amazon/android/docviewer/pdf/PdfView;)Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->onDocViewerAfterPositionChanged(I)V

    goto :goto_0

    .line 972
    :cond_0
    sget-object v1, Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;->Forward:Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;

    if-ne v0, v1, :cond_1

    .line 973
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfView$3;->this$0:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->access$600(Lcom/amazon/android/docviewer/pdf/PdfView;)Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->onDocViewerAfterPositionChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method
