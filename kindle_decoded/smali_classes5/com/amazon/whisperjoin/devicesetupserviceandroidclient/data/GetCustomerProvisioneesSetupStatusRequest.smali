.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;
.super Ljava/lang/Object;
.source "GetCustomerProvisioneesSetupStatusRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;
    }
.end annotation


# instance fields
.field private final mAuthMaterialIdentifiers:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mBarcodeIdentifiers:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;->access$000(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;->mAuthMaterialIdentifiers:Lcom/google/common/collect/ImmutableList;

    .line 26
    invoke-static {p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;->access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;->mBarcodeIdentifiers:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 47
    const-class v2, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;

    .line 51
    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;->mAuthMaterialIdentifiers:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;->mAuthMaterialIdentifiers:Lcom/google/common/collect/ImmutableList;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;->mBarcodeIdentifiers:Lcom/google/common/collect/ImmutableList;

    iget-object p1, p1, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;->mBarcodeIdentifiers:Lcom/google/common/collect/ImmutableList;

    .line 52
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAuthMaterialIdentifiers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/AuthMaterialIdentifier;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;->mAuthMaterialIdentifiers:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public getBarcodeIdentifiers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/BarcodeIdentifier;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;->mBarcodeIdentifiers:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;->mAuthMaterialIdentifiers:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;->mBarcodeIdentifiers:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 57
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;->mAuthMaterialIdentifiers:Lcom/google/common/collect/ImmutableList;

    const-string v2, "mAuthMaterialIdentifiers"

    .line 58
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/data/GetCustomerProvisioneesSetupStatusRequest;->mBarcodeIdentifiers:Lcom/google/common/collect/ImmutableList;

    const-string v2, "mBarcodeIdentifiers"

    .line 59
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 60
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
