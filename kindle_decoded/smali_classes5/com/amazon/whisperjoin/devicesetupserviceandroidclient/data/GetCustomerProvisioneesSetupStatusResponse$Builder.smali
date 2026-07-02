.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$Builder;
.super Ljava/lang/Object;
.source "GetCustomerProvisioneesSetupStatusResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mProvisioneeSetupStatuses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchIntervalUsed:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$Builder;->mProvisioneeSetupStatuses:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$Builder;)Ljava/util/List;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$Builder;->mProvisioneeSetupStatuses:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$Builder;)Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$Builder;->mSearchIntervalUsed:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addProvisioneeSetupStatus(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/ProvisioneeSetupStatus;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$Builder;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$Builder;->mProvisioneeSetupStatuses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public createResponse()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse;
    .locals 2

    .line 78
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$Builder;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$1;)V

    return-object v0
.end method

.method public setSearchIntervalUsed(Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$Builder;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusResponse$Builder;->mSearchIntervalUsed:Ljava/lang/String;

    return-object p0
.end method
