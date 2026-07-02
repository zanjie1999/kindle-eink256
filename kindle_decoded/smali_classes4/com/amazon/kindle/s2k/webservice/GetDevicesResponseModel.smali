.class public Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;
.super Lcom/amazon/kcp/application/models/internal/CAsyncModel;
.source "GetDevicesResponseModel.java"


# instance fields
.field private deviceList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/s2k/KindleDevice;",
            ">;"
        }
    .end annotation
.end field

.field private receivedResults:Z

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/amazon/kcp/application/models/internal/CAsyncModel;-><init>()V

    .line 21
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;->deviceList:Ljava/util/Vector;

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;->statusCode:I

    return-void
.end method


# virtual methods
.method public addDevice(Lcom/amazon/kindle/s2k/KindleDevice;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;->deviceList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDeviceList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/s2k/KindleDevice;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;->deviceList:Ljava/util/Vector;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;->statusCode:I

    return v0
.end method

.method public setHasResults(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;->receivedResults:Z

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;->statusCode:I

    return-void
.end method
