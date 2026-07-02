.class public final Lcom/amazon/kindle/nln/pageflip/StandardCoordinator;
.super Ljava/lang/Object;
.source "LocationSeekerLayoutCoordinator.kt"

# interfaces
.implements Lcom/amazon/kindle/nln/pageflip/Coordinator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAdditionalControlListener(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public adjustWidthForMask(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getLocationSeekerLayout(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget p1, Lcom/amazon/kindle/krl/R$layout;->custom_reader_location_seekbar_container:I

    return p1
.end method
