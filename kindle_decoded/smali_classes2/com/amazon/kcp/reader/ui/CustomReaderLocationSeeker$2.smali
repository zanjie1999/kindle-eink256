.class Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$2;
.super Ljava/lang/Object;
.source "CustomReaderLocationSeeker.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$2;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 233
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/16 p1, 0x15

    if-eq p2, p1, :cond_0

    const/16 p1, 0x16

    if-ne p2, p1, :cond_1

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$2;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->access$200(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 236
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$2;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->access$200(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$2;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getSeekPosition()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPosition(I)V

    return p3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
