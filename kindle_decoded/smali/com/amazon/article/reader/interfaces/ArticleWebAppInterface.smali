.class public Lcom/amazon/article/reader/interfaces/ArticleWebAppInterface;
.super Ljava/lang/Object;
.source "ArticleWebAppInterface.java"


# instance fields
.field private final readerActivity:Lcom/amazon/article/reader/ArticleReaderActivity;


# direct methods
.method public constructor <init>(Lcom/amazon/article/reader/ArticleReaderActivity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/article/reader/interfaces/ArticleWebAppInterface;->readerActivity:Lcom/amazon/article/reader/ArticleReaderActivity;

    return-void
.end method


# virtual methods
.method public openDetailPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/amazon/article/reader/interfaces/ArticleWebAppInterface;->readerActivity:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/article/reader/ArticleReaderActivity;->openDetailPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateMasthead(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 28
    iget-object p2, p0, Lcom/amazon/article/reader/interfaces/ArticleWebAppInterface;->readerActivity:Lcom/amazon/article/reader/ArticleReaderActivity;

    invoke-virtual {p2, p1}, Lcom/amazon/article/reader/ArticleReaderActivity;->updateMastheadImage(Ljava/lang/String;)V

    return-void
.end method
