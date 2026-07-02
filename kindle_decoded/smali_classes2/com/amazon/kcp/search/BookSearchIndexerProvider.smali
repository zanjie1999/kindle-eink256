.class public Lcom/amazon/kcp/search/BookSearchIndexerProvider;
.super Ljava/lang/Object;
.source "BookSearchIndexerProvider.java"

# interfaces
.implements Lcom/amazon/kcp/search/IBookSearchIndexerProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSearchIndexer(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/search/IKindleWordTokenIterator;Z)Lcom/amazon/kcp/search/IBookSearchIndexer;
    .locals 0

    if-eqz p5, :cond_0

    .line 20
    new-instance p5, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/lab126/lucene/search/LuceneBookStemmedIndexer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/search/IKindleWordTokenIterator;)V

    return-object p5

    .line 22
    :cond_0
    new-instance p5, Lcom/amazon/kcp/search/BookSearchIndexer;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/amazon/kcp/search/BookSearchIndexer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/search/IKindleWordTokenIterator;)V

    return-object p5
.end method
