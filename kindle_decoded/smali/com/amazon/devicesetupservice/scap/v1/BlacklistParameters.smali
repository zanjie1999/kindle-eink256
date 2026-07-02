.class public Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;
.super Ljava/lang/Object;
.source "BlacklistParameters.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private deviceIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private devicesToBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/scap/v1/BlacklistDevice;",
            ">;"
        }
    .end annotation
.end field

.field private duration:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.scap.v1.BlacklistParameters"

    aput-object v2, v0, v1

    .line 38
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 57
    instance-of v0, p1, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 61
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;

    .line 63
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;->deviceIdList:Ljava/util/List;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;->deviceIdList:Ljava/util/List;

    .line 64
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;->devicesToBlacklist:Ljava/util/List;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;->devicesToBlacklist:Ljava/util/List;

    .line 65
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;->duration:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;->duration:Ljava/lang/String;

    .line 66
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDeviceIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;->deviceIdList:Ljava/util/List;

    return-object v0
.end method

.method public getDevicesToBlacklist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/scap/v1/BlacklistDevice;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;->devicesToBlacklist:Ljava/util/List;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    sget v1, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;->classNameHashCode:I

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;->deviceIdList:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;->devicesToBlacklist:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;->duration:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 45
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDeviceIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;->deviceIdList:Ljava/util/List;

    return-void
.end method

.method public setDevicesToBlacklist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/scap/v1/BlacklistDevice;",
            ">;)V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;->devicesToBlacklist:Ljava/util/List;

    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;->duration:Ljava/lang/String;

    return-void
.end method
