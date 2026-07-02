.class public Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;
.super Ljava/lang/Object;
.source "DeviceDetailsProtoData.java"


# instance fields
.field private final mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

.field private final mNetworkSyncToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    .line 12
    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;->mNetworkSyncToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    return-object v0
.end method

.method public getNetworkSyncToken()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetailsProtoData;->mNetworkSyncToken:Ljava/lang/String;

    return-object v0
.end method
