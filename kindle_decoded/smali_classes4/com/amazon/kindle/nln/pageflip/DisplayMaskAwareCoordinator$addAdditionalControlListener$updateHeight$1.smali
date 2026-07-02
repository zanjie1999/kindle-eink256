.class final Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator$addAdditionalControlListener$updateHeight$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LocationSeekerLayoutCoordinator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator;->addAdditionalControlListener(Landroid/view/ViewGroup;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $additionalControlView:Landroid/view/ViewGroup;

.field final synthetic $viewToModify:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator$addAdditionalControlListener$updateHeight$1;->$additionalControlView:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator$addAdditionalControlListener$updateHeight$1;->$viewToModify:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 101
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator$addAdditionalControlListener$updateHeight$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator$addAdditionalControlListener$updateHeight$1;->$additionalControlView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "additionalControlView.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->nln_location_seeker_height_doubled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator$addAdditionalControlListener$updateHeight$1;->$viewToModify:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator$addAdditionalControlListener$updateHeight$1;->$additionalControlView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method
