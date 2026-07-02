.class public Lcom/amazon/kindle/NullRevokeOwnershipResumer;
.super Ljava/lang/Object;
.source "NullRevokeOwnershipResumer.java"

# interfaces
.implements Lcom/amazon/kindle/IRevokeOwnershipResumer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteRevokeRequest(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public persistRevokeRequest(Lcom/amazon/kindle/revoke/IRevokeTracker;)V
    .locals 0

    return-void
.end method

.method public resumeRevokeRequests()V
    .locals 0

    return-void
.end method

.method public resumeRevokeRequests(Lcom/amazon/kindle/revoke/RevokeFailureType;)V
    .locals 0

    return-void
.end method
