.class public final Lcom/amazon/kindle/utils/SeriesBindingHelper;
.super Ljava/lang/Object;
.source "SeriesBindingHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/utils/SeriesBindingHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/amazon/kindle/utils/SeriesBindingHelper;

    invoke-direct {v0}, Lcom/amazon/kindle/utils/SeriesBindingHelper;-><init>()V

    sput-object v0, Lcom/amazon/kindle/utils/SeriesBindingHelper;->INSTANCE:Lcom/amazon/kindle/utils/SeriesBindingHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isValidGroupBookType(Lcom/amazon/kindle/model/content/IBookID;)Z
    .locals 1

    const-string v0, "bookId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, Lcom/amazon/kindle/utils/GroupContentHelper;->isFalkorGroup(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/amazon/kindle/utils/GroupContentHelper;->isComicGroup(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "GroupContentHelper.isComicGroup(bookId)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final shouldShowSeriesBinding(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z
    .locals 1

    const-string v0, "libraryItem"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/amazon/kindle/utils/SeriesBindingHelper;->INSTANCE:Lcom/amazon/kindle/utils/SeriesBindingHelper;

    .line 17
    invoke-virtual {v0, p0}, Lcom/amazon/kindle/utils/SeriesBindingHelper;->isValidGroupForSeriesBinding(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {p0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p0

    const-string v0, "libraryItem.bookID"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amazon/kindle/utils/SeriesBindingHelper;->isValidGroupBookType(Lcom/amazon/kindle/model/content/IBookID;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final isValidGroupForSeriesBinding(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z
    .locals 2

    const-string v0, "libraryItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/SeriesGroupType;->NONE:Lcom/amazon/kcp/library/models/SeriesGroupType;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p1

    const-string v0, "libraryItem.type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
