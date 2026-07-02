.class public Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionInfo"
.end annotation


# instance fields
.field public final mBuildName:Ljava/lang/String;

.field public final mBuildNumber:I

.field public final mBuildType:Lcom/amazon/whispersync/dcp/framework/DeviceInfo$BuildType;

.field public final mProductDevice:Ljava/lang/String;

.field public final mProductModel:Ljava/lang/String;

.field public final mSignatureType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/DeviceInfo$BuildType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;->mBuildName:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;->mBuildType:Lcom/amazon/whispersync/dcp/framework/DeviceInfo$BuildType;

    .line 84
    iput p3, p0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;->mBuildNumber:I

    .line 85
    iput-object p4, p0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;->mSignatureType:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;->mProductModel:Ljava/lang/String;

    .line 87
    iput-object p6, p0, Lcom/amazon/whispersync/dcp/framework/DeviceInfo$VersionInfo;->mProductDevice:Ljava/lang/String;

    return-void
.end method
