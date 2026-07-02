.class public final Lcom/amazon/kindle/recaps/util/TocUtil;
.super Ljava/lang/Object;
.source "TocUtil.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/recaps/util/TocUtil;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/amazon/kindle/recaps/util/TocUtil;

    invoke-direct {v0}, Lcom/amazon/kindle/recaps/util/TocUtil;-><init>()V

    sput-object v0, Lcom/amazon/kindle/recaps/util/TocUtil;->INSTANCE:Lcom/amazon/kindle/recaps/util/TocUtil;

    .line 20
    const-class v0, Lcom/amazon/kindle/recaps/util/TocUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/recaps/util/TocUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTocIndexForPosition(JLcom/amazon/kindle/krx/reader/ITableOfContents;)I
    .locals 6

    const-string v0, "toc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/ITableOfContents;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 54
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 58
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 59
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 63
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_4

    .line 64
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "tocEntries[tocIndex]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    const-string v4, "tocEntries[tocIndex].position"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    if-lez v5, :cond_3

    add-int/lit8 v0, v1, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0

    :cond_5
    :goto_2
    const/4 p1, -0x1

    return p1
.end method

.method public final getTopLevelTocItems(Lcom/amazon/kindle/krx/reader/ITableOfContents;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/ITableOfContents;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 29
    sget-object p1, Lcom/amazon/kindle/recaps/util/TocUtil;->TAG:Ljava/lang/String;

    const-string v0, "No Entries for Table Of Contents"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/ITableOfContents;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    .line 35
    sget-object p1, Lcom/amazon/kindle/recaps/util/TocUtil;->TAG:Ljava/lang/String;

    const-string v0, "Top Level Table Of Contents entries not found"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_1
    return-object p1
.end method
