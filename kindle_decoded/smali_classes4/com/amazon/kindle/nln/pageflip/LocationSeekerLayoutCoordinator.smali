.class public final Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;
.super Ljava/lang/Object;
.source "LocationSeekerLayoutCoordinator.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;

.field private static final instance$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;

    invoke-direct {v0}, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;-><init>()V

    sput-object v0, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;->INSTANCE:Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;

    .line 22
    sget-object v0, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator$instance$2;->INSTANCE:Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator$instance$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addAdditionalControlListener(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 65
    sget-object v0, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;->INSTANCE:Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;

    invoke-direct {v0}, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;->getInstance()Lcom/amazon/kindle/nln/pageflip/Coordinator;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/nln/pageflip/Coordinator;->addAdditionalControlListener(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public static final adjustGapWithForMask(Landroid/view/View;)V
    .locals 1

    .line 51
    sget-object v0, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;->INSTANCE:Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;

    invoke-direct {v0}, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;->getInstance()Lcom/amazon/kindle/nln/pageflip/Coordinator;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/nln/pageflip/Coordinator;->adjustWidthForMask(Landroid/view/View;)V

    return-void
.end method

.method private final getInstance()Lcom/amazon/kindle/nln/pageflip/Coordinator;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;->instance$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/nln/pageflip/Coordinator;

    return-object v0
.end method

.method public static final getPageFlipLocationSeekerLayout(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;->INSTANCE:Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;

    invoke-direct {v0}, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;->getInstance()Lcom/amazon/kindle/nln/pageflip/Coordinator;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/nln/pageflip/Coordinator;->getLocationSeekerLayout(Landroid/content/Context;)I

    move-result p0

    return p0
.end method
