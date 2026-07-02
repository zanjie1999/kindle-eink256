.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;
.source "ProvisioningDetailsViewModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;-><init>(Landroid/os/Parcel;)V

    .line 21
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;->mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;)V
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->AWAITING_PROVISIONING_DATA:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)V

    .line 16
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;->mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getProvisioningDetails()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;->mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 35
    invoke-super {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 36
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;->mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
