.class public Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/messaging/odot/webservices/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionInfo"
.end annotation


# instance fields
.field public final mBuildName:Ljava/lang/String;

.field public final mBuildNumber:I

.field public final mBuildType:Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

.field public final mProductDevice:Ljava/lang/String;

.field public final mProductModel:Ljava/lang/String;

.field public final mSignatureType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;->mBuildName:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;->mBuildType:Lcom/amazon/messaging/odot/webservices/DeviceInfo$BuildType;

    .line 67
    iput p3, p0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;->mBuildNumber:I

    .line 68
    iput-object p4, p0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;->mSignatureType:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;->mProductModel:Ljava/lang/String;

    .line 70
    iput-object p6, p0, Lcom/amazon/messaging/odot/webservices/DeviceInfo$VersionInfo;->mProductDevice:Ljava/lang/String;

    return-void
.end method
