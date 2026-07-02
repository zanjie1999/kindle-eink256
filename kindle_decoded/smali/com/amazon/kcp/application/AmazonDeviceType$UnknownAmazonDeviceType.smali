.class Lcom/amazon/kcp/application/AmazonDeviceType$UnknownAmazonDeviceType;
.super Ljava/lang/Object;
.source "AmazonDeviceType.java"

# interfaces
.implements Lcom/amazon/kcp/application/IAmazonDeviceType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AmazonDeviceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnknownAmazonDeviceType"
.end annotation


# instance fields
.field private final deviceTypeId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/amazon/kcp/application/AmazonDeviceType$UnknownAmazonDeviceType;->deviceTypeId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/application/AmazonDeviceType$1;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/AmazonDeviceType$UnknownAmazonDeviceType;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDeviceTypeHumanReadable()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/amazon/kcp/application/AmazonDeviceType$UnknownAmazonDeviceType;->deviceTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceTypeId()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/amazon/kcp/application/AmazonDeviceType$UnknownAmazonDeviceType;->deviceTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 300
    iget-object v1, p0, Lcom/amazon/kcp/application/AmazonDeviceType$UnknownAmazonDeviceType;->deviceTypeId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "UnknownAmazonDeviceType[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
