.class public Lcom/amazon/kcp/search/enhancedsearch/SearchResultSubSectionHeader;
.super Ljava/lang/Object;
.source "SearchResultSubSectionHeader.java"

# interfaces
.implements Lcom/amazon/kindle/krx/search/ISearchResultGroup;
.implements Lcom/amazon/kindle/krx/search/ISearchResult;


# instance fields
.field private final level:I

.field private final searchResultGroup:Lcom/amazon/kindle/krx/search/ISearchResultGroup;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/search/ISearchResultGroup;I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchResultSubSectionHeader;->searchResultGroup:Lcom/amazon/kindle/krx/search/ISearchResultGroup;

    .line 28
    iput p2, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchResultSubSectionHeader;->level:I

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchResultSubSectionHeader;->level:I

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchResultSubSectionHeader;->searchResultGroup:Lcom/amazon/kindle/krx/search/ISearchResultGroup;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/search/ISearchResultGroup;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
