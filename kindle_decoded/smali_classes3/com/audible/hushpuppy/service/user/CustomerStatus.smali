.class public final Lcom/audible/hushpuppy/service/user/CustomerStatus;
.super Ljava/lang/Object;
.source "CustomerStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/service/user/CustomerStatus$CustomerStatusDetail;
    }
.end annotation


# instance fields
.field private final customerStatusDetail:Lcom/audible/hushpuppy/service/user/CustomerStatus$CustomerStatusDetail;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "customer_status"
    .end annotation
.end field


# virtual methods
.method public getCustomerProspectBenefit()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/audible/hushpuppy/service/user/CustomerStatus;->customerStatusDetail:Lcom/audible/hushpuppy/service/user/CustomerStatus$CustomerStatusDetail;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/service/user/CustomerStatus$CustomerStatusDetail;->getProspectBenefit()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
