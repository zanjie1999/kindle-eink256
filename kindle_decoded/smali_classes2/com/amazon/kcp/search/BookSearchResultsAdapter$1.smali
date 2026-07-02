.class Lcom/amazon/kcp/search/BookSearchResultsAdapter$1;
.super Ljava/lang/Object;
.source "BookSearchResultsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/BookSearchResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/android/docviewer/BookSearchResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/search/BookSearchResultsAdapter;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isSectionHeader(Lcom/amazon/android/docviewer/BookSearchResult;)Z
    .locals 1

    .line 142
    instance-of v0, p1, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultLabel;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultLabel;

    iget-boolean p1, p1, Lcom/amazon/kcp/search/BookSearchResultsAdapter$ResultLabel;->isSectionHeader:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public compare(Lcom/amazon/android/docviewer/BookSearchResult;Lcom/amazon/android/docviewer/BookSearchResult;)I
    .locals 2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 123
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BookSearchResult;->getPosition()I

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/BookSearchResult;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 127
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/BookSearchResultsAdapter$1;->isSectionHeader(Lcom/amazon/android/docviewer/BookSearchResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/amazon/kcp/search/BookSearchResultsAdapter$1;->isSectionHeader(Lcom/amazon/android/docviewer/BookSearchResult;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 130
    :cond_1
    invoke-direct {p0, p2}, Lcom/amazon/kcp/search/BookSearchResultsAdapter$1;->isSectionHeader(Lcom/amazon/android/docviewer/BookSearchResult;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/BookSearchResultsAdapter$1;->isSectionHeader(Lcom/amazon/android/docviewer/BookSearchResult;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 136
    :cond_2
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    sub-int v0, p1, p2

    :cond_3
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 116
    check-cast p1, Lcom/amazon/android/docviewer/BookSearchResult;

    check-cast p2, Lcom/amazon/android/docviewer/BookSearchResult;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/search/BookSearchResultsAdapter$1;->compare(Lcom/amazon/android/docviewer/BookSearchResult;Lcom/amazon/android/docviewer/BookSearchResult;)I

    move-result p1

    return p1
.end method
