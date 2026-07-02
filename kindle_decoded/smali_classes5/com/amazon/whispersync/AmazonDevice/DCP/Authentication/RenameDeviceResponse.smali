.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;
.super Ljava/lang/Object;
.source "RenameDeviceResponse.java"


# instance fields
.field private final mDeviceName:Ljava/lang/String;

.field private final mError:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceError;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceError;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;->mDeviceName:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;->mError:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceError;

    return-void
.end method


# virtual methods
.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceError;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceResponse;->mError:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceError;

    return-object v0
.end method
