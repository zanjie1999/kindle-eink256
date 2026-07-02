.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;
.super Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;
.source "WifiConnectionErrorViewModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

.field private final mWJError:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

.field private final mWifiConnectionError:Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;-><init>(Landroid/os/Parcel;)V

    .line 46
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->mWifiConnectionError:Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    .line 47
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    .line 48
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->mWJError:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->FIXUP_WIFI_CONNECTION_ERROR:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-direct {p0, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 38
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->mWifiConnectionError:Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    .line 39
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    .line 40
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->mWJError:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wjError can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "provisioningDetails can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "wifiNetworkConnectionError can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 61
    invoke-super {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;->describeContents()I

    move-result v0

    return v0
.end method

.method public getProvisioningDetails()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    return-object v0
.end method

.method public getWJError()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->mWJError:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    return-object v0
.end method

.method public getWifiConnectionError()Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->mWifiConnectionError:Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 53
    invoke-super {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/ViewModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 54
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->mWifiConnectionError:Lcom/amazon/whisperjoin/deviceprovisioningservice/error/ProvisionableWifiNetworkConnectionError;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 55
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->mProvisioningDetails:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioningDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 56
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/WifiConnectionErrorViewModel;->mWJError:Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
