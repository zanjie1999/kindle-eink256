.class public final Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Companion;
.super Ljava/lang/Object;
.source "EndActionsControllerBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEndActionsControllerBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EndActionsControllerBuilder.kt\ncom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Companion\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,96:1\n57#2:97\n82#2,3:98\n57#2:101\n82#2,3:102\n1282#3,9:105\n1497#3,2:114\n1291#3:116\n*E\n*S KotlinDebug\n*F\n+ 1 EndActionsControllerBuilder.kt\ncom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Companion\n*L\n46#1:97\n46#1,3:98\n47#1:101\n47#1,3:102\n62#1,9:105\n62#1,2:114\n62#1:116\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Companion;-><init>()V

    return-void
.end method

.method private final createGroups(Landroid/app/Activity;Ljava/util/List;Landroidx/fragment/app/Fragment;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/ea/model/widget/WidgetModel;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 113
    check-cast v1, Lcom/amazon/ea/model/widget/WidgetModel;

    .line 63
    iget-object v2, v1, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 65
    instance-of v2, v1, Lcom/amazon/ea/model/widget/AdapterModel;

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    .line 66
    new-instance v2, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;

    new-instance v3, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;

    move-object v4, v1

    check-cast v4, Lcom/amazon/ea/model/widget/AdapterModel;

    iget-object v5, v4, Lcom/amazon/ea/model/widget/AdapterModel;->title:Ljava/lang/String;

    invoke-direct {v3, v5, v7}, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v4, p1}, Lcom/amazon/ea/model/widget/AdapterModel;->getController(Landroid/app/Activity;)Lcom/amazon/ea/ui/widget/WidgetController;

    move-result-object v4

    const-string v5, "model.getController(activity)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;-><init>(Lcom/amazon/ea/sidecar/def/layouts/GroupDef;Lcom/amazon/ea/ui/widget/WidgetController;)V

    goto/16 :goto_1

    .line 67
    :cond_1
    instance-of v2, v1, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    if-eqz v2, :cond_2

    .line 68
    new-instance v2, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;

    new-instance v3, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;

    move-object v4, v1

    check-cast v4, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    iget-object v5, v4, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;->title:Ljava/lang/String;

    invoke-direct {v3, v5, v7}, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance v5, Lcom/amazon/readingactions/ui/widget/BuyBookController;

    invoke-direct {v5, p1, v4}, Lcom/amazon/readingactions/ui/widget/BuyBookController;-><init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/buybook/BuyBookModel;)V

    invoke-direct {v2, v3, v5}, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;-><init>(Lcom/amazon/ea/sidecar/def/layouts/GroupDef;Lcom/amazon/ea/ui/widget/WidgetController;)V

    goto :goto_1

    .line 69
    :cond_2
    instance-of v2, v1, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    if-eqz v2, :cond_3

    .line 70
    new-instance v2, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;

    new-instance v3, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;

    move-object v4, v1

    check-cast v4, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    iget-object v5, v4, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;->title:Ljava/lang/String;

    invoke-direct {v3, v5, v7}, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance v5, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;

    invoke-direct {v5, p1, v4}, Lcom/amazon/readingactions/ui/widget/FeaturedBookWidgetController;-><init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;)V

    invoke-direct {v2, v3, v5}, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;-><init>(Lcom/amazon/ea/sidecar/def/layouts/GroupDef;Lcom/amazon/ea/ui/widget/WidgetController;)V

    goto :goto_1

    .line 71
    :cond_3
    instance-of v2, v1, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;

    const-string v3, ""

    if-eqz v2, :cond_4

    .line 72
    new-instance v2, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;

    new-instance v4, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;

    invoke-direct {v4, v3, v7}, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance v3, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;

    move-object v5, v1

    check-cast v5, Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;

    invoke-direct {v3, p1, v5}, Lcom/amazon/readingactions/ui/widget/GoodReadsShelfController;-><init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/goodreads/GoodReadsShelfModel;)V

    invoke-direct {v2, v4, v3}, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;-><init>(Lcom/amazon/ea/sidecar/def/layouts/GroupDef;Lcom/amazon/ea/ui/widget/WidgetController;)V

    goto :goto_1

    .line 73
    :cond_4
    instance-of v2, v1, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    if-eqz v2, :cond_5

    sget-object v3, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder;->Companion:Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Companion;

    move-object v5, v1

    check-cast v5, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v3 .. v10}, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Companion;->getRatingAndReviewingGroup$default(Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Companion;Landroid/app/Activity;Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;Landroidx/fragment/app/Fragment;Ljava/util/List;ZILjava/lang/Object;)Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;

    move-result-object v2

    goto :goto_1

    .line 74
    :cond_5
    instance-of v2, v1, Lcom/amazon/ea/model/widget/webview/WebViewModel;

    if-eqz v2, :cond_6

    .line 75
    new-instance v2, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;

    new-instance v4, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;

    invoke-direct {v4, v3, v7}, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance v3, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;

    move-object v5, v1

    check-cast v5, Lcom/amazon/ea/model/widget/webview/WebViewModel;

    invoke-direct {v3, p1, v5}, Lcom/amazon/readingactions/ui/widget/webview/WebViewController;-><init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/webview/WebViewModel;)V

    invoke-direct {v2, v4, v3}, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;-><init>(Lcom/amazon/ea/sidecar/def/layouts/GroupDef;Lcom/amazon/ea/ui/widget/WidgetController;)V

    goto :goto_1

    :cond_6
    move-object v2, v11

    :goto_1
    if-eqz v2, :cond_7

    .line 78
    iget-object v1, v1, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    :cond_7
    if-eqz v11, :cond_0

    .line 113
    invoke-interface {v0, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 79
    :cond_8
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final filterLayoutWidgets(Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;)V
    .locals 1

    .line 58
    sget-object v0, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper;->Companion:Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion;

    invoke-virtual {v0, p1}, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper$Companion;->checkAndFilterLayoutModelForBlurbCardExperiment(Lcom/amazon/ea/model/layout/LayoutModel;)V

    return-void
.end method

.method private final getRatingAndReviewingGroup(Landroid/app/Activity;Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;Landroidx/fragment/app/Fragment;Ljava/util/List;Z)Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;Z)",
            "Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, ""

    if-eqz p5, :cond_0

    .line 85
    new-instance p5, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;

    new-instance v2, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;

    invoke-direct {v2, v1, p4, v0}, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p4, Lcom/amazon/readingactions/ui/widget/ComicsRatingAndReviewingController;

    invoke-direct {p4, p1, p2, p3}, Lcom/amazon/readingactions/ui/widget/ComicsRatingAndReviewingController;-><init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;Landroidx/fragment/app/Fragment;)V

    invoke-direct {p5, v2, p4}, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;-><init>(Lcom/amazon/ea/sidecar/def/layouts/GroupDef;Lcom/amazon/ea/ui/widget/WidgetController;)V

    return-object p5

    .line 87
    :cond_0
    new-instance p5, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;

    new-instance v2, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;

    invoke-direct {v2, v1, p4, v0}, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p4, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-direct {p4, p1, p2, p3}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;-><init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;Landroidx/fragment/app/Fragment;)V

    invoke-direct {p5, v2, p4}, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;-><init>(Lcom/amazon/ea/sidecar/def/layouts/GroupDef;Lcom/amazon/ea/ui/widget/WidgetController;)V

    return-object p5
