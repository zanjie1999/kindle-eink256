.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceError;
.super Ljava/lang/Object;
.source "RenameDeviceError.java"


# instance fields
.field private final mErrorText:Ljava/lang/String;

.field private final mErrorType:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceError;->mErrorType:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    .line 12
    iput-object p2, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceError;->mErrorText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorText()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceError;->mErrorText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceError;->mErrorType:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RenameDeviceErrorType;

    return-object v0
.end method
