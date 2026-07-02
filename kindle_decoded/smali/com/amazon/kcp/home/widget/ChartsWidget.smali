.class public final Lcom/amazon/kcp/home/widget/ChartsWidget;
.super Lcom/amazon/kindle/home/card/AbstractHomeCard;
.source "ChartsWidget.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChartsWidget.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChartsWidget.kt\ncom/amazon/kcp/home/widget/ChartsWidget\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,273:1\n133#2,3:274\n153#2,3:277\n1#3:280\n1147#4,2:281\n1221#4,4:283\n*E\n*S KotlinDebug\n*F\n+ 1 ChartsWidget.kt\ncom/amazon/kcp/home/widget/ChartsWidget\n*L\n78#1,3:274\n80#1,3:277\n62#1,2:281\n62#1,4:283\n*E\n"
.end annotation


# instance fields
.field private asin:Ljava/lang/String;

.field private final card:Lcom/amazon/kindle/home/model/CardData;

.field private chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

.field private final coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

.field private final fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

.field private final priority:I

.field private final resources:Landroid/content/res/Resources;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final themeImageDownloaded:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final viewLayoutId:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/home/model/CardData;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;",
            "Lcom/amazon/kcp/cover/ICoverCacheManager;",
            "Lcom/amazon/kindle/home/model/CardData;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coverCacheManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "themes"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object p3, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

    iput-object p4, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    .line 59
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->charts_card_view:I

    iput p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->viewLayoutId:I

    .line 60
    invoke-virtual {p4}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->priority:I

    const/16 p1, 0xa

    .line 281
    invoke-static {p5, p1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result p1

    const/16 p2, 0x10

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    .line 282
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 283
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 284
    check-cast p3, Ljava/lang/String;

    .line 62
    new-instance p4, Lkotlin/Pair;

    const/4 p5, 0x0

    invoke-direct {p4, p3, p5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->themeImageDownloaded:Ljava/util/Map;

    .line 64
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string p2, "Utils.getFactory()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Utils.getFactory().context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "Utils.getFactory().context.resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->resources:Landroid/content/res/Resources;

    const-string p1, ""

    .line 66
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->asin:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$reportAction(Lcom/amazon/kcp/home/widget/ChartsWidget;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/ChartsWidget;->reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    return-void
.end method

.method private final allImagesDownloaded()Z
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->themeImageDownloaded:Ljava/util/Map;

    .line 274
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 275
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    :goto_1
    return v2
.end method

.method private final anyImageDownloadsFailed()Z
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->themeImageDownloaded:Ljava/util/Map;

    .line 277
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 80
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method private final bindBookViews(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/amazon/kcp/home/ui/RatingBarButton;Landroid/widget/TextView;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 177
    iget-object v5, v0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v5}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/amazon/kindle/home/model/TextZone;

    const/4 v7, 0x0

    if-nez v6, :cond_0

    move-object v5, v7

    :cond_0
    check-cast v5, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz v5, :cond_7

    .line 178
    invoke-virtual {v5}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v6, v0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    const-string v8, "chartsView"

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookNumTextView1()Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, v0, Lcom/amazon/kcp/home/widget/ChartsWidget;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/amazon/kindle/librarymodule/R$string;->charts_ranked_one:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 181
    :cond_1
    iget-object v6, v0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookNumTextView2()Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v5, v0, Lcom/amazon/kcp/home/widget/ChartsWidget;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/amazon/kindle/librarymodule/R$string;->charts_ranked_two:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 182
    :cond_2
    iget-object v6, v0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookNumTextView3()Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v5, v0, Lcom/amazon/kcp/home/widget/ChartsWidget;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/amazon/kindle/librarymodule/R$string;->charts_ranked_three:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 183
    :cond_3
    invoke-virtual {v5}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v5

    :goto_0
    const-string/jumbo v6, "when (bookNumTextView) {\u2026 -> it.text\n            }"

    .line 179
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 182
    :cond_4
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 181
    :cond_5
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 180
    :cond_6
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    .line 188
    :cond_7
    :goto_1
    iget-object v1, v0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Lcom/amazon/kindle/home/model/ImageZone;

    if-nez v5, :cond_8

    move-object v1, v7

    :cond_8
    check-cast v1, Lcom/amazon/kindle/home/model/ImageZone;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_c

    .line 190
    new-instance v8, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;

    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_b

    check-cast v9, Ljava/lang/String;

    invoke-direct {v8, v9, v1}, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;-><init>(Ljava/lang/String;Lcom/amazon/kindle/home/model/ImageZone;)V

    .line 191
    iget-object v9, v0, Lcom/amazon/kcp/home/widget/ChartsWidget;->coverCacheManager:Lcom/amazon/kcp/cover/ICoverCacheManager;

    sget-object v10, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {v9, v8, v10, v6}, Lcom/amazon/kcp/cover/ICoverCacheManager;->getCover(Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kindle/cover/ImageSizes$Type;I)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v8

    const-string v9, "coverCacheManager.getCov\u2026ImageSizes.Type.SMALL, 0)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    new-instance v9, Lcom/amazon/kcp/home/widget/ChartsWidget$bindBookViews$2$1$1;

    invoke-direct {v9, v2}, Lcom/amazon/kcp/home/widget/ChartsWidget$bindBookViews$2$1$1;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v8, v9}, Lcom/amazon/kcp/cover/UpdatableCover;->setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V

    .line 196
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/ImageZone;->getImageAltText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/2addr v9, v5

    if-eqz v9, :cond_9

    goto :goto_2

    :cond_9
    move-object v8, v7

    :goto_2
    if-eqz v8, :cond_a

    .line 197
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 200
    :cond_a
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/ImageZone;->getImageAsin()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kcp/home/widget/ChartsWidget;->asin:Ljava/lang/String;

    goto :goto_3

    .line 190
    :cond_b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_c
    :goto_3
    iget-object v1, v0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v2, :cond_d

    move-object v1, v7

    :cond_d
    check-cast v1, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz v1, :cond_e

    .line 204
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :cond_e
    iget-object v1, v0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v2, :cond_f

    move-object v1, v7

    :cond_f
    check-cast v1, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz v1, :cond_10

    .line 208
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :cond_10
    iget-object v1, v0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Landroid/widget/RatingBar;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v2, :cond_11

    move-object v1, v7

    :cond_11
    check-cast v1, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz v1, :cond_14

    const/16 v2, 0x8

    .line 213
    :try_start_0
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    int-to-float v8, v6

    cmpl-float v8, v1, v8

    if-lez v8, :cond_13

    .line 215
    invoke-virtual {v3, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 216
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/RatingBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 217
    new-instance v1, Lcom/amazon/kcp/home/actions/ActionHandler;

    iget-object v8, v0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    new-instance v9, Lcom/amazon/kcp/home/widget/ChartsWidget$bindBookViews$5$handler$1;

    invoke-direct {v9, v0}, Lcom/amazon/kcp/home/widget/ChartsWidget$bindBookViews$5$handler$1;-><init>(Lcom/amazon/kcp/home/widget/ChartsWidget;)V

    invoke-direct {v1, v8, v7, v9}, Lcom/amazon/kcp/home/actions/ActionHandler;-><init>(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V

    .line 218
    new-instance v8, Lcom/amazon/kcp/home/widget/ChartsWidget$bindBookViews$5$1;

    invoke-direct {v8, v1}, Lcom/amazon/kcp/home/widget/ChartsWidget$bindBookViews$5$1;-><init>(Lcom/amazon/kcp/home/actions/ActionHandler;)V

    invoke-virtual {v3, v8}, Lcom/amazon/kcp/home/ui/RatingBarButton;->setOnClickListener(Lkotlin/jvm/functions/Function1;)V

    .line 219
    invoke-virtual {v3, v6}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 220
    iget-object v1, v0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v8, v1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v8, :cond_12

    goto :goto_4

    :cond_12
    move-object v7, v1

    :goto_4
    check-cast v7, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz v7, :cond_14

    .line 221
    invoke-virtual {v7}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {v7}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v8

    const-string v9, "("

    const-string v10, ""

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ")"

    const-string v16, ""

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    invoke-static/range {v14 .. v19}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 223
    iget-object v7, v0, Lcom/amazon/kcp/home/widget/ChartsWidget;->resources:Landroid/content/res/Resources;

    sget v8, Lcom/amazon/kindle/librarymodule/R$plurals;->charts_review_counts:I

    new-array v5, v5, [Ljava/lang/Object;

    .line 224
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    .line 223
    invoke-virtual {v7, v8, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "resources.getQuantityStr\u2026reviewCount, reviewCount)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 226
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5

    .line 229
    :cond_13
    invoke-virtual {v3, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 230
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    nop

    .line 233
    invoke-virtual {v3, v2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 234
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-object v1, v0, Lcom/amazon/kcp/home/widget/ChartsWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v1, :cond_14

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v1

    if-eqz v1, :cond_14

    const-string v2, "com.amazon.kcp.home.widget.ChartWidget"

    const-string v3, "RatingZoneError"

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_14
    :goto_5
    return-void
.end method

.method private final reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 9

    .line 258
    iget-object p3, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p3

    if-eqz p3, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    .line 259
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "refTag"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 260
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v2}, Lcom/amazon/kindle/home/model/CardData;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "widgetPosition"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 261
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/HomeAction;->getEvent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "action"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 262
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/HomeAction;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "actionType"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "actionSource"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 258
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "HomeSKWidget"

    const-string v2, "Click"

    invoke-interface {p3, v1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 266
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Ljava/lang/String;

    if-nez p3, :cond_1

    const/4 p1, 0x0

    :cond_1
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v8, 0x0

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordAction$default(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/amazon/kindle/home/card/HomeWidgetListener;Lcom/amazon/kindle/home/action/HomeActionManager;)V
    .locals 12

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "am"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    instance-of p2, p1, Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-nez p2, :cond_0

    const-string p1, "com.amazon.kcp.home.widget.ChartWidget"

    const-string p2, "Non-ChartsCard View received, ignoring and returning w/o binding a model to view"

    .line 86
    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 91
    :cond_0
    check-cast p1, Lcom/amazon/kcp/home/ui/ChartsCardView;

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    const-string p2, "chartsView"

    const/4 v0, 0x0

    if-eqz p1, :cond_44

    .line 92
    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getTitleImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setTitleImageView(Landroid/widget/ImageView;)V

    .line 93
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_43

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getSubTitleTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setSubTitleTextView(Landroid/widget/TextView;)V

    .line 95
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_42

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookNumTextView1()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setBookNumTextView1(Landroid/widget/TextView;)V

    .line 96
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_41

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getCoverView1()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setCoverView1(Landroid/widget/ImageView;)V

    .line 97
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_40

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookTitleView1()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setBookTitleView1(Landroid/widget/TextView;)V

    .line 98
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_3f

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookAuthorView1()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setBookAuthorView1(Landroid/widget/TextView;)V

    .line 99
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_3e

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getRatingView1()Lcom/amazon/kcp/home/ui/RatingBarButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setRatingView1(Lcom/amazon/kcp/home/ui/RatingBarButton;)V

    .line 100
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_3d

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getReviewCountView1()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setReviewCountView1(Landroid/widget/TextView;)V

    .line 102
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_3c

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookNumTextView2()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setBookNumTextView2(Landroid/widget/TextView;)V

    .line 103
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_3b

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getCoverView2()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setCoverView2(Landroid/widget/ImageView;)V

    .line 104
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_3a

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookTitleView2()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setBookTitleView2(Landroid/widget/TextView;)V

    .line 105
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_39

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookAuthorView2()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setBookAuthorView2(Landroid/widget/TextView;)V

    .line 106
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_38

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getRatingView2()Lcom/amazon/kcp/home/ui/RatingBarButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setRatingView2(Lcom/amazon/kcp/home/ui/RatingBarButton;)V

    .line 107
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_37

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getReviewCountView2()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setReviewCountView2(Landroid/widget/TextView;)V

    .line 109
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_36

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookNumTextView3()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setBookNumTextView3(Landroid/widget/TextView;)V

    .line 110
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_35

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getCoverView3()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setCoverView3(Landroid/widget/ImageView;)V

    .line 111
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_34

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookTitleView3()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setBookTitleView3(Landroid/widget/TextView;)V

    .line 112
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_33

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookAuthorView3()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setBookAuthorView3(Landroid/widget/TextView;)V

    .line 113
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_32

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getRatingView3()Lcom/amazon/kcp/home/ui/RatingBarButton;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setRatingView3(Lcom/amazon/kcp/home/ui/RatingBarButton;)V

    .line 114
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_31

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getReviewCountView3()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setReviewCountView3(Landroid/widget/TextView;)V

    .line 116
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_30

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getSeeFullChartButton()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->setSeeFullChartButton(Landroid/widget/Button;)V

    .line 118
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getTitleImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/amazon/kindle/home/model/ThemedImageZone;

    if-nez v2, :cond_1

    move-object v1, v0

    :cond_1
    check-cast v1, Lcom/amazon/kindle/home/model/ThemedImageZone;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_b

    .line 119
    iget-object v5, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object v6, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v5, v6}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v0

    :goto_0
    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    sget-object v6, Lcom/amazon/kcp/home/widget/ChartsWidget$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v4, :cond_4

    .line 121
    :goto_1
    sget-object v5, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getLightImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 120
    :cond_4
    sget-object v5, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getDarkImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    :goto_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    move-object v6, v0

    :goto_3
    if-eqz v6, :cond_a

    .line 127
    iget-object v7, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getTitleImageView()Landroid/widget/ImageView;

    move-result-object v7

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    iget-object v5, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getTitleImageView()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getImageAltText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 132
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    if-eqz v6, :cond_a

    .line 138
    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getImageAltText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move-object p1, v0

    :goto_4
    if-eqz p1, :cond_b

    .line 139
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getTitleImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 140
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_5

    .line 139
    :cond_7
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_8
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_9
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_a
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 143
    :cond_b
    :goto_5
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getSubTitleTextView()Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v1

    iget-object v5, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v5, :cond_2d

    invoke-virtual {v5}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getSubTitleTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Lcom/amazon/kindle/home/model/TextZone;

    if-nez v5, :cond_c

    move-object v1, v0

    :cond_c
    check-cast v1, Lcom/amazon/kindle/home/model/TextZone;

    if-eqz v1, :cond_e

    .line 144
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getSubTitleTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/TextZone;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    goto :goto_6

    :cond_d
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_e
    :goto_6
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookNumTextView1()Landroid/widget/TextView;

    move-result-object v6

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getCoverView1()Landroid/widget/ImageView;

    move-result-object v7

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookTitleView1()Landroid/widget/TextView;

    move-result-object v8

    .line 149
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookAuthorView1()Landroid/widget/TextView;

    move-result-object v9

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getRatingView1()Lcom/amazon/kcp/home/ui/RatingBarButton;

    move-result-object v10

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getReviewCountView1()Landroid/widget/TextView;

    move-result-object v11

    move-object v5, p0

    .line 148
    invoke-direct/range {v5 .. v11}, Lcom/amazon/kcp/home/widget/ChartsWidget;->bindBookViews(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/amazon/kcp/home/ui/RatingBarButton;Landroid/widget/TextView;)V

    .line 151
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookNumTextView2()Landroid/widget/TextView;

    move-result-object v6

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getCoverView2()Landroid/widget/ImageView;

    move-result-object v7

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookTitleView2()Landroid/widget/TextView;

    move-result-object v8

    .line 152
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookAuthorView2()Landroid/widget/TextView;

    move-result-object v9

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getRatingView2()Lcom/amazon/kcp/home/ui/RatingBarButton;

    move-result-object v10

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getReviewCountView2()Landroid/widget/TextView;

    move-result-object v11

    move-object v5, p0

    .line 151
    invoke-direct/range {v5 .. v11}, Lcom/amazon/kcp/home/widget/ChartsWidget;->bindBookViews(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/amazon/kcp/home/ui/RatingBarButton;Landroid/widget/TextView;)V

    .line 154
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookNumTextView3()Landroid/widget/TextView;

    move-result-object v6

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getCoverView3()Landroid/widget/ImageView;

    move-result-object v7

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookTitleView3()Landroid/widget/TextView;

    move-result-object v8

    .line 155
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getBookAuthorView3()Landroid/widget/TextView;

    move-result-object v9

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getRatingView3()Lcom/amazon/kcp/home/ui/RatingBarButton;

    move-result-object v10

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getReviewCountView3()Landroid/widget/TextView;

    move-result-object v11

    move-object v5, p0

    .line 154
    invoke-direct/range {v5 .. v11}, Lcom/amazon/kcp/home/widget/ChartsWidget;->bindBookViews(Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/amazon/kcp/home/ui/RatingBarButton;Landroid/widget/TextView;)V

    .line 157
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getSeeFullChartButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/amazon/kindle/home/model/ButtonZone;

    if-nez v1, :cond_f

    move-object p1, v0

    :cond_f
    check-cast p1, Lcom/amazon/kindle/home/model/ButtonZone;

    if-eqz p1, :cond_12

    .line 158
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getSeeFullChartButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ButtonZone;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ButtonZone;->getAltText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 160
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getSeeFullChartButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 161
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_7

    .line 160
    :cond_10
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_11
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_12
    :goto_7
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    new-instance v1, Lcom/amazon/kcp/home/widget/ChartsWidget$bindView$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/home/widget/ChartsWidget$bindView$4;-><init>(Lcom/amazon/kcp/home/widget/ChartsWidget;)V

    const/4 v2, 0x7

    new-array v2, v2, [Landroid/view/View;

    iget-object v5, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v5, :cond_19

    invoke-virtual {v5}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getCoverView1()Landroid/widget/ImageView;

    move-result-object v5

    aput-object v5, v2, v3

    iget-object v3, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getCoverView2()Landroid/widget/ImageView;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    .line 165
    iget-object v4, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getCoverView3()Landroid/widget/ImageView;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getReviewCountView1()Landroid/widget/TextView;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getReviewCountView2()Landroid/widget/TextView;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getReviewCountView3()Landroid/widget/TextView;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 166
    iget-object v4, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->chartsView:Lcom/amazon/kcp/home/ui/ChartsCardView;

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lcom/amazon/kcp/home/ui/ChartsCardView;->getSeeFullChartButton()Landroid/widget/Button;

    move-result-object p2

    aput-object p2, v2, v3

    .line 164
    invoke-interface {p3, p1, v0, v1, v2}, Lcom/amazon/kindle/home/action/HomeActionManager;->registerActions(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;[Landroid/view/View;)V

    return-void

    .line 166
    :cond_13
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_14
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_18
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1a
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1b
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1c
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1e
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_20
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_21
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_22
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_23
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_24
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_25
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_26
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_27
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_28
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_29
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_2a
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2c
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_2d
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2e
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_2f
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_30
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_31
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_32
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_33
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_34
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_35
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_36
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_37
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_38
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_39
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_3a
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_3b
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_3c
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_3d
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_3e
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_3f
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_40
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_41
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_42
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_43
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_44
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCard()Lcom/amazon/kindle/home/model/CardData;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->priority:I

    return v0
.end method

.method public getState()Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/ChartsWidget;->allImagesDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/home/widget/ChartsWidget;->anyImageDownloadsFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->FAILED:Lcom/amazon/kindle/home/card/HomeCardState;

    goto :goto_0

    .line 74
    :cond_1
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->LOADING:Lcom/amazon/kindle/home/card/HomeCardState;

    :goto_0
    return-object v0
.end method

.method public final getThemeImageDownloaded$LibraryModule_release()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->themeImageDownloaded:Ljava/util/Map;

    return-object v0
.end method

.method public getViewLayoutId()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->viewLayoutId:I

    return v0
.end method

.method public reportImpressionData(Z)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 242
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "refTag"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 243
    invoke-virtual {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;->getDisplayPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "widgetPosition"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 241
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v1, :cond_1

    const-string v2, "HomeSKWidget"

    if-eqz p1, :cond_0

    .line 248
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 250
    :cond_0
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;Ljava/util/Map;)V

    .line 254
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->fm:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iget-object v0, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/metrics/HomeFastMetricsKt;->recordImpression(Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/ChartsWidget;->card:Lcom/amazon/kindle/home/model/CardData;

    invoke-virtual {v1}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/ChartsWidget;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
