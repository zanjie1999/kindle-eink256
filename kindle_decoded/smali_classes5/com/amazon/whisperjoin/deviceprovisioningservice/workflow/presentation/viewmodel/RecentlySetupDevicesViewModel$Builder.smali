.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$Builder;
.super Ljava/lang/Object;
.source "RecentlySetupDevicesViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mGetCustomerProvisioneesSetupStatusResponse:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$Builder;->mGetCustomerProvisioneesSetupStatusResponse:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$Builder;->mGetCustomerProvisioneesSetupStatusResponse:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$Builder;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$1;)V

    return-object v0
.end method

.method public setGetCustomerProvisioneesSetupStatusResponse(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$Builder;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/presentation/viewmodel/RecentlySetupDevicesViewModel$Builder;->mGetCustomerProvisioneesSetupStatusResponse:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetCustomerProvisioneesSetupStatusResponse;

    return-object p0
.end method
