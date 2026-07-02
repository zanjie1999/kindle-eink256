.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel;
.super Ljava/lang/Object;
.source "RecentlySetupDevicesViewModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mGetCustomerProvisioneesSetupStatusResponse:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel;->mGetCustomerProvisioneesSetupStatusResponse:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$Builder;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$Builder;->access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel;->mGetCustomerProvisioneesSetupStatusResponse:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$Builder;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel;->mGetCustomerProvisioneesSetupStatusResponse:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
