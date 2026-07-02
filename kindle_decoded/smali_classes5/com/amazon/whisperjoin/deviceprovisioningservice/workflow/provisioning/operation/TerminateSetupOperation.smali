.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/TerminateSetupOperation;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;
.source "TerminateSetupOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$TerminateSetup;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TerminateSetupOperation"


# instance fields
.field private final mProvisioningManagerProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/DeviceOperation;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/TerminateSetupOperation;->mProvisioningManagerProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/TerminateSetupOperation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/TerminateSetupOperation;)Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/TerminateSetupOperation;->mProvisioningManagerProvider:Lcom/amazon/whisperjoin/deviceprovisioningservice/device/ProvisioningManagerProvider;

    return-object p0
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/Action$TerminateSetup;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/result/WJResult;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/TerminateSetupOperation$2;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/TerminateSetupOperation$2;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/TerminateSetupOperation;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/TerminateSetupOperation$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/TerminateSetupOperation$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/operation/TerminateSetupOperation;)V

    .line 58
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
