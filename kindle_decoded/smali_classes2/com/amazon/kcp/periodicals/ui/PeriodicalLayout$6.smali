.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$6;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->onDocViewerModeChanged(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 1243
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$6;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1246
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$6;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    .line 1247
    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$100(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1249
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getObjectSelectionView()Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1253
    :cond_0
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 1258
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocView;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    .line 1259
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getObjectSelectionView()Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    move-result-object v0

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->setContentMargins(II)V

    :cond_2
    :goto_0
    return-void
.end method
