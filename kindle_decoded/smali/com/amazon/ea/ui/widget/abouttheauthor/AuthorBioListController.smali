.class public Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;
.super Lcom/amazon/ea/ui/widget/WidgetController;
.source "AuthorBioListController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioOnClickListener;,
        Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.ui.widget.abouttheauthor.AuthorBioListController"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final model:Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/WidgetController;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->model:Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    .line 55
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->activity:Landroid/app/Activity;

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->setAuthorImage(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;)Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->model:Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    return-object p0
.end method

.method private setAuthorImage(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 142
    sget v0, Lcom/amazon/kindle/ea/R$id;->author_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x2

    .line 143
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 144
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p3, :cond_0

    .line 147
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/ea/R$drawable;->endactions_author_default:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    :goto_0
    sget p2, Lcom/amazon/kindle/ea/R$id;->progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/ViewGroup;Lcom/amazon/ea/model/widget/WidgetDisplayFormat;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 63
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->activity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 64
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->model:Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    iget-object v0, v0, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->authorBioList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_5

    .line 67
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->model:Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    iget-object v0, v0, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->authorBioList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;

    .line 69
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/amazon/kindle/ea/R$layout;->endactions_author_bio:I

    invoke-virtual {v1, v2, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 70
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    new-instance v2, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioOnClickListener;

    iget-object v3, v0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-direct {v2, p0, v3, p4, p1}, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioOnClickListener;-><init>(Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;Ljava/lang/String;ILandroid/view/View;)V

    .line 73
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    iget-object v4, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->model:Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    iget-object v4, v4, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->title:Ljava/lang/String;

    const-string v5, ", "

    if-eqz v4, :cond_0

    if-ge p4, p2, :cond_0

    .line 78
    sget v4, Lcom/amazon/kindle/ea/R$id;->endactions_header_text:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 79
    iget-object v6, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->model:Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    iget-object v6, v6, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v6, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->model:Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    iget-object v6, v6, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->title:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    if-lez p4, :cond_1

    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    .line 86
    invoke-virtual {v1, v4, p3, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 90
    :cond_1
    iget-object v4, v0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->imageURL:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->model:Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    iget v6, v6, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->imageHeight:I

    invoke-static {v4, v6}, Lcom/amazon/ea/util/StyleCodeUtil;->addHeightParam(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 92
    new-instance v6, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;

    invoke-direct {v6, p0, v1, v2}, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController$AuthorBioImageDownloadListener;-><init>(Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-static {v4, v6}, Lcom/amazon/startactions/storage/ImageDownloadManager;->get(Ljava/lang/String;Lcom/amazon/ea/images/ImageDownloadListener;)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 94
    invoke-direct {p0, v1, v2, v4}, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->setAuthorImage(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/graphics/Bitmap;)V

    .line 98
    :goto_1
    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/ea/util/AuthorNameFormatterUtil;->formatAuthorString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    sget v4, Lcom/amazon/kindle/ea/R$id;->author:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    sget v2, Lcom/amazon/kindle/ea/R$id;->bio:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;

    .line 104
    iget-object v4, v0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->asin:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->bio:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 106
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 107
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 110
    :cond_3
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    sget-object v0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->TAG:Ljava/lang/String;

    const-string v4, "No author bio available"

    invoke-static {v0, v4}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/amazon/kindle/ea/R$string;->endactions_default_author_bio:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 p2, 0x2

    .line 120
    invoke-static {p2}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object p2

    .line 121
    iget-object p3, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->model:Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    iget-object p3, p3, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string p4, "MetricsTag"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object p3, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->model:Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    iget-object p3, p3, Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;->authorBioList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "AuthorCount"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object p3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p3

    const-string p4, "AnyActionsAuthorBioWidget"

    invoke-interface {p3, p4, p2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordMetadata(Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/abouttheauthor/AuthorBioListController;->model:Lcom/amazon/ea/model/widget/abouttheauthor/AuthorBioListModel;

    iget-object p3, p2, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    iget-object p2, p2, Lcom/amazon/ea/model/widget/WidgetModel;->metricsTag:Ljava/lang/String;

    const-string p4, "DisplayedAuthorBioWidget"

    invoke-static {p4, p3, p2}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetEA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
