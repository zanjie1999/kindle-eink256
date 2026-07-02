.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;
.source "SetupFailureViewModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_CAUSE:Ljava/lang/String; = "cause"

.field private static final KEY_STACK_TRACE:Ljava/lang/String; = "stacktrace"

.field private static final KEY_STATE:Ljava/lang/String; = "step"

.field private static final KEY_WJ_ERROR:Ljava/lang/String; = "wjError"


# instance fields
.field private final mFailureName:Ljava/lang/String;

.field private final mFailureStacktrace:Ljava/lang/String;

.field private final mFailureState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

.field private final mWJError:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;-><init>(Landroid/os/Parcel;)V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "step"

    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->mFailureState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const-string v0, "cause"

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->mFailureName:Ljava/lang/String;

    const-string/jumbo v0, "stacktrace"

    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->mFailureStacktrace:Ljava/lang/String;

    const-string/jumbo v0, "wjError"

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->mWJError:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)V
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->SETUP_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)V

    .line 28
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->mFailureState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    .line 29
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->mFailureName:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->mFailureStacktrace:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->mWJError:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    return-void
.end method


# virtual methods
.method public getFailureName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->mFailureName:Ljava/lang/String;

    return-object v0
.end method

.method public getWJError()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->mWJError:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 62
    invoke-super {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 63
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 64
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->mFailureState:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const-string/jumbo v1, "step"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 65
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->mFailureName:Ljava/lang/String;

    const-string v1, "cause"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 66
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->mFailureStacktrace:Ljava/lang/String;

    const-string/jumbo v1, "stacktrace"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 67
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/SetupFailureViewModel;->mWJError:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    const-string/jumbo v1, "wjError"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
