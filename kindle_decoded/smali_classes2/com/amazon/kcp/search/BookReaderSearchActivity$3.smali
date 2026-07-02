.class Lcom/amazon/kcp/search/BookReaderSearchActivity$3;
.super Ljava/lang/Object;
.source "BookReaderSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/search/BookReaderSearchActivity;->startSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/BookReaderSearchActivity;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    iget-object v0, v0, Lcom/amazon/kcp/search/BookReaderSearchActivity;->book:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookSearchController()Lcom/amazon/kcp/search/IBookSearchController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    .line 658
    invoke-static {v1}, Lcom/amazon/kcp/search/BookReaderSearchActivity;->access$400(Lcom/amazon/kcp/search/BookReaderSearchActivity;)Lcom/amazon/kcp/search/IBookSearchController$SimpleBookSearchListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/search/IBookSearchController;->removeBookSearchListener(Lcom/amazon/kcp/search/IBookSearchController$IBookSearchListener;)V

    .line 659
    iget-object v0, p0, Lcom/amazon/kcp/search/BookReaderSearchActivity$3;->this$0:Lcom/amazon/kcp/search/BookReaderSearchActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
