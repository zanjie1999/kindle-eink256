.class public abstract Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;
.super Ljava/lang/Object;
.source "AbstractDiscoveredProvisioneeRequest.java"


# instance fields
.field protected mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-void
.end method


# virtual methods
.method public getProvisionerInfo()Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AbstractDiscoveredProvisioneeRequest;->mProvisionerInfo:Lcom/amazon/devicesetupservice/v1/ProvisionerInfo;

    return-object v0
.end method
