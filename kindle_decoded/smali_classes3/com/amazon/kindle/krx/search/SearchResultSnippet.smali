.class public Lcom/amazon/kindle/krx/search/SearchResultSnippet;
.super Ljava/lang/Object;
.source "SearchResultSnippet.java"


# instance fields
.field private final contextualHighlightRanges:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final contextualText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippet;->contextualText:Ljava/lang/CharSequence;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippet;->contextualHighlightRanges:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public addContextualHighlight(Lcom/amazon/kindle/krx/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippet;->contextualHighlightRanges:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContextualHighlightRanges()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippet;->contextualHighlightRanges:Ljava/util/Collection;

    return-object v0
.end method

.method public getContextualText()Ljava/lang/CharSequence;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/SearchResultSnippet;->contextualText:Ljava/lang/CharSequence;

    return-object v0
.end method
