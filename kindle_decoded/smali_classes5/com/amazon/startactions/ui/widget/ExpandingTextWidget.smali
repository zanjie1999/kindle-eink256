.class public Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "ExpandingTextWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$CollapsingOnClickListener;,
        Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$ExpandingOnClickListener;,
        Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$BaseOnClickListener;,
        Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$SeeInStoreOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUTHOR_ACTION:Ljava/lang/String; = "Author"

.field private static final DETAIL_ACTION:Ljava/lang/String; = "Detail"

.field private static final SEARCH_ACTION:Ljava/lang/String; = "Search"

.field private static final SUPPORTED_LINK_ACTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.widget.ExpandingTextWidget"


# instance fields
.field private resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Author"

    const-string v1, "Detail"

    const-string v2, "Search"

    .line 45
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/guava/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;->SUPPORTED_LINK_ACTIONS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;Ljava/lang/String;)Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;->getStorePageType(Ljava/lang/String;)Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;)Landroid/content/res/Resources;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;->resources:Landroid/content/res/Resources;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;Landroid/view/View;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;->resetAccessibility(Landroid/view/View;)V

    return-void
.end method

.method private getStorePageType(Ljava/lang/String;)Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;
    .locals 1

    const-string v0, "Author"

    .line 126
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object p1, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->AUTHOR_DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    return-object p1

    :cond_0
    const-string v0, "Detail"

    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    sget-object p1, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->DETAIL_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    return-object p1

    :cond_1
    const-string v0, "Search"

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 131
    sget-object p1, Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;->SEARCH_PAGE:Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private resetAccessibility(Landroid/view/View;)V
    .locals 2

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 v0, 0x0

    const/16 v1, 0x80

    .line 283
    invoke-static {p1, v1, v0}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    const/16 v1, 0x40

    .line 284
    invoke-static {p1, v1, v0}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    return-void
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;)Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;
    .locals 1

    .line 59
    new-instance v0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;-><init>(Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;)V

    return-object v0
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 71
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_expanding_text:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    sget v0, Lcom/amazon/kindle/ea/R$id;->expanding_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    .line 76
    sget v1, Lcom/amazon/kindle/ea/R$id;->see_less:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 77
    sget v2, Lcom/amazon/kindle/ea/R$array;->startactions_text_button_text_color:I

    .line 78
    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 79
    new-instance v2, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$CollapsingOnClickListener;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$CollapsingOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/amazon/kindle/ea/R$string;->startactions_widget_read_more:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$ExpandingOnClickListener;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$ExpandingOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Landroid/widget/Button;Landroid/view/View;)V

    invoke-virtual {v0, v2, v3}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;->action:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;->getStorePageType(Ljava/lang/String;)Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;

    move-result-object p1

    .line 85
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;->query:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;->SUPPORTED_LINK_ACTIONS:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;->action:Ljava/lang/String;

    .line 86
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$SeeInStoreOnClickListener;

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v3, v2

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;->action:Ljava/lang/String;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;->query:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v4}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object v4

    .line 88
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v6, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;

    iget-object v6, v6, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object v4

    invoke-direct {v1, p0, v3, v2, v4}, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$SeeInStoreOnClickListener;-><init>(Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ea/reftag/RefTag;)V

    .line 87
    invoke-virtual {p0, v0, v1}, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;->setExpandingViewText(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$SeeInStoreOnClickListener;)V

    .line 90
    :cond_0
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/ExpandingTextWidgetDef;->dynamicTextData:Lcom/amazon/ea/sidecar/def/data/DynamicTextData;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/data/DynamicTextData;->text:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/ea/util/StoreManager;->supports(Lcom/amazon/kindle/krx/store/IStoreManager$StorePageType;)Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;Z)V

    return-object p2
.end method

.method public initMetricsValues()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "ExpandingTextWidgetSeeMoreClicked"

    .line 107
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v1, "ExpandingTextWidgetSeeAllClicked"

    .line 110
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v1, "ExpandingTextWidgetSeeLessClicked"

    .line 113
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getMetricsTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    const-string v0, "DisplayedExpandingTextWidget"

    .line 116
    invoke-static {v0, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    return-void
.end method

.method public setExpandingViewText(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Lcom/amazon/startactions/ui/widget/ExpandingTextWidget$SeeInStoreOnClickListener;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;->resources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->getSABookStoreLabelText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/ExpandingTextWidget;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/amazon/kindle/ea/R$string;->startactions_widget_see_in_store_hint:I

    .line 99
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setAppendLinkText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method
