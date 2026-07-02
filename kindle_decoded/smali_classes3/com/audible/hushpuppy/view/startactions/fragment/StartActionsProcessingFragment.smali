.class public final Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;
.super Landroid/app/Fragment;
.source "StartActionsProcessingFragment.java"


# instance fields
.field private purchasedByAccident:Landroid/widget/TextView;

.field protected upsellController:Lcom/audible/hushpuppy/controller/StartActionsUpsellController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 37
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 48
    sget p3, Lcom/amazon/kindle/hushpuppy/plugin/R$layout;->start_actions_processing:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 49
    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->purchased_by_accident:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;->purchasedByAccident:Landroid/widget/TextView;

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 55
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 57
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;->purchasedByAccident:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->link_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/common/system/TextViewUtil;->applyLinkStyle(Landroid/widget/TextView;I)V

    .line 58
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;->purchasedByAccident:Landroid/widget/TextView;

    new-instance v1, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment$1;-><init>(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsProcessingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
