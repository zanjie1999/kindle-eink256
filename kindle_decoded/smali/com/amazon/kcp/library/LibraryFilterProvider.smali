.class public final Lcom/amazon/kcp/library/LibraryFilterProvider;
.super Ljava/lang/Object;
.source "LibraryFilterProvider.kt"

# interfaces
.implements Lcom/amazon/kcp/library/ILibraryFilterProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideLibraryFilter(Lcom/amazon/kcp/library/LibraryFilterContext;)Lcom/amazon/kcp/library/AbstractLibraryFilter;
    .locals 4

    const-string v0, "libraryFilterContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterContext;->getLibraryView()Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/LibraryFilterProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 21
    sget-object p1, Lcom/amazon/kcp/library/LibraryFilter;->INSTANCE:Lcom/amazon/kcp/library/LibraryFilter;

    goto :goto_3

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterContext;->getParentGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 17
    new-instance v0, Lcom/amazon/kcp/library/SeriesLibraryFilter;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterContext;->getParentGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1}, Lcom/amazon/kcp/library/SeriesLibraryFilter;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_3
    sget-object p1, Lcom/amazon/kcp/library/LibraryFilter;->INSTANCE:Lcom/amazon/kcp/library/LibraryFilter;

    goto :goto_3

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterContext;->getParentGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_1
    if-nez v1, :cond_7

    .line 12
    new-instance v0, Lcom/amazon/kcp/library/BackIssuesLibraryFilter;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterContext;->getParentGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1}, Lcom/amazon/kcp/library/BackIssuesLibraryFilter;-><init>(Ljava/lang/String;)V

    :goto_2
    move-object p1, v0

    goto :goto_3

    .line 14
    :cond_7
    sget-object p1, Lcom/amazon/kcp/library/LibraryFilter;->INSTANCE:Lcom/amazon/kcp/library/LibraryFilter;

    goto :goto_3

    .line 10
    :cond_8
    sget-object p1, Lcom/amazon/kcp/library/LibraryFilter;->INSTANCE:Lcom/amazon/kcp/library/LibraryFilter;

    :goto_3
    return-object p1
.end method

.method public bridge synthetic provideLibraryFilter(Lcom/amazon/kcp/library/LibraryFilterContext;)Lcom/amazon/kcp/library/ILibraryFilter;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryFilterProvider;->provideLibraryFilter(Lcom/amazon/kcp/library/LibraryFilterContext;)Lcom/amazon/kcp/library/AbstractLibraryFilter;

    move-result-object p1

    return-object p1
.end method
