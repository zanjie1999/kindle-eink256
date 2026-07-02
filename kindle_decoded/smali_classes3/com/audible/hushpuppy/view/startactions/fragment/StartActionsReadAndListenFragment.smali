.class public final Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;
.super Lcom/audible/hushpuppy/view/common/EventDrivenFragment;
.source "StartActionsReadAndListenFragment.java"


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
.field protected locationSeekerController:Lcom/audible/hushpuppy/controller/LocationSeekerController;

.field private purchasedByAccident:Landroid/widget/TextView;

.field private readAndListenButton:Landroid/widget/Button;

.field protected upsellController:Lcom/audible/hushpuppy/controller/StartActionsUpsellController;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->upsellModel()Lcom/audible/hushpuppy/model/read/IUpsellModel;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->startActionsUpsellController()Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    move-result-object v1

    .line 57
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v2

    invoke-interface {v2}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->eventBus()Lde/greenrobot/event/EventBus;

    move-result-object v2

    .line 55
    invoke-direct {p0, v0, v1, v2}, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lde/greenrobot/event/EventBus;)V

    .line 58
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;)V

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

    .line 78
    const-class v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 69
    sget p3, Lcom/amazon/kindle/hushpuppy/plugin/R$layout;->start_actions_read_and_listen:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->read_and_listen_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;->readAndListenButton:Landroid/widget/Button;

    .line 71
    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->purchased_by_accident:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;->purchasedByAccident:Landroid/widget/TextView;

    return-object p1
.end method

.method protected refresh()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;->readAndListenButton:Landroid/widget/Button;

    new-instance v1, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment$1;-><init>(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;->purchasedByAccident:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->link_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/common/system/TextViewUtil;->applyLinkStyle(Landroid/widget/TextView;I)V

    .line 95
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;->readAndListenButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->upsell_button_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/common/system/TextViewUtil;->setTextColor(Landroid/view/View;I)V

    .line 96
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;->purchasedByAccident:Landroid/widget/TextView;

    new-instance v1, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment$2;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment$2;-><init>(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsReadAndListenFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
