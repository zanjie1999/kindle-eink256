.class final Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel$1;
.super Ljava/lang/Object;
.source "ProvisioningDetailsViewModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;
    .locals 1

    .line 42
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;

    invoke-direct {v0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;
    .locals 0

    .line 47
    new-array p1, p1, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel$1;->newArray(I)[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ProvisioningDetailsViewModel;

    move-result-object p1

    return-object p1
.end method
