.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceError;
.super Ljava/lang/Object;
.source "DeregisterDeviceError.java"


# instance fields
.field private final mErrorType:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceErrorType;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceErrorType;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceError;->mErrorType:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceErrorType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceErrorType;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceError;->mErrorType:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/DeregisterDeviceErrorType;

    return-object v0
.end method
