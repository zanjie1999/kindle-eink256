.class public final Lcom/amazon/readingactions/ui/widget/EndActionsTitleWidget$Companion;
.super Ljava/lang/Object;
.source "EndActionsTitleWidget.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/widget/EndActionsTitleWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEndActionsTitleWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EndActionsTitleWidget.kt\ncom/amazon/readingactions/ui/widget/EndActionsTitleWidget$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,62:1\n1240#2:63\n1271#2,4:64\n*E\n*S KotlinDebug\n*F\n+ 1 EndActionsTitleWidget.kt\ncom/amazon/readingactions/ui/widget/EndActionsTitleWidget$Companion\n*L\n24#1:63\n24#1,4:64\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/widget/EndActionsTitleWidget$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createTitleWidgetFromIBook(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/readingactions/ui/widget/TitleWidget;
    .locals 14

    const-string v0, "currentBook"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getAuthors()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, ";"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 65
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    .line 66
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    const-string v3, ","

    .line 25
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    if-nez v2, :cond_0

    const-string v2, " "

    goto :goto_1

    :cond_0
    const-string v2, ""

    :goto_1
    move-object v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    .line 26
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    move-object v6, v1

    .line 28
    new-instance v0, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    .line 29
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    .line 28
    invoke-direct/range {v2 .. v9}, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;FI)V

    .line 37
    new-instance v1, Lcom/amazon/readingactions/ui/widget/EndActionsTitleWidget;

    .line 38
    new-instance v2, Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;

    const-string v3, "hdrw"

    invoke-direct {v2, v0, v3}, Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;-><init>(Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v3, "EndActionsPlugin.sdk"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getCoverManager()Lcom/amazon/kindle/krx/cover/ICoverManager;

    move-result-object v0

    .line 40
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    .line 41
    sget-object v3, Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;->MEDIUM:Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;

    .line 39
    invoke-interface {v0, p1, v3}, Lcom/amazon/kindle/krx/cover/ICoverManager;->getCoverAsBitmap(Ljava/lang/String;Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "EndActionsPlugin.sdk.cov\u2026er.CoverImageType.MEDIUM)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {v1, v2, p1}, Lcom/amazon/readingactions/ui/widget/EndActionsTitleWidget;-><init>(Lcom/amazon/readingactions/sidecar/def/widgets/TitleWidgetDef;Landroid/graphics/Bitmap;)V

    return-object v1
.end method
