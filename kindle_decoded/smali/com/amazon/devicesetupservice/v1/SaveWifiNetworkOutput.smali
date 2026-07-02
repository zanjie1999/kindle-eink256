.class public Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkOutput;
.super Ljava/lang/Object;
.source "SaveWifiNetworkOutput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private endpointToUse:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.SaveWifiNetworkOutput"

    aput-object v2, v0, v1

    .line 18
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkOutput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 35
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkOutput;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 39
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkOutput;

    .line 41
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkOutput;->endpointToUse:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkOutput;->endpointToUse:Ljava/lang/String;

    .line 42
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getEndpointToUse()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkOutput;->endpointToUse:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    sget v1, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkOutput;->classNameHashCode:I

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkOutput;->endpointToUse:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 25
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setEndpointToUse(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/SaveWifiNetworkOutput;->endpointToUse:Ljava/lang/String;

    return-void
.end method