.end method

.method static bridge synthetic getRatingAndReviewingGroup$default(Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Companion;Landroid/app/Activity;Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;Landroidx/fragment/app/Fragment;Ljava/util/List;ZILjava/lang/Object;)Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 83
    sget-object p5, Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;->INSTANCE:Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;

    invoke-virtual {p5}, Lcom/amazon/readingactions/helpers/ComixologyOperationsHelper;->isComics()Z

    move-result p5

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Companion;->getRatingAndReviewingGroup(Landroid/app/Activity;Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewingModel;Landroidx/fragment/app/Fragment;Ljava/util/List;Z)Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createController(Landroid/app/Activity;Lcom/amazon/ea/model/layout/LayoutModel;Landroidx/fragment/app/Fragment;)Lcom/amazon/ea/ui/layout/LayoutController;
    .locals 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "EndActionsCreateController"

    .line 40
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 42
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    check-cast p2, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;

    .line 44
    invoke-direct {p0, p2}, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Companion;->filterLayoutWidgets(Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;)V

    .line 45
    iget-object p2, p2, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;->widgets:Ljava/util/List;

    const-string v0, "layoutModel.widgets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Companion;->createGroups(Landroid/app/Activity;Ljava/util/List;Landroidx/fragment/app/Fragment;)Ljava/util/Map;

    move-result-object p2

    .line 46
    new-instance p3, Lcom/amazon/readingactions/sidecar/def/layout/GroupLayoutDef;

    const-string v0, ""

    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;

    invoke-virtual {v4}, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;->getDef()Lcom/amazon/ea/sidecar/def/layouts/GroupDef;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    invoke-direct {p3, v0, v1, v2, v3}, Lcom/amazon/readingactions/sidecar/def/layout/GroupLayoutDef;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Z)V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;

    invoke-virtual {v1}, Lcom/amazon/readingactions/ui/layout/EndActionsControllerBuilder$Group;->getController()Lcom/amazon/ea/ui/widget/WidgetController;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p2

    .line 48
    sget-object v0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->Companion:Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Companion;

    invoke-virtual {v0, p1, p3, p2}, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Companion;->tryCreate(Landroid/app/Activity;Lcom/amazon/readingactions/sidecar/def/layout/GroupLayoutDef;Ljava/util/Map;)Lcom/amazon/ea/ui/layout/LayoutController;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 53
    :goto_2
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    throw p1
.end method
