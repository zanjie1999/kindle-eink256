.class public final Lcom/amazon/ksdk/profiles/SharingRequestProperties;
.super Ljava/lang/Object;
.source "SharingRequestProperties.java"


# instance fields
.field final mHouseholdId:Ljava/lang/String;

.field final mOwnerCustomerId:Ljava/lang/String;

.field final mReceiverCustomerIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/ksdk/profiles/SharingRequestProperties;->mOwnerCustomerId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/amazon/ksdk/profiles/SharingRequestProperties;->mReceiverCustomerIds:Ljava/util/ArrayList;

    .line 23
    iput-object p3, p0, Lcom/amazon/ksdk/profiles/SharingRequestProperties;->mHouseholdId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHouseholdId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/SharingRequestProperties;->mHouseholdId:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerCustomerId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/SharingRequestProperties;->mOwnerCustomerId:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverCustomerIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/SharingRequestProperties;->mReceiverCustomerIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharingRequestProperties{mOwnerCustomerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/SharingRequestProperties;->mOwnerCustomerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mReceiverCustomerIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/SharingRequestProperties;->mReceiverCustomerIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mHouseholdId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/SharingRequestProperties;->mHouseholdId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
