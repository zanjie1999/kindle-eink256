.class public Lcom/amazon/readingactions/ui/widget/BookDetailWidget;
.super Lcom/amazon/readingactions/ui/widget/WidgetBase;
.source "BookDetailWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/readingactions/ui/widget/WidgetBase<",
        "Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field private static final SPACE:Ljava/lang/String; = " "

.field public static final TAG:Ljava/lang/String; = "com.amazon.readingactions.ui.widget.BookDetailWidget"

.field private static final TAG_REGEX:Ljava/lang/String; = "(?s).*%\\{\\w*\\}.*"

.field private static final TEXT_TAG_POSITION_IN_SERIES:Ljava/lang/String; = "%{position}"

.field private static final TEXT_TAG_SERIES_NAME:Ljava/lang/String; = "%{seriesName}"

.field private static final TEXT_TAG_TOTAL_IN_SERIES:Ljava/lang/String; = "%{total}"


# instance fields
.field private final recImage:Lcom/amazon/startactions/storage/ImageDownloader;

.field private final seeInStoreListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;)V
    .locals 2

    .line 81
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    .line 53
    new-instance v0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$1;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$1;-><init>(Lcom/amazon/readingactions/ui/widget/BookDetailWidget;)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget;->seeInStoreListener:Landroid/view/View$OnClickListener;

    .line 83
    iget-object p1, p1, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->endactions_rec_image_height:I

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 83
    invoke-static {p1, v0}, Lcom/amazon/startactions/storage/ImageDownloader;->forFeaturedRec(Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;I)Lcom/amazon/startactions/storage/ImageDownloader;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget;->recImage:Lcom/amazon/startactions/storage/ImageDownloader;

    return-void
.end method

.method private replacePlaceholders(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->seriesPositionData:Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;

    iget v0, v0, Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;->positionInSeries:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%{position}"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->seriesPositionData:Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;

    iget v0, v0, Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;->totalInSeries:I

    .line 187
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%{total}"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->seriesPositionData:Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/SeriesPositionData;->seriesName:Ljava/lang/String;

    const-string v1, "%{seriesName}"

    .line 188
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(?s).*%\\{\\w*\\}.*"

    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    sget-object v0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid series info, not showing it; Text contains an un-recognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method private setBseTitle(Landroid/widget/TextView;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->bseTitle:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amazon/readingactions/ui/widget/BookDetailWidget;->replacePlaceholders(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 181
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static tryCreate(Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;)Lcom/amazon/readingactions/ui/widget/BookDetailWidget;
    .locals 1

    .line 74
    new-instance v0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/BookDetailWidget;-><init>(Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;)V

    return-object v0
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16

    move-object/from16 v8, p0

    .line 89
    iget-object v0, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$layout;->readingactions_widget_book_with_description:I

    const/4 v2, 0x0

    move-object/from16 v9, p1

    invoke-virtual {v0, v1, v9, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    iget-object v1, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/kindle/ea/R$string;->startactions_serial_comma:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    sget v3, Lcom/amazon/kindle/ea/R$id;->startactions_header_text:I

    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 99
    iget-object v4, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v4, v4, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->bseTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    if-nez v4, :cond_0

    .line 100
    invoke-direct {v8, v3}, Lcom/amazon/readingactions/ui/widget/BookDetailWidget;->setBseTitle(Landroid/widget/TextView;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v4, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v4, v4, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->widgetTitle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 103
    iget-object v4, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v4, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v4, v4, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->widgetTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :goto_0
    sget v4, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v4}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    sget v2, Lcom/amazon/kindle/ea/R$id;->book_title:I

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 113
    sget v3, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v3, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v3, v3, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v2, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v2, v2, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/RecommendationData;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    sget v1, Lcom/amazon/kindle/ea/R$id;->book_image:I

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x2

    .line 119
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 120
    iget-object v2, v8, Lcom/amazon/readingactions/ui/widget/BookDetailWidget;->recImage:Lcom/amazon/startactions/storage/ImageDownloader;

    new-instance v3, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$2;

    invoke-direct {v3, v8, v1}, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$2;-><init>(Lcom/amazon/readingactions/ui/widget/BookDetailWidget;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Lcom/amazon/startactions/storage/ImageDownloader;->apply(Lcom/amazon/startactions/storage/ImageDownloader$Listener;)V

    .line 129
    sget v1, Lcom/amazon/kindle/ea/R$id;->series_previous_book_widget_container:I

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 130
    iget-object v2, v8, Lcom/amazon/readingactions/ui/widget/BookDetailWidget;->seeInStoreListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v2, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/kindle/ea/R$string;->startactions_widget_see_in_store_hint:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 135
    sget v0, Lcom/amazon/kindle/ea/R$id;->see_in_store:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/Button;

    .line 136
    invoke-virtual {v8, v11}, Lcom/amazon/readingactions/ui/widget/BookDetailWidget;->setStoreLabelText(Landroid/widget/Button;)V

    .line 137
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 138
    sget v0, Lcom/amazon/kindle/ea/R$array;->readingactions_default_button_background:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 139
    invoke-virtual {v11, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    .line 141
    invoke-static {v0, v11}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->setOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 142
    iget-object v0, v8, Lcom/amazon/readingactions/ui/widget/BookDetailWidget;->seeInStoreListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    sget v0, Lcom/amazon/kindle/ea/R$id;->book_description_text:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    .line 147
    iget-object v0, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 148
    iget-object v0, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v0, v0, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;->book:Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/FeaturedRecommendationData;->description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 149
    new-instance v14, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;

    iget-object v4, v8, Lcom/amazon/readingactions/ui/widget/BookDetailWidget;->seeInStoreListener:Landroid/view/View$OnClickListener;

    const/4 v6, 0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v12

    move-object v5, v11

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/BookDetailWidget;Ljava/lang/String;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View$OnClickListener;Landroid/widget/Button;ZLandroid/view/View;)V

    .line 151
    new-instance v15, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;

    const/4 v6, 0x0

    move-object v0, v15

    move-object v4, v14

    invoke-direct/range {v0 .. v7}, Lcom/amazon/readingactions/ui/widget/BookDetailWidget$SizeTextOnClickListener;-><init>(Lcom/amazon/readingactions/ui/widget/BookDetailWidget;Ljava/lang/String;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Landroid/view/View$OnClickListener;Landroid/widget/Button;ZLandroid/view/View;)V

    .line 155
    iget-object v0, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0, v14}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_less:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_less_content_description:I

    .line 158
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {v12, v0, v1, v15}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setAppendLinkText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {v12, v13}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;)V

    .line 161
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 164
    :cond_2
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-object v10
.end method

.method public initMetricsValues()V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ViewedInStoreBookDetails"

    .line 214
    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ExpandedBookDescription"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/readingactions/sidecar/def/widgets/BookDetailWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "DisplayedBookDetails"

    .line 217
    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 218
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    const-string v0, "DisplayedBookDetailWidget"

    .line 220
    invoke-static {v0, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    return-void
.end method

.method public loadData()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget;->recImage:Lcom/amazon/startactions/storage/ImageDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageDownloader;->load()V

    return-void
.end method

.method public prepareData()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookDetailWidget;->recImage:Lcom/amazon/startactions/storage/ImageDownloader;

    invoke-virtual {v0}, Lcom/amazon/startactions/storage/ImageDownloader;->download()V

    return-void
.end method

.method public setStoreLabelText(Landroid/widget/Button;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->getSABookStoreLabelText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
