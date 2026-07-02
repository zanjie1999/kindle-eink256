.class final Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator$instance$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LocationSeekerLayoutCoordinator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/nln/pageflip/Coordinator;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator$instance$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator$instance$2;

    invoke-direct {v0}, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator$instance$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator$instance$2;->INSTANCE:Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator$instance$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/nln/pageflip/Coordinator;
    .locals 3

    .line 23
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->deviceSupportsDisplayMask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator;-><init>(Lcom/amazon/kindle/displaymask/DisplayMaskUtils;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Lcom/amazon/kindle/nln/pageflip/StandardCoordinator;

    invoke-direct {v0}, Lcom/amazon/kindle/nln/pageflip/StandardCoordinator;-><init>()V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/amazon/kindle/nln/pageflip/LocationSeekerLayoutCoordinator$instance$2;->invoke()Lcom/amazon/kindle/nln/pageflip/Coordinator;

    move-result-object v0

    return-object v0
.end method
