.class public Lcom/amazon/kcp/search/BookSearchIndexer$PageResult;
.super Ljava/lang/Object;
.source "BookSearchIndexer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/BookSearchIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/kcp/search/BookSearchIndexer$PageResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final end:I

.field public final start:I


# direct methods
.method public constructor <init>(Lorg/apache/lucene/document/Document;)V
    .locals 1

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pos"

    .line 385
    invoke-virtual {p1, v0}, Lorg/apache/lucene/document/Document;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 386
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/search/BookSearchIndexer$PageResult;->start:I

    const/4 v0, 0x1

    .line 387
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/search/BookSearchIndexer$PageResult;->end:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/kcp/search/BookSearchIndexer$PageResult;)I
    .locals 1

    .line 392
    iget v0, p0, Lcom/amazon/kcp/search/BookSearchIndexer$PageResult;->start:I

    iget p1, p1, Lcom/amazon/kcp/search/BookSearchIndexer$PageResult;->start:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 378
    check-cast p1, Lcom/amazon/kcp/search/BookSearchIndexer$PageResult;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/BookSearchIndexer$PageResult;->compareTo(Lcom/amazon/kcp/search/BookSearchIndexer$PageResult;)I

    move-result p1

    return p1
.end method
