.class public Lcom/amazon/ea/ui/ControllerBuilder;
.super Ljava/lang/Object;
.source "ControllerBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.ui.ControllerBuilder"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static createController(Landroid/app/Activity;Lcom/amazon/ea/model/layout/LayoutModel;)Lcom/amazon/ea/ui/layout/LayoutController;
    .locals 3

    const-string v0, "EndActionsCreateController"

    .line 48
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->push(Ljava/lang/String;)V

    .line 50
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;

    if-ne v0, v1, :cond_0

    .line 51
    check-cast p1, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;

    .line 52
    invoke-static {p1}, Lcom/amazon/ea/ui/ControllerBuilder;->filterLayoutWidgets(Lcom/amazon/ea/model/layout/LayoutModel;)V

    .line 53
    iget-object v0, p1, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;->widgets:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/amazon/ea/ui/ControllerBuilder;->createWidgets(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;

    invoke-direct {v1, p0, p1, v0}, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;-><init>(Landroid/app/Activity;Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v1

    .line 56
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;

    if-ne v0, v1, :cond_1

    .line 57
    check-cast p1, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;

    .line 58
    invoke-static {p1}, Lcom/amazon/ea/ui/ControllerBuilder;->filterLayoutWidgets(Lcom/amazon/ea/model/layout/LayoutModel;)V

    .line 59
    iget-object v0, p1, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->bodyWidgets:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/amazon/ea/ui/ControllerBuilder;->createWidgets(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 60
    iget-object v1, p1, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;->panelWidgets:Ljava/util/List;

    invoke-static {p0, v1}, Lcom/amazon/ea/ui/ControllerBuilder;->createWidgets(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;-><init>(Landroid/app/Activity;Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v2

    .line 63
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/amazon/ea/model/layout/verticallistwithshareaction/VerticalListWithShareActionLayoutModel;

    if-ne v0, v1, :cond_2

    .line 64
    check-cast p1, Lcom/amazon/ea/model/layout/verticallistwithshareaction/VerticalListWithShareActionLayoutModel;

    .line 65
    invoke-static {p1}, Lcom/amazon/ea/ui/ControllerBuilder;->filterLayoutWidgets(Lcom/amazon/ea/model/layout/LayoutModel;)V

    .line 66
    iget-object v0, p1, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;->widgets:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/amazon/ea/ui/ControllerBuilder;->createWidgets(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/amazon/ea/ui/layout/verticallistwithshareaction/VerticalListWithShareActionLayoutController;

    invoke-direct {v1, p0, p1, v0}, Lcom/amazon/ea/ui/layout/verticallistwithshareaction/VerticalListWithShareActionLayoutController;-><init>(Landroid/app/Activity;Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object v1

    :cond_2
    const/4 p0, 0x0

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/amazon/ea/metrics/M;->pop()V

    .line 75
    throw p0
.end method

.method private static createWidgets(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/amazon/ea/model/widget/WidgetModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/ea/ui/widget/WidgetController;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/ea/guava/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/model/widget/WidgetModel;

    const/4 v2, 0x0

    .line 88
    instance-of v3, v1, Lcom/amazon/ea/model/widget/AdapterModel;

    if-eqz v3, :cond_1

    .line 89
    check-cast v1, Lcom/amazon/ea/model/widget/AdapterModel;

    invoke-virtual {v1, p0}, Lcom/amazon/ea/model/widget/AdapterModel;->getController(Landroid/app/Activity;)Lcom/amazon/ea/ui/widget/WidgetController;

    move-result-object v2

    goto :goto_1

    .line 91
    :cond_1
    instance-of v3, v1, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    if-eqz v3, :cond_2

    .line 92
    new-instance v2, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;

    check-cast v1, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    invoke-direct {v2, p0, v1}, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;-><init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;)V

    goto :goto_1

    .line 94
    :cond_2
    instance-of v3, v1, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    if-eqz v3, :cond_3

    .line 95
    new-instance v2, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;

    check-cast v1, Lcom/amazon/ea/model/widget/buybook/BuyBookModel;

    invoke-direct {v2, v1, p0}, Lcom/amazon/ea/ui/widget/buybook/BuyBookController;-><init>(Lcom/amazon/ea/model/widget/buybook/BuyBookModel;Landroid/app/Activity;)V

    goto :goto_1

    .line 97
    :cond_3
    instance-of v3, v1, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    if-eqz v3, :cond_4

    .line 98
    new-instance v2, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;

    check-cast v1, Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;

    invoke-direct {v2, v1, p0}, Lcom/amazon/ea/ui/widget/featuredbook/FeaturedBookWidgetController;-><init>(Lcom/amazon/ea/model/widget/featuredbook/FeaturedBookModel;Landroid/app/Activity;)V

    goto :goto_1

    .line 100
    :cond_4
    instance-of v3, v1, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;

    if-eqz v3, :cond_5

    .line 101
    new-instance v2, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    check-cast v1, Lcom/amazon/ea/model/widget/ratingandreview/GrokRatingAndReviewModel;

    invoke-direct {v2, p0, v1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;-><init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)V

    goto :goto_1

    .line 103
    :cond_5
    instance-of v3, v1, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    if-eqz v3, :cond_6

    .line 104
    new-instance v2, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;

    check-cast v1, Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;

    invoke-direct {v2, p0, v1}, Lcom/amazon/ea/ui/widget/ratingandreview/RatingAndReviewController;-><init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/ratingandreview/RatingAndReviewModel;)V

    :cond_6
    :goto_1
    if-eqz v2, :cond_0

    .line 109
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method private static filterLayoutWidgets(Lcom/amazon/ea/model/layout/LayoutModel;)V
    .locals 0

    .line 79
    invoke-static {p0}, Lcom/amazon/readingactions/helpers/blurb/BlurbCardHelper;->checkAndFilterLayoutModelForBlurbCardExperiment(Lcom/amazon/ea/model/layout/LayoutModel;)V

    return-void
.end method
