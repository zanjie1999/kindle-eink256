.class public Lcom/amazon/startactions/ui/widget/AuthorTextListWidget;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "AuthorTextListWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/ea/sidecar/def/widgets/AuthorTextListWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.widget.AuthorTextListWidget"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/AuthorTextListWidgetDef;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    return-void
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/AuthorTextListWidgetDef;)Lcom/amazon/startactions/ui/widget/AuthorTextListWidget;
    .locals 1

    .line 38
    new-instance v0, Lcom/amazon/startactions/ui/widget/AuthorTextListWidget;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/ui/widget/AuthorTextListWidget;-><init>(Lcom/amazon/ea/sidecar/def/widgets/AuthorTextListWidgetDef;)V

    return-object v0
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 50
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 52
    new-instance p2, Landroid/widget/LinearLayout;

    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 53
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    sget v0, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_author_list:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;

    .line 58
    invoke-virtual {v0}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->getLabelView()Landroid/widget/TextView;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    .line 59
    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v3

    .line 58
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorTextListWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/AuthorTextListWidgetDef;->authorBioList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->setAuthors(Ljava/util/List;)V

    .line 61
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    sget v0, Lcom/amazon/kindle/ea/R$layout;->startactions_component_divider:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_divider_line:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 66
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/amazon/kindle/ea/R$dimen;->startactions_widget_padding_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 68
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move v3, v5

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 69
    invoke-static {p1, v0}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 70
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public initMetricsValues()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorTextListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "DisplayedAuthorTextList"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 79
    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 80
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/AuthorTextListWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ViewedAuthorBio"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "DisplayedAuthorTextListWidget"

    .line 82
    invoke-static {v0, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    return-void
.end method
