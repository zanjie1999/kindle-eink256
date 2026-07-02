.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;
.super Ljava/lang/Object;
.source "ZeroTouchWorkflowRouter.java"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableTransformer<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZeroTouchWorkflowRouter"


# instance fields
.field private final mFFSArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

.field private final mWJDeviceSetupModeSupportedPredicate:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;

.field private final mZeroTouchWorkflowFactory:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;->mZeroTouchWorkflowFactory:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;

    .line 28
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;->mFFSArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    .line 29
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;->mWJDeviceSetupModeSupportedPredicate:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;->mWJDeviceSetupModeSupportedPredicate:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/WJDeviceSetupModeSupportedPredicate;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;)Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;->mFFSArcusSettings:Lcom/amazon/whisperjoin/deviceprovisioningservice/arcus/data/FFSArcusSettings;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;->mZeroTouchWorkflowFactory:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowFactory;

    return-object p0
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/devices/AbstractPeripheralDeviceDetails;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/ZeroTouchWorkflowUpdate;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/zerotouch/ZeroTouchWorkflowRouter;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->concatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
