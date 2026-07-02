.class public final Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;
.super Ljava/lang/Object;
.source "EndActionsLayoutResolver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEndActionsLayoutResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EndActionsLayoutResolver.kt\ncom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion\n*L\n1#1,209:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;-><init>()V

    return-void
.end method

.method private final buildWidgets(Lcom/amazon/ea/sidecar/def/Sidecar;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/Sidecar;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/ea/model/widget/WidgetModel;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-static {}, Lcom/amazon/ea/guava/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 87
    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/Sidecar;->widgetIDToWidget:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string/jumbo v2, "widgetIDToWidgetModel"

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    .line 88
    invoke-direct {p0, v1}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;->tryCreateWidget(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)Lcom/amazon/ea/model/widget/WidgetModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 90
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;->getTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding widget model for widget ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final getTAG()Ljava/lang/String;
    .locals 1

    .line 43
    invoke-static {}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final tryCreateLayout(Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;Ljava/util/Map;)Lcom/amazon/ea/model/layout/LayoutModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/amazon/ea/model/widget/WidgetModel;",
            ">;)",
            "Lcom/amazon/ea/model/layout/LayoutModel;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "null def given, returning null layout model"

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 196
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 197
    const-class v2, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    check-cast p1, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;

    invoke-static {p1, p2}, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModelBuilder;->build(Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;Ljava/util/Map;)Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;

    move-result-object v0

    goto :goto_0

    .line 200
    :cond_1
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 201
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "unknown layout def, no model builder found."

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private final tryCreateWidget(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)Lcom/amazon/ea/model/widget/WidgetModel;
    .locals 17

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "null def given, returning null widget model"

    invoke-static {v0, v2}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 112
    :cond_0
    instance-of v2, v0, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    if-eqz v2, :cond_1

    .line 113
    new-instance v2, Lcom/amazon/ea/model/widget/AdapterModel;

    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    move-object v5, v0

    check-cast v5, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    invoke-virtual {v5}, Lcom/amazon/readingactions/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 114
    new-instance v6, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion$tryCreateWidget$adapter$1;

    invoke-direct {v6, v0}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion$tryCreateWidget$adapter$1;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 113
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amazon/ea/model/widget/AdapterModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;)V

    .line 115
    invoke-virtual {v2}, Lcom/amazon/ea/model/widget/AdapterModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_0
    move-object v1, v2

    goto/16 :goto_3

    .line 118
    :cond_1
    instance-of v2, v0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    if-eqz v2, :cond_2

    .line 119
    new-instance v2, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    .line 120
    iget-object v4, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    const-string v3, "def.id"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v6, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayKey:Ljava/lang/String;

    iget v7, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayLimit:I

    move-object v3, v0

    check-cast v3, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    invoke-virtual {v3}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRefTagFeatureIdPartial()Ljava/lang/String;

    move-result-object v8

    .line 121
    invoke-virtual {v3}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getByLine()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getRecommendations()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v3}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getOneClickBorrowSupported()Z

    move-result v12

    invoke-virtual {v3}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getProgramLightImageUrl()Ljava/lang/String;

    move-result-object v13

    .line 122
    invoke-virtual {v3}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getProgramDarkImageUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getProgramImageAltText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getShowBadges()Z

    move-result v16

    move-object v3, v2

    .line 119
    invoke-direct/range {v3 .. v16}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 124
    new-instance v3, Lcom/amazon/ea/model/widget/AdapterModel;

    iget-object v4, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    .line 125
    new-instance v5, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion$tryCreateWidget$adapter$2;

    invoke-direct {v5, v2}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion$tryCreateWidget$adapter$2;-><init>(Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;)V

    .line 124
    invoke-direct {v3, v4, v0, v5}, Lcom/amazon/ea/model/widget/AdapterModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;)V

    .line 126
    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/AdapterModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_1
    move-object v1, v3

    goto/16 :goto_3

    .line 128
    :cond_2
    instance-of v2, v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    if-eqz v2, :cond_3

    .line 129
    new-instance v2, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    .line 130
    iget-object v4, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v5, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v6, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayKey:Ljava/lang/String;

    iget v7, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayLimit:I

    move-object v3, v0

    check-cast v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;

    iget-object v8, v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 131
    iget-object v9, v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->title:Ljava/lang/String;

    iget-object v10, v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->recommendations:Ljava/util/List;

    iget-boolean v11, v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->buyButtonVisible:Z

    iget-boolean v12, v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->buyInStore:Z

    .line 132
    iget-boolean v13, v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->oneClickBorrowSupported:Z

    iget-boolean v14, v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->showBadges:Z

    iget-boolean v15, v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookGridWidgetDef;->showShareButton:Z

    move-object v3, v2

    .line 129
    invoke-direct/range {v3 .. v15}, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZZ)V

    .line 134
    new-instance v3, Lcom/amazon/ea/model/widget/AdapterModel;

    iget-object v4, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    .line 135
    new-instance v5, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion$tryCreateWidget$adapter$3;

    invoke-direct {v5, v2}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion$tryCreateWidget$adapter$3;-><init>(Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;)V

    .line 134
    invoke-direct {v3, v4, v0, v5}, Lcom/amazon/ea/model/widget/AdapterModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;)V

    .line 136
    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/AdapterModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1

    .line 139
    :cond_3
    instance-of v2, v0, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;

    if-eqz v2, :cond_7

    .line 140
    move-object v2, v0

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;

    iget-boolean v3, v2, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;->isCurrentBook:Z

    if-eqz v3, :cond_5

    .line 142
    iget-object v3, v2, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    instance-of v3, v3, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    if-nez v3, :cond_4

    return-object v1

    .line 144
    :cond_4
    new-instance v3, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;

    iget-object v5, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v6, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v7, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayKey:Ljava/lang/String;

    .line 145
    iget v8, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayLimit:I

    iget-object v9, v2, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    iget-object v10, v2, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;->title:Ljava/lang/String;

    iget-object v4, v2, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;->recommendation:Lcom/amazon/ea/sidecar/def/data/RecommendationData;

    move-object v11, v4

    check-cast v11, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    const/4 v12, 0x0

    move-object v4, v3

    .line 144
    invoke-direct/range {v4 .. v12}, Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;Z)V

    .line 146
    new-instance v4, Lcom/amazon/ea/model/widget/AdapterModel;

    iget-object v5, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;->title:Ljava/lang/String;

    .line 147
    new-instance v6, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion$tryCreateWidget$adapter$4;

    invoke-direct {v6, v3}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion$tryCreateWidget$adapter$4;-><init>(Lcom/amazon/ea/sidecar/def/widgets/HeaderWidgetDef;)V

    .line 146
    invoke-direct {v4, v5, v0, v2, v6}, Lcom/amazon/ea/model/widget/AdapterModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;)V

    .line 148
    invoke-virtual {v4}, Lcom/amazon/ea/model/widget/AdapterModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v1, v4

    goto :goto_2

    .line 150
    :cond_5
    invoke-static {v2}, Lcom/amazon/ea/model/widget/buybook/BuyBookModelBuilder;->build(Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;)Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    move-result-object v1

    :cond_6
    :goto_2
    return-object v1

    .line 154
    :cond_7
    instance-of v2, v0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;

    if-eqz v2, :cond_8

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;

    invoke-static {v0}, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModelBuilder;->build(Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;)Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    move-result-object v1

    goto/16 :goto_3

    .line 155
    :cond_8
    instance-of v2, v0, Lcom/amazon/readingactions/sidecar/def/widgets/GoodReadsShelfWidgetDef;

    if-eqz v2, :cond_9

    sget-object v1, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModelBuilder;->Companion:Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModelBuilder$Companion;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/GoodReadsShelfWidgetDef;

    invoke-virtual {v1, v0}, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModelBuilder$Companion;->build(Lcom/amazon/readingactions/sidecar/def/widgets/GoodReadsShelfWidgetDef;)Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;

    move-result-object v1

    goto/16 :goto_3

    .line 156
    :cond_9
    instance-of v2, v0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;

    if-eqz v2, :cond_a

    sget-object v1, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder;->Companion:Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder$Companion;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;

    invoke-virtual {v1, v0}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModelBuilder$Companion;->build(Lcom/amazon/readingactions/sidecar/def/widgets/RatingAndReviewingWidgetDef;)Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    move-result-object v1

    goto :goto_3

    .line 157
    :cond_a
    instance-of v2, v0, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    if-eqz v2, :cond_b

    .line 158
    new-instance v2, Lcom/amazon/ea/model/widget/AdapterModel;

    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    move-object v5, v0

    check-cast v5, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    iget-object v5, v5, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;->title:Ljava/lang/String;

    .line 159
    new-instance v6, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion$tryCreateWidget$adapter$5;

    invoke-direct {v6, v0}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion$tryCreateWidget$adapter$5;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 158
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amazon/ea/model/widget/AdapterModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;)V

    .line 160
    invoke-virtual {v2}, Lcom/amazon/ea/model/widget/AdapterModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_0

    .line 163
    :cond_b
    instance-of v2, v0, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;

    if-eqz v2, :cond_c

    .line 164
    new-instance v2, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    .line 165
    iget-object v4, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v5, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    iget-object v6, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayKey:Ljava/lang/String;

    iget v7, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayLimit:I

    move-object v3, v0

    check-cast v3, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;

    iget-object v8, v3, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    .line 166
    iget-object v9, v3, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;->title:Ljava/lang/String;

    iget-object v10, v3, Lcom/amazon/readingactions/sidecar/def/widgets/ShovelerWidgetDef;->recommendations:Ljava/util/List;

    move-object v3, v2

    .line 164
    invoke-direct/range {v3 .. v10}, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 168
    new-instance v3, Lcom/amazon/ea/model/widget/AdapterModel;

    iget-object v4, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    .line 169
    new-instance v5, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion$tryCreateWidget$adapter$6;

    invoke-direct {v5, v2}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion$tryCreateWidget$adapter$6;-><init>(Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;)V

    .line 168
    invoke-direct {v3, v4, v0, v5}, Lcom/amazon/ea/model/widget/AdapterModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;)V

    .line 170
    invoke-virtual {v3}, Lcom/amazon/ea/model/widget/AdapterModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_1

    .line 173
    :cond_c
    instance-of v2, v0, Lcom/amazon/readingactions/sidecar/def/widgets/WebWidgetDef;

    if-eqz v2, :cond_d

    sget-object v1, Lcom/amazon/ea/model/widget/webview/WebViewModelBuilder;->INSTANCE:Lcom/amazon/ea/model/widget/webview/WebViewModelBuilder;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/WebWidgetDef;

    invoke-virtual {v1, v0}, Lcom/amazon/ea/model/widget/webview/WebViewModelBuilder;->build(Lcom/amazon/readingactions/sidecar/def/widgets/WebWidgetDef;)Lcom/amazon/ea/model/widget/webview/WebViewModel;

    move-result-object v1

    goto :goto_3

    .line 175
    :cond_d
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "unknown widget def, no model found."

    invoke-static {v0, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_3
    return-object v1
.end method


# virtual methods
.method public final getLayout(Lcom/amazon/ea/sidecar/def/Sidecar;)Lcom/amazon/ea/model/layout/LayoutModel;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Sidecar null, returning null layout"

    invoke-static {p1, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 51
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;->buildWidgets(Lcom/amazon/ea/sidecar/def/Sidecar;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    .line 53
    invoke-static {v2}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v3

    .line 55
    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/Sidecar;->layouts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "EndActions"

    const-string v6, "EndActionsPlugin.sdk"

    const-string/jumbo v7, "rsMetadata"

    const-string v8, "AllLayoutsRejected"

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;

    .line 56
    invoke-direct {p0, v4, v1}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;->tryCreateLayout(Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;Ljava/util/Map;)Lcom/amazon/ea/model/layout/LayoutModel;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 58
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 59
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/layout/EndActionsLayoutResolver$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found and using layout model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x0

    .line 61
    invoke-static {v8, p1}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 63
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v3, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v5, v3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return-object v4

    .line 70
    :cond_3
    invoke-static {v8, v2}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 72
    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v3, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v5, v3}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method
