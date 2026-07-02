.class public Lcom/amazon/klo/HighlightProvider;
.super Ljava/lang/Object;
.source "HighlightProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/klo/HighlightProvider$SingletonHolder;
    }
.end annotation


# static fields
.field private static final BORDER_COLOR:I = 0x66fea900

.field private static final COLOR:I = -0x7f0311dd


# instance fields
.field private highlights:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;"
        }
    .end annotation
.end field

.field private term:Ljava/lang/String;

.field private termMatcher:Lcom/amazon/klo/search/TermMatcher;

.field private termOccurrence:Lcom/amazon/klo/search/TermOccurrence;

.field private termPosition:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/amazon/klo/search/TermMatcher;

    invoke-direct {v0}, Lcom/amazon/klo/search/TermMatcher;-><init>()V

    iput-object v0, p0, Lcom/amazon/klo/HighlightProvider;->termMatcher:Lcom/amazon/klo/search/TermMatcher;

    return-void
.end method

.method private getHighlightsForCurrentPage()Ljava/util/Collection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 125
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 126
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookContent()Lcom/amazon/kindle/krx/content/IBookContent;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->TEXT:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    .line 127
    invoke-interface {v2, v1, v0, v3}, Lcom/amazon/kindle/krx/content/IBookContent;->getElements(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;)Ljava/util/List;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v2, p0, Lcom/amazon/klo/HighlightProvider;->term:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/klo/search/TermMatcher;->getTermsForSearch(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 131
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 133
    iget-object v4, p0, Lcom/amazon/klo/HighlightProvider;->termMatcher:Lcom/amazon/klo/search/TermMatcher;

    invoke-virtual {v4, v0, v3}, Lcom/amazon/klo/search/TermMatcher;->getTermOccurrences(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/amazon/klo/HighlightProvider;->termOccurrence:Lcom/amazon/klo/search/TermOccurrence;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 140
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/klo/search/TermOccurrence;

    .line 142
    iget-object v5, p0, Lcom/amazon/klo/HighlightProvider;->termOccurrence:Lcom/amazon/klo/search/TermOccurrence;

    invoke-virtual {v5, v4}, Lcom/amazon/klo/search/TermOccurrence;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/amazon/klo/HighlightProvider;->termOccurrence:Lcom/amazon/klo/search/TermOccurrence;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/klo/search/TermOccurrence;

    .line 158
    new-instance v11, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;

    invoke-virtual {v4}, Lcom/amazon/klo/search/TermOccurrence;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v6

    invoke-virtual {v4}, Lcom/amazon/klo/search/TermOccurrence;->getEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v7

    const v8, -0x7f0311dd

    const v9, 0x66fea900

    .line 159
    invoke-virtual {p0}, Lcom/amazon/klo/HighlightProvider;->getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->TransientHighlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    if-ne v4, v5, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/amazon/kindle/krx/contentdecoration/HighlightDecoration;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IIZ)V

    .line 158
    invoke-interface {v0, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    return-object v0
.end method

.method public static getInstance()Lcom/amazon/klo/HighlightProvider;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/klo/HighlightProvider$SingletonHolder;->INSTANCE:Lcom/amazon/klo/HighlightProvider;

    return-object v0
.end method

.method private isTermLocatedOnCurrentPage()Z
    .locals 4

    .line 106
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 108
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 109
    iget-object v3, p0, Lcom/amazon/klo/HighlightProvider;->termPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez v3, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-interface {v3, v1}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/amazon/klo/HighlightProvider;->termPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v3, v0}, Lcom/amazon/kindle/krx/reader/IPosition;->isEqual(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/amazon/klo/HighlightProvider;->termPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 116
    invoke-interface {v3, v1}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/klo/HighlightProvider;->termPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method


# virtual methods
.method public declared-synchronized clearHighlights()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 93
    :try_start_0
    iput-object v0, p0, Lcom/amazon/klo/HighlightProvider;->term:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/amazon/klo/HighlightProvider;->termPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 95
    iput-object v0, p0, Lcom/amazon/klo/HighlightProvider;->highlights:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/amazon/kindle/krx/reader/IPage;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/HighlightProvider;->get(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/reader/IPage;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/IPage;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/contentdecoration/IContentDecoration;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object p1, p0, Lcom/amazon/klo/HighlightProvider;->term:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/klo/HighlightProvider;->termPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-nez p1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/amazon/klo/HighlightProvider;->isTermLocatedOnCurrentPage()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 48
    iget-object p1, p0, Lcom/amazon/klo/HighlightProvider;->highlights:Ljava/util/Collection;

    if-nez p1, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/amazon/klo/HighlightProvider;->getHighlightsForCurrentPage()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/klo/HighlightProvider;->highlights:Ljava/util/Collection;

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/amazon/klo/HighlightProvider;->highlights:Ljava/util/Collection;

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getDecorationStyle()Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;
    .locals 1

    .line 64
    sget-object v0, Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;->TransientHighlight:Lcom/amazon/kindle/krx/contentdecoration/DecorationStyle;

    return-object v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/reader/IPage;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lcom/amazon/kindle/krx/reader/IPage;

    invoke-virtual {p0, p1}, Lcom/amazon/klo/HighlightProvider;->getPriority(Lcom/amazon/kindle/krx/reader/IPage;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized pageChanged()V
    .locals 1

    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/amazon/klo/HighlightProvider;->termPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/klo/HighlightProvider;->isTermLocatedOnCurrentPage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/klo/HighlightProvider;->clearHighlights()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTerm(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 79
    :try_start_0
    iput-object p1, p0, Lcom/amazon/klo/HighlightProvider;->term:Ljava/lang/String;

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/amazon/klo/HighlightProvider;->highlights:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTermOccurrence(Lcom/amazon/klo/search/TermOccurrence;)V
    .locals 0

    monitor-enter p0

    .line 74
    :try_start_0
    iput-object p1, p0, Lcom/amazon/klo/HighlightProvider;->termOccurrence:Lcom/amazon/klo/search/TermOccurrence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTermPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    monitor-enter p0

    .line 69
    :try_start_0
    iput-object p1, p0, Lcom/amazon/klo/HighlightProvider;->termPosition:Lcom/amazon/kindle/krx/reader/IPosition;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
