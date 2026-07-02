.class final Lcom/audible/hushpuppy/view/selection/PlaySelectionButton;
.super Ljava/lang/Object;
.source "PlaySelectionButton.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IButton;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/ui/IButton<",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final iconDark:Landroid/graphics/drawable/Drawable;

.field private final iconLight:Landroid/graphics/drawable/Drawable;

.field private final locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/LocationSeekerController;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionButton;->context:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionButton;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 67
    iput-object p3, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionButton;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->ic_books_play_amazon_dark:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionButton;->iconDark:Landroid/graphics/drawable/Drawable;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->ic_books_play_amazon_light:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionButton;->iconLight:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 109
    sget-object p2, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionButton;->iconDark:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionButton;->iconLight:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p1
.end method

.method public getIconKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionButton;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->play_selection_button_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getVisibility(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionButton;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isContentSelectionPlayable(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/ui/ComponentStatus;->GONE:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getVisibility(Ljava/lang/Object;)Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 0

    .line 27
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/selection/PlaySelectionButton;->getVisibility(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/ComponentStatus;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/content/IContentSelection;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionButton;->locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/controller/LocationSeekerController;->onPlaySelectionControlClicked(Lcom/amazon/kindle/krx/content/IContentSelection;)V

    .line 126
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->PlayFromHere:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    return-void
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/selection/PlaySelectionButton;->onClick(Lcom/amazon/kindle/krx/content/IContentSelection;)V

    return-void
.end method
