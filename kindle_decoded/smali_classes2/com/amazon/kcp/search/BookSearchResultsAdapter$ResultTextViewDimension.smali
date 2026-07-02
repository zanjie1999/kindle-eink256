.class public Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;
.super Ljava/lang/Object;
.source "BookSearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/BookSearchResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ResultTextViewDimension"
.end annotation


# instance fields
.field final leftPadding:I

.field final rightPadding:I

.field final width:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->width:I

    .line 71
    iput p2, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->leftPadding:I

    .line 72
    iput p3, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->rightPadding:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 82
    const-class v2, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    check-cast p1, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;

    .line 86
    iget v2, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->leftPadding:I

    iget v3, p1, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->leftPadding:I

    if-eq v2, v3, :cond_2

    return v1

    .line 87
    :cond_2
    iget v2, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->rightPadding:I

    iget v3, p1, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->rightPadding:I

    if-eq v2, v3, :cond_3

    return v1

    .line 88
    :cond_3
    iget v2, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->width:I

    iget p1, p1, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->width:I

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 95
    iget v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->width:I

    mul-int/lit8 v0, v0, 0x1f

    .line 96
    iget v1, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->leftPadding:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 97
    iget v1, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->rightPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isSet()Z
    .locals 1

    .line 76
    iget v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->width:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->leftPadding:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultTextViewDimension;->rightPadding:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
