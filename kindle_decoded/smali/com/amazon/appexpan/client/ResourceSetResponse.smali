.class public Lcom/amazon/appexpan/client/ResourceSetResponse;
.super Ljava/lang/Object;
.source "ResourceSetResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;
    }
.end annotation


# instance fields
.field private failureReason:Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;

.field private final resourceSet:Lcom/amazon/appexpan/client/ResourceSet;


# direct methods
.method public constructor <init>(Lcom/amazon/appexpan/client/ResourceSet;Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/appexpan/client/ResourceSetResponse;->resourceSet:Lcom/amazon/appexpan/client/ResourceSet;

    iput-object p2, p0, Lcom/amazon/appexpan/client/ResourceSetResponse;->failureReason:Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;

    return-void
.end method


# virtual methods
.method public getFailureReason()Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/appexpan/client/ResourceSetResponse;->failureReason:Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;

    return-object v0
.end method

.method public getResourceSet()Lcom/amazon/appexpan/client/ResourceSet;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/appexpan/client/ResourceSetResponse;->resourceSet:Lcom/amazon/appexpan/client/ResourceSet;

    return-object v0
.end method
