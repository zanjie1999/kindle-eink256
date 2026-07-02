.class Lcom/amazon/nwstd/toc/ReplicaTOCEntry$1;
.super Ljava/lang/Object;
.source "ReplicaTOCEntry.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/toc/ReplicaTOCEntry;->getOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/toc/ReplicaTOCEntry;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/toc/ReplicaTOCEntry;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/nwstd/toc/ReplicaTOCEntry$1;->this$0:Lcom/amazon/nwstd/toc/ReplicaTOCEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 83
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    .line 84
    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    .line 85
    instance-of v0, p1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    if-eqz v0, :cond_1

    .line 87
    check-cast p1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 88
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/amazon/nwstd/toc/ReplicaTOCEntry$1;->this$0:Lcom/amazon/nwstd/toc/ReplicaTOCEntry;

    invoke-virtual {v1}, Lcom/amazon/nwstd/toc/ReplicaTOCEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getReplicaPageForFragmentPosition(Ljava/lang/Integer;)Lcom/amazon/nwstd/toc/IReplicaPageItem;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v2

    sget-object v3, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    if-ne v2, v3, :cond_0

    .line 92
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->isImageViewEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v0

    .line 94
    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->navigateToPageIndex(I)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1, v1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->navigateToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method
