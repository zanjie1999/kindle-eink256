.class Lcom/amazon/kcp/reader/ReaderActivity$15;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Lcom/amazon/kcp/reader/IReaderController$StartPageVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->jumpToUserLocation(Lcom/amazon/kcp/reader/IReaderController$StartPage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 1486
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$15;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/amazon/kcp/reader/IReaderController$StartPageBeginning;)V
    .locals 4

    .line 1489
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$15;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$900(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1490
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$15;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$1000(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/model/content/LastPageRead;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kindle/model/content/LastPageRead;-><init>(II[B)V

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->setLastPageRead(Lcom/amazon/kindle/model/content/LastPageRead;)V

    :cond_0
    return-void
.end method

.method public visit(Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;)V
    .locals 0

    return-void
.end method

.method public visit(Lcom/amazon/kcp/reader/IReaderController$StartPagePosition;)V
    .locals 4

    .line 1526
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$15;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->access$1400(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$15;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->access$1500(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/model/content/LastPageRead;

    const/4 v2, -0x1

    iget p1, p1, Lcom/amazon/kcp/reader/IReaderController$StartPagePosition;->position:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/amazon/kindle/model/content/LastPageRead;-><init>(II[B)V

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setLastPageRead(Lcom/amazon/kindle/model/content/LastPageRead;)V

    :cond_0
    return-void
.end method
