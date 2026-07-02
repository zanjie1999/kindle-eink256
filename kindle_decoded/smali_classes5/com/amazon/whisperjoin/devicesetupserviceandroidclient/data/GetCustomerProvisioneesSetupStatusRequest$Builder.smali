.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;
.super Ljava/lang/Object;
.source "GetCustomerProvisioneesSetupStatusRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mAuthMaterialIdentifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mBarcodeIdentifiers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;->mAuthMaterialIdentifiers:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;->mBarcodeIdentifiers:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;)Ljava/util/Set;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;->mAuthMaterialIdentifiers:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;)Ljava/util/Set;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;->mBarcodeIdentifiers:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public addAuthMaterialIdentifier(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;->mAuthMaterialIdentifiers:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addBarcodeIdentifier(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;->mBarcodeIdentifiers:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public createRequest()Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;
    .locals 2

    .line 79
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$1;)V

    return-object v0
.end method
