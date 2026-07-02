.class public Lcom/amazon/klo/search/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"

# interfaces
.implements Lcom/amazon/kindle/krx/search/ISearchResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/klo/search/SearchResult$MatchType;,
        Lcom/amazon/klo/search/SearchResult$Style;
    }
.end annotation


# instance fields
.field private matchType:Lcom/amazon/klo/search/SearchResult$MatchType;

.field private style:Lcom/amazon/klo/search/SearchResult$Style;

.field private final term:Lcom/amazon/klo/list/TermListItem;

.field private title:Lcom/amazon/kindle/krx/search/SearchResultSnippet;


# direct methods
.method public constructor <init>(Lcom/amazon/klo/list/TermListItem;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/klo/search/SearchResult;->term:Lcom/amazon/klo/list/TermListItem;

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/amazon/klo/search/SearchResult;->matchType:Lcom/amazon/klo/search/SearchResult$MatchType;

    .line 35
    sget-object v0, Lcom/amazon/klo/search/SearchResult$Style;->COLLAPSED:Lcom/amazon/klo/search/SearchResult$Style;

    iput-object v0, p0, Lcom/amazon/klo/search/SearchResult;->style:Lcom/amazon/klo/search/SearchResult$Style;

    .line 36
    iput-object p1, p0, Lcom/amazon/klo/search/SearchResult;->title:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    return-void
.end method


# virtual methods
.method public getMatchType()Lcom/amazon/klo/search/SearchResult$MatchType;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/klo/search/SearchResult;->matchType:Lcom/amazon/klo/search/SearchResult$MatchType;

    return-object v0
.end method

.method public getStyle()Lcom/amazon/klo/search/SearchResult$Style;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/klo/search/SearchResult;->style:Lcom/amazon/klo/search/SearchResult$Style;

    return-object v0
.end method

.method public getTerm()Lcom/amazon/klo/list/TermListItem;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/klo/search/SearchResult;->term:Lcom/amazon/klo/list/TermListItem;

    return-object v0
.end method

.method public getTitle()Lcom/amazon/kindle/krx/search/SearchResultSnippet;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/klo/search/SearchResult;->title:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    return-object v0
.end method

.method public setMatchType(Lcom/amazon/klo/search/SearchResult$MatchType;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amazon/klo/search/SearchResult;->matchType:Lcom/amazon/klo/search/SearchResult$MatchType;

    return-void
.end method

.method public setStyle(Lcom/amazon/klo/search/SearchResult$Style;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/klo/search/SearchResult;->style:Lcom/amazon/klo/search/SearchResult$Style;

    return-void
.end method

.method public setTitle(Lcom/amazon/kindle/krx/search/SearchResultSnippet;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/amazon/klo/search/SearchResult;->title:Lcom/amazon/kindle/krx/search/SearchResultSnippet;

    return-void
.end method
