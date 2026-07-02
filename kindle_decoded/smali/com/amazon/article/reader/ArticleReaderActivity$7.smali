.class Lcom/amazon/article/reader/ArticleReaderActivity$7;
.super Landroid/webkit/WebChromeClient;
.source "ArticleReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/article/reader/ArticleReaderActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/article/reader/ArticleReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$7;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 351
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$7;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$300(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 p1, 0x32

    if-le p2, p1, :cond_0

    .line 352
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$7;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iget-boolean p2, p1, Lcom/amazon/article/reader/ArticleReaderActivity;->isGoBack:Z

    if-nez p2, :cond_0

    iget-boolean p2, p1, Lcom/amazon/article/reader/ArticleReaderActivity;->shouldScrollToTop:Z

    if-eqz p2, :cond_0

    .line 396
    invoke-static {p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->access$200(Lcom/amazon/article/reader/ArticleReaderActivity;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 397
    iget-object p1, p0, Lcom/amazon/article/reader/ArticleReaderActivity$7;->this$0:Lcom/amazon/article/reader/ArticleReaderActivity;

    iput-boolean p2, p1, Lcom/amazon/article/reader/ArticleReaderActivity;->shouldScrollToTop:Z

    :cond_0
    return-void
.end method
