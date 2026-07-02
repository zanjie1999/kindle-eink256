.class public Lcom/amazon/kindle/socialsharing/service/protocol/DeviceData;
.super Ljava/lang/Object;
.source "DeviceData.java"


# instance fields
.field private deviceType:Ljava/lang/String;

.field private softwareVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/DeviceData;->deviceType:Ljava/lang/String;

    return-void
.end method

.method public setSoftwareVersion(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/protocol/DeviceData;->softwareVersion:Ljava/lang/String;

    return-void
.end method
