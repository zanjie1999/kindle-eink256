.class public Lcom/amazon/ea/model/LayoutDecider;
.super Ljava/lang/Object;
.source "LayoutDecider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.model.LayoutDecider"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static createDefaultLayout(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/model/layout/LayoutModel;
    .locals 38

    .line 67
    invoke-interface/range {p0 .. p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    const-string/jumbo v2, "vl"

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    .line 68
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/amazon/ea/model/LayoutDecider;->TAG:Ljava/lang/String;

    const-string v1, "Creating default EBOK layout"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    new-instance v0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;

    move-object v5, v0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v6, "grokRatingAndReviewWidget"

    const-string v7, "grr"

    invoke-direct/range {v5 .. v21}, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/ea/sidecar/def/data/CustomerProfileData;Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;JLcom/amazon/ea/sidecar/def/data/GoodreadsReviewData;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v1, Lcom/amazon/ea/sidecar/def/widgets/RatingAndReviewWidgetDef;

    const/16 v25, 0x0

    const/16 v26, -0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-string/jumbo v23, "ratingAndReviewWidget"

    const-string/jumbo v24, "rr"

    move-object/from16 v22, v1

    invoke-direct/range {v22 .. v37}, Lcom/amazon/ea/sidecar/def/widgets/RatingAndReviewWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/ea/sidecar/def/data/CustomerProfileData;Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v15, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    const-string/jumbo v6, "ratingWidget"

    const-string/jumbo v7, "ro"

    move-object v5, v15

    move-object v3, v15

    move-wide/from16 v15, v16

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    invoke-direct/range {v5 .. v20}, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/amazon/ea/sidecar/def/data/CustomerProfileData;Lcom/amazon/ea/sidecar/def/data/PersonalizationRatingData;Lcom/amazon/ea/sidecar/def/data/PublicSharedRatingData;Lcom/amazon/ea/sidecar/def/data/CommunityReviewData;Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/amazon/ea/guava/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 87
    iget-object v6, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModelBuilder;->build(Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;)Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v6, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    .line 89
    invoke-static {v1}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModelBuilder;->build(Lcom/amazon/ea/sidecar/def/widgets/RatingAndReviewWidgetDef;)Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    move-result-object v7

    .line 88
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v6, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/ea/model/widget/ratingandreview/RatingModelBuilder;->build(Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;)Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v6

    .line 93
    invoke-static {v4}, Lcom/amazon/ea/guava/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    .line 95
    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    iget-object v0, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    aput-object v0, v8, v4

    const/4 v0, 0x2

    iget-object v1, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    aput-object v1, v8, v0

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;

    invoke-direct {v0, v2, v6, v7}, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V

    .line 98
    invoke-static {v0, v5}, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModelBuilder;->build(Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;Ljava/util/Map;)Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;

    move-result-object v0

    return-object v0

    .line 100
    :cond_1
    invoke-interface/range {p0 .. p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v0, v1, :cond_4

    .line 101
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    sget-object v0, Lcom/amazon/ea/model/LayoutDecider;->TAG:Ljava/lang/String;

    const-string v1, "Creating default EBSP layout"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_2
    new-instance v0, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-string v6, "buyThisBookWidget"

    const-string v7, "bn"

    const-string v8, "bn"

    move-object v5, v0

    invoke-direct/range {v5 .. v18}, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLcom/amazon/ea/sidecar/def/data/RecommendationData;Z)V

    .line 106
    invoke-static {}, Lcom/amazon/ea/guava/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 107
    invoke-static {v4}, Lcom/amazon/ea/guava/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 109
    invoke-static {v0}, Lcom/amazon/ea/model/widget/buybook/BuyBookModelBuilder;->build(Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;)Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 111
    iget-object v6, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/String;

    .line 112
    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 116
    new-instance v4, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;

    invoke-direct {v4, v2, v0, v3}, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V

    .line 118
    invoke-static {v4, v1}, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModelBuilder;->build(Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;Ljava/util/Map;)Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;

    move-result-object v0

    return-object v0

    .line 120
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content must be a full book or sample."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getLayoutModel(Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;Ljava/util/Map;)Lcom/amazon/ea/model/layout/LayoutModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/ea/model/widget/WidgetModel;",
            ">;)",
            "Lcom/amazon/ea/model/layout/LayoutModel;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 283
    sget-object p0, Lcom/amazon/ea/model/LayoutDecider;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "null def given, returning null layout model"

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    .line 289
    invoke-static {}, Lcom/amazon/ea/guava/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object p1

    .line 292
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;

    if-ne v1, v2, :cond_2

    .line 293
    check-cast p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;

    invoke-static {p0, p1}, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModelBuilder;->build(Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;Ljava/util/Map;)Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;

    move-result-object p0

    return-object p0

    .line 295
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;

    if-ne v1, v2, :cond_3

    .line 296
    check-cast p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;

    invoke-static {p0, p1}, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModelBuilder;->build(Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;Ljava/util/Map;)Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;

    move-result-object p0

    return-object p0

    .line 298
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithShareActionLayoutDef;

    if-ne v1, v2, :cond_4

    .line 299
    check-cast p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithShareActionLayoutDef;

    invoke-static {p0, p1}, Lcom/amazon/ea/model/layout/verticallistwithshareaction/VerticalListWithShareActionLayoutModelBuilder;->build(Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithShareActionLayoutDef;Ljava/util/Map;)Lcom/amazon/ea/model/layout/verticallistwithshareaction/VerticalListWithShareActionLayoutModel;

    move-result-object p0

    return-object p0

    .line 303
    :cond_4
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 304
    sget-object p0, Lcom/amazon/ea/model/LayoutDecider;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unknown layout def, no model builder found."

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method private static getWidgetModel(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)Lcom/amazon/ea/model/widget/WidgetModel;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 192
    sget-object p0, Lcom/amazon/ea/model/LayoutDecider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "null def given, returning null widget model"

    invoke-static {p0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 196
    :cond_0
    instance-of v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    if-eqz v1, :cond_1

    .line 197
    check-cast p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    invoke-static {p0}, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModelBuilder;->build(Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;)Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    move-result-object p0

    return-object p0

    .line 199
    :cond_1
    instance-of v1, p0, Lcom/amazon/ea/sidecar/def/widgets/AuthorSubscriptionsWidgetDef;

    if-eqz v1, :cond_3

    .line 200
    new-instance v1, Lcom/amazon/ea/model/widget/AdapterModel;

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    new-instance v4, Lcom/amazon/ea/model/LayoutDecider$1;

    invoke-direct {v4, p0}, Lcom/amazon/ea/model/LayoutDecider$1;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/ea/model/widget/AdapterModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;)V

    .line 207
    invoke-virtual {v1}, Lcom/amazon/ea/model/widget/AdapterModel;->isValid()Z

    move-result p0

    if-eqz p0, :cond_2

    move-object v0, v1

    :cond_2
    return-object v0

    .line 209
    :cond_3
    instance-of v1, p0, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    if-eqz v1, :cond_5

    .line 210
    new-instance v1, Lcom/amazon/ea/model/widget/AdapterModel;

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    new-instance v4, Lcom/amazon/ea/model/LayoutDecider$2;

    invoke-direct {v4, p0}, Lcom/amazon/ea/model/LayoutDecider$2;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/ea/model/widget/AdapterModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;)V

    .line 217
    invoke-virtual {v1}, Lcom/amazon/ea/model/widget/AdapterModel;->isValid()Z

    move-result p0

    if-eqz p0, :cond_4

    move-object v0, v1

    :cond_4
    return-object v0

    .line 219
    :cond_5
    instance-of v1, p0, Lcom/amazon/ea/sidecar/def/widgets/BookGridWidgetDef;

    if-eqz v1, :cond_7

    .line 220
    new-instance v1, Lcom/amazon/ea/model/widget/AdapterModel;

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    new-instance v4, Lcom/amazon/ea/model/LayoutDecider$3;

    invoke-direct {v4, p0}, Lcom/amazon/ea/model/LayoutDecider$3;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/ea/model/widget/AdapterModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;)V

    .line 227
    invoke-virtual {v1}, Lcom/amazon/ea/model/widget/AdapterModel;->isValid()Z

    move-result p0

    if-eqz p0, :cond_6

    move-object v0, v1

    :cond_6
    return-object v0

    .line 229
    :cond_7
    instance-of v1, p0, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;

    if-eqz v1, :cond_8

    .line 230
    check-cast p0, Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;

    invoke-static {p0}, Lcom/amazon/ea/model/widget/buybook/BuyBookModelBuilder;->build(Lcom/amazon/ea/sidecar/def/widgets/BuyBookWidgetDef;)Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    move-result-object p0

    return-object p0

    .line 232
    :cond_8
    instance-of v1, p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;

    if-eqz v1, :cond_9

    .line 233
    check-cast p0, Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;

    invoke-static {p0}, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModelBuilder;->build(Lcom/amazon/ea/sidecar/def/widgets/FeaturedBookWidgetDef;)Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    move-result-object p0

    return-object p0

    .line 235
    :cond_9
    instance-of v1, p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;

    if-eqz v1, :cond_a

    .line 236
    check-cast p0, Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;

    invoke-static {p0}, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModelBuilder;->build(Lcom/amazon/ea/sidecar/def/widgets/GrokRatingAndReviewWidgetDef;)Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;

    move-result-object p0

    return-object p0

    .line 238
    :cond_a
    instance-of v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingAndReviewWidgetDef;

    if-eqz v1, :cond_b

    .line 239
    check-cast p0, Lcom/amazon/ea/sidecar/def/widgets/RatingAndReviewWidgetDef;

    invoke-static {p0}, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModelBuilder;->build(Lcom/amazon/ea/sidecar/def/widgets/RatingAndReviewWidgetDef;)Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    move-result-object p0

    return-object p0

    .line 241
    :cond_b
    instance-of v1, p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;

    if-eqz v1, :cond_c

    .line 242
    check-cast p0, Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;

    invoke-static {p0}, Lcom/amazon/ea/model/widget/ratingandreview/RatingModelBuilder;->build(Lcom/amazon/ea/sidecar/def/widgets/RatingWidgetDef;)Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    move-result-object p0

    return-object p0

    .line 244
    :cond_c
    instance-of v1, p0, Lcom/amazon/ea/sidecar/def/widgets/ShareBookWidgetDef;

    if-eqz v1, :cond_e

    .line 245
    new-instance v1, Lcom/amazon/ea/model/widget/AdapterModel;

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    new-instance v4, Lcom/amazon/ea/model/LayoutDecider$4;

    invoke-direct {v4, p0}, Lcom/amazon/ea/model/LayoutDecider$4;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/ea/model/widget/AdapterModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;)V

    .line 252
    invoke-virtual {v1}, Lcom/amazon/ea/model/widget/AdapterModel;->isValid()Z

    move-result p0

    if-eqz p0, :cond_d

    move-object v0, v1

    :cond_d
    return-object v0

    .line 254
    :cond_e
    instance-of v1, p0, Lcom/amazon/ea/sidecar/def/widgets/ShovelerWidgetDef;

    if-eqz v1, :cond_10

    .line 255
    new-instance v1, Lcom/amazon/ea/model/widget/AdapterModel;

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    new-instance v4, Lcom/amazon/ea/model/LayoutDecider$5;

    invoke-direct {v4, p0}, Lcom/amazon/ea/model/LayoutDecider$5;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/ea/model/widget/AdapterModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/model/widget/AdapterModel$WidgetFactory;)V

    .line 262
    invoke-virtual {v1}, Lcom/amazon/ea/model/widget/AdapterModel;->isValid()Z

    move-result p0

    if-eqz p0, :cond_f

    move-object v0, v1

    :cond_f
    return-object v0

    .line 266
    :cond_10
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_11

    .line 267
    sget-object p0, Lcom/amazon/ea/model/LayoutDecider;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unknown widget def, no model found."

    invoke-static {p0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-object v0
.end method

.method public static resolveLayout(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/sidecar/def/Sidecar;)Lcom/amazon/ea/model/layout/LayoutModel;
    .locals 7

    const-string v0, "ResolveLayout"

    .line 131
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 134
    :try_start_0
    sget-object p1, Lcom/amazon/ea/model/LayoutDecider;->TAG:Ljava/lang/String;

    const-string v0, "Sidecar null, creating default layout"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {p0}, Lcom/amazon/ea/model/LayoutDecider;->createDefaultLayout(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/model/layout/LayoutModel;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    .line 138
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/ea/guava/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 139
    iget-object v1, p1, Lcom/amazon/ea/sidecar/def/Sidecar;->widgetIDToWidget:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    .line 140
    invoke-static {v2}, Lcom/amazon/ea/model/LayoutDecider;->getWidgetModel(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)Lcom/amazon/ea/model/widget/WidgetModel;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    sget-object v4, Lcom/amazon/ea/model/LayoutDecider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding widget model for widget ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_2
    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 151
    invoke-static {v1}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v2

    .line 153
    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/Sidecar;->layouts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "EndActions"

    const-string v5, "AllLayoutsRejected"

    if-eqz v3, :cond_6

    :try_start_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;

    .line 154
    invoke-static {v3, v0}, Lcom/amazon/ea/model/LayoutDecider;->getLayoutModel(Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;Ljava/util/Map;)Lcom/amazon/ea/model/layout/LayoutModel;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 159
    :cond_4
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 160
    sget-object p0, Lcom/amazon/ea/model/LayoutDecider;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Found and using layout model: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 p0, 0x0

    .line 162
    invoke-static {v5, p0}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 164
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v2, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object p0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p0

    invoke-interface {p0, v4, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v3

    .line 171
    :cond_6
    :try_start_3
    invoke-static {v5, v1}, Lcom/amazon/ea/metrics/M;->setCount(Ljava/lang/String;I)V

    .line 173
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    invoke-interface {p1, v4, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 177
    invoke-static {p0}, Lcom/amazon/ea/model/LayoutDecider;->createDefaultLayout(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/model/layout/LayoutModel;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 180
    throw p0
.end method
