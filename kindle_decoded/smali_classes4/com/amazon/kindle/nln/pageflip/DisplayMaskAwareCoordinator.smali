.class public final Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator;
.super Ljava/lang/Object;
.source "LocationSeekerLayoutCoordinator.kt"

# interfaces
.implements Lcom/amazon/kindle/nln/pageflip/Coordinator;


# instance fields
.field private final utils:Lcom/amazon/kindle/displaymask/DisplayMaskUtils;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator;-><init>(Lcom/amazon/kindle/displaymask/DisplayMaskUtils;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/displaymask/DisplayMaskUtils;)V
    .locals 1

    const-string v0, "utils"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator;->utils:Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kindle/displaymask/DisplayMaskUtils;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 101
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator;-><init>(Lcom/amazon/kindle/displaymask/DisplayMaskUtils;)V

    return-void
.end method


# virtual methods
.method public addAdditionalControlListener(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator;->utils:Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "additionalControlView.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsKt;->isVertical(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    new-instance v0, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator$addAdditionalControlListener$updateHeight$1;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator$addAdditionalControlListener$updateHeight$1;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 130
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    .line 131
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 133
    :cond_2
    new-instance p2, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator$addAdditionalControlListener$1;

    invoke-direct {p2, v0}, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator$addAdditionalControlListener$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public adjustWidthForMask(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator;->utils:Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "view.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsKt;->isVertical(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    :goto_0
    return-void
.end method

.method public getLocationSeekerLayout(Landroid/content/Context;)I
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator;->utils:Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 104
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsKt;->isVertical(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 105
    sget p1, Lcom/amazon/kindle/krl/R$layout;->custom_reader_location_seekbar_container_displaymask:I

    goto :goto_0

    .line 107
    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$layout;->custom_reader_location_seekbar_container:I

    :goto_0
    return p1
.end method
