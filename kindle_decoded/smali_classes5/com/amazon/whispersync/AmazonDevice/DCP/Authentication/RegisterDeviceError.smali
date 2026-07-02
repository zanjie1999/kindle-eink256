.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceError;
.super Ljava/lang/Object;
.source "RegisterDeviceError.java"


# instance fields
.field private final mErrorType:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceError;->mErrorType:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceError;->mErrorType:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RegisterDeviceErrorType;

    return-object v0
.end method
