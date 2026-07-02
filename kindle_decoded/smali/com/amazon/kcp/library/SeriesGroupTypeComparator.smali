.class public final Lcom/amazon/kcp/library/SeriesGroupTypeComparator;
.super Ljava/lang/Object;
.source "SeriesGroupTypeComparator.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getGroupTypeRank(Lcom/amazon/kcp/library/models/SeriesGroupType;)I
    .locals 3

    .line 28
    sget-object v0, Lcom/amazon/kcp/library/SeriesGroupTypeComparator$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public compare(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/ILibraryDisplayItem;)I
    .locals 3

    const-string v0, "item1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    const-string v2, "item1.type"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    const-string v2, "item2.type"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    goto :goto_0

    .line 24
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object p1

    const-string v0, "item1.groupType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/SeriesGroupTypeComparator;->getGroupTypeRank(Lcom/amazon/kcp/library/models/SeriesGroupType;)I

    move-result p1

    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object p2

    const-string v0, "item2.groupType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/SeriesGroupTypeComparator;->getGroupTypeRank(Lcom/amazon/kcp/library/models/SeriesGroupType;)I

    move-result p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    check-cast p2, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/SeriesGroupTypeComparator;->compare(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/library/ILibraryDisplayItem;)I

    move-result p1

    return p1
.end method
