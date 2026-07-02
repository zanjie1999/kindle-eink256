.class public Lcom/amazon/ebook/util/text/stopword/StopWordList;
.super Ljava/lang/Object;


# instance fields
.field private final filter:Lcom/amazon/ebook/util/text/WordFilter;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bad strength value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object p2

    :cond_4
    new-instance v0, Lcom/amazon/ebook/util/text/WordFilter;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/ebook/util/text/WordFilter;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/amazon/ebook/util/text/stopword/StopWordList;->filter:Lcom/amazon/ebook/util/text/WordFilter;

    return-void
.end method


# virtual methods
.method public has(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/stopword/StopWordList;->filter:Lcom/amazon/ebook/util/text/WordFilter;

    invoke-virtual {v0, p1}, Lcom/amazon/ebook/util/text/WordFilter;->has(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/text/stopword/StopWordList;->filter:Lcom/amazon/ebook/util/text/WordFilter;

    invoke-virtual {v0}, Lcom/amazon/ebook/util/text/WordFilter;->isEmpty()Z

    move-result v0

    return v0
.end method
