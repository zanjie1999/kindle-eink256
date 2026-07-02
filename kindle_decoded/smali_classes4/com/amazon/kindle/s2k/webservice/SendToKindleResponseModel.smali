.class public Lcom/amazon/kindle/s2k/webservice/SendToKindleResponseModel;
.super Lcom/amazon/kcp/application/models/internal/CAsyncModel;
.source "SendToKindleResponseModel.java"


# instance fields
.field private receivedResults:Z

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/amazon/kcp/application/models/internal/CAsyncModel;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleResponseModel;->statusCode:I

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleResponseModel;->statusCode:I

    return v0
.end method

.method public setHasResults(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleResponseModel;->receivedResults:Z

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleResponseModel;->statusCode:I

    return-void
.end method
