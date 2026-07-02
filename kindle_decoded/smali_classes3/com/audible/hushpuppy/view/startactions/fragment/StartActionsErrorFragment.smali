.class public final Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment;
.super Landroid/app/Fragment;
.source "StartActionsErrorFragment.java"


# instance fields
.field protected upsellController:Lcom/audible/hushpuppy/controller/StartActionsUpsellController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 38
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 49
    sget p3, Lcom/amazon/kindle/hushpuppy/plugin/R$layout;->start_actions_error:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->try_again_link:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 53
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$color;->link_text_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-static {p2, p3}, Lcom/audible/hushpuppy/common/system/TextViewUtil;->applyLinkStyle(Landroid/widget/TextView;I)V

    .line 54
    new-instance p3, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment$1;

    invoke-direct {p3, p0}, Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment$1;-><init>(Lcom/audible/hushpuppy/view/startactions/fragment/StartActionsErrorFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
