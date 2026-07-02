.class public Lcom/amazon/startactions/ui/widget/BookDetailWidget;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "BookDetailWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.widget.BookDetailWidget"


# instance fields
.field private final recImage:Lcom/amazon/startactions/storage/ImageDownloader;

.field public final seeInStoreListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;)V
    .locals 2

    .line 73
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 44
    new-instance v0, Lcom/amazon/startactions/ui/widget/BookDetailWidget$1;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/ui/widget/BookDetailWidget$1;-><init>(Lcom/amazon/startactions/ui/widget/BookDetailWidget;)V

    iput-object v0, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget;->seeInStoreListener:Landroid/view/View$OnClickListener;

    .line 75
    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->endactions_rec_image_height:I

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 75
    invoke-static {p1, v0}, Lcom/amazon/startactions/storage/ImageDownloader;->forFeaturedRec(Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;I)Lcom/amazon/startactions/storage/ImageDownloader;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget;->recImage:Lcom/amazon/startactions/storage/ImageDownloader;

    return-void
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;)Lcom/amazon/startactions/ui/widget/BookDetailWidget;
    .locals 1

    .line 66
    new-instance v0, Lcom/amazon/startactions/ui/widget/BookDetailWidget;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/ui/widget/BookDetailWidget;-><init>(Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;)V

    return-object v0
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13

    .line 81
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_book_with_description:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/kindle/ea/R$string;->startactions_serial_comma:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;->widgetTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    sget v3, Lcom/amazon/kindle/ea/R$id;->startactions_header_text:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 92
    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;->widgetTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    sget v4, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v4}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;->widgetTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_0
    sget v1, Lcom/amazon/kindle/ea/R$id;->book_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    sget v3, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    sget v1, Lcom/amazon/kindle/ea/R$id;->book_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x2

    .line 106
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 107
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget;->recImage:Lcom/amazon/startactions/storage/ImageDownloader;

    new-instance v3, Lcom/amazon/startactions/ui/widget/BookDetailWidget$2;

    invoke-direct {v3, p0, v1}, Lcom/amazon/startactions/ui/widget/BookDetailWidget$2;-><init>(Lcom/amazon/startactions/ui/widget/BookDetailWidget;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Lcom/amazon/startactions/storage/ImageDownloader;->apply(Lcom/amazon/startactions/storage/ImageDownloader$Listener;)V

    .line 116
    sget v1, Lcom/amazon/kindle/ea/R$id;->book_info:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget;->seeInStoreListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/kindle/ea/R$string;->startactions_widget_see_in_store_hint:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    sget v0, Lcom/amazon/kindle/ea/R$id;->book_description_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    .line 123
    sget v1, Lcom/amazon/kindle/ea/R$id;->read_less:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Button;

    .line 124
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_button_text_color:I

    .line 125
    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 124
    invoke-virtual {v9, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 127
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 129
    new-instance v11, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;

    iget-object v5, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget;->seeInStoreListener:Landroid/view/View$OnClickListener;

    const/4 v7, 0x1

    move-object v1, v11

    move-object v2, p0

    move-object v3, v10

    move-object v4, v0

    move-object v6, v9

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/BookDetailWidget;Ljava/lang/String;Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Landroid/view/View$OnClickListener;Landroid/widget/Button;ZLandroid/view/View;)V

    .line 131
    new-instance v12, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;

    const/4 v7, 0x0

    move-object v1, v12

    move-object v5, v11

    invoke-direct/range {v1 .. v8}, Lcom/amazon/startactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/BookDetailWidget;Ljava/lang/String;Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Landroid/view/View$OnClickListener;Landroid/widget/Button;ZLandroid/view/View;)V

    .line 135
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v11}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/amazon/startactions/ui/widget/BookDetailWidget;->setDescriptionViewText(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;)V

    .line 139
    invoke-virtual {v0, v10}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;)V

    .line 140
    sget p1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    invoke-virtual {v9, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 144
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-object p2
.end method

.method public initMetricsValues()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ViewedInStoreBookDetails"

    .line 170
    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ExpandedBookDescription"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "DisplayedBookDetails"

    .line 173
    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 174
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string v0, "DisplayedBookDetailWidget"

    .line 176
    invoke-static {v0, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    return-void
.end method

.method public loadData()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget;->recImage:Lcom/amazon/startactions/storage/ImageDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageDownloader;->load()V

    return-void
.end method

.method public prepareData()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget;->recImage:Lcom/amazon/startactions/storage/ImageDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageDownloader;->download()V

    return-void
.end method

.method public setDescriptionViewText(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->getSABookStoreLabelText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_see_in_store_content_description:I

    .line 153
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/BookDetailWidget;->seeInStoreListener:Landroid/view/View$OnClickListener;

    .line 152
    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setAppendLinkText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method
