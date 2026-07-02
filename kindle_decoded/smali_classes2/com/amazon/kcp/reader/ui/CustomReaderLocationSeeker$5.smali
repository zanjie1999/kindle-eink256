.class Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$5;
.super Ljava/lang/Object;
.source "CustomReaderLocationSeeker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->onChapterNavigation()V
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

    .line 1453
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$5;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1456
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$5;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->access$200(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1457
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$5;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->access$200(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPreviousChapter()V

    :cond_0
    return-void
.end method
