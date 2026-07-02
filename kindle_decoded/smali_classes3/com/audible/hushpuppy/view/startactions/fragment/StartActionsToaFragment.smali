.class public final Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;
.super Lcom/audible/hushpuppy/view/common/EventDrivenFragment;
.source "StartActionsToaFragment.java"


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
.field protected hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private narrator:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private upsellButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->upsellModel()Lcom/audible/hushpuppy/model/read/IUpsellModel;

    move-result-object v0

    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->startActionsUpsellController()Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    move-result-object v1

    .line 60
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->eventBus()Lde/greenrobot/event/EventBus;

    move-result-object v2

    .line 59
    invoke-direct {p0, v0, v1, v2}, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lde/greenrobot/event/EventBus;)V

    .line 61
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;)Ljava/lang/Object;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;->controller:Ljava/lang/Object;

    return-object p0
.end method

.method private setNarratorText()V
    .locals 6

    .line 117
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getNarrator()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/audible/mobile/util/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;->narrator:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;->narrator:Landroid/widget/TextView;

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

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;->narrator:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setTitleText()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->audiobook_upsell_title_toa_eligible:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setUpsellButton()V
    .locals 4

    .line 102
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->audiobook_upsell_btn_buy_now_toa_eligible:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;->upsellButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;->upsellButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->upsell_button_text:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 105
    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;->upsellButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;->upsellButton:Landroid/widget/Button;

    new-instance v1, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment$1;-><init>(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected getProperties()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;",
            ">;"
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->NARRATOR:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 72
    sget p3, Lcom/amazon/kindle/hushpuppy/plugin/R$layout;->start_actions_pitch:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 73
    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->textView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;->title:Landroid/widget/TextView;

    .line 74
    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->narrator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;->narrator:Landroid/widget/TextView;

    .line 75
    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->upsell_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;->upsellButton:Landroid/widget/Button;

    return-object p1
.end method

.method protected refresh()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;->setTitleText()V

    .line 91
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;->setNarratorText()V

    .line 92
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsToaFragment;->setUpsellButton()V

    return-void
.end method
