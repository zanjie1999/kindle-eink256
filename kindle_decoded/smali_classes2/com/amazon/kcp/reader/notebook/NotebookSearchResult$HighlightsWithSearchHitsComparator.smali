.class Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$HighlightsWithSearchHitsComparator;
.super Ljava/lang/Object;
.source "NotebookSearchResult.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/notebook/NotebookSearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HighlightsWithSearchHitsComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$1;)V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$HighlightsWithSearchHitsComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I
    .locals 2

    .line 288
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 289
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->getBookText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length p1, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 291
    :goto_0
    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 292
    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->getBookText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    array-length v1, p2

    :cond_1
    sub-int/2addr v1, p1

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 283
    check-cast p1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    check-cast p2, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/notebook/NotebookSearchResult$HighlightsWithSearchHitsComparator;->compare(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I

    move-result p1

    return p1
.end method
