.class public final Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;
.super Lcom/audible/hushpuppy/view/common/EventDrivenFragment;
.source "StartActionsPitchFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/hushpuppy/view/common/EventDrivenFragment<",
        "Lcom/audible/hushpuppy/model/read/IUpsellModel;",
        "Lcom/audible/hushpuppy/controller/StartActionsUpsellController;",
        ">;"
    }
.end annotation


# instance fields
.field protected currencyFormatter:Lcom/audible/hushpuppy/view/common/CurrencyFormatter;

.field protected hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private narrator:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private upsellButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 56
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->upsellModel()Lcom/audible/hushpuppy/model/read/IUpsellModel;

    move-result-object v0

    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->startActionsUpsellController()Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    move-result-object v1

    .line 57
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->eventBus()Lde/greenrobot/event/EventBus;

    move-result-object v2

    .line 56
    invoke-direct {p0, v0, v1, v2}, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lde/greenrobot/event/EventBus;)V

    .line 58
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;)Ljava/lang/Object;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;->controller:Ljava/lang/Object;

    return-object p0
.end method

.method private setNarratorText()V
    .locals 6

    .line 99
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getNarrator()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->narrator:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->narrator:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->player_narrator_text:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->narrator:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setTitleText()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->audiobook_upsell_msg_sa:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setUpsellButton()V
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;->model:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/read/IUpsellModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->getExpectedPrice()Lcom/audible/hushpuppy/common/upsell/PriceData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->currencyFormatter:Lcom/audible/hushpuppy/view/common/CurrencyFormatter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/audible/hushpuppy/view/common/CurrencyFormatter;->displayPrice(Lcom/audible/hushpuppy/common/upsell/PriceData;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->audiobook_upsell_btn_buy_now:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->audiobook_upsell_btn_buy_now_unknown_price:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->upsellButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->upsellButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->upsell_button_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 121
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->upsellButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->upsellButton:Landroid/widget/Button;

    new-instance v1, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment$1;-><init>(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected getProperties()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;",
            ">;"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->NARRATOR:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->PRICE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 67
    sget p3, Lcom/amazon/kindle/hushpuppy/plugin/R$layout;->start_actions_pitch:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->textView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->title:Landroid/widget/TextView;

    .line 69
    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->narrator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->narrator:Landroid/widget/TextView;

    .line 70
    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->upsellButton:Landroid/widget/Button;

    return-object p1
.end method

.method protected refresh()V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->setTitleText()V

    .line 86
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->setNarratorText()V

    .line 87
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsPitchFragment;->setUpsellButton()V

    return-void
.end method
