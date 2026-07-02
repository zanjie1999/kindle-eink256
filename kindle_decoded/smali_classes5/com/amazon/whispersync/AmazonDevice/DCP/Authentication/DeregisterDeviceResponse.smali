.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponse;
.super Ljava/lang/Object;
.source "DeregisterDeviceResponse.java"


# instance fields
.field private mError:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceError;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceError;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponse;->mError:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceError;

    return-object v0
.end method

.method public setError(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceError;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceResponse;->mError:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceError;

    return-void
.end method
