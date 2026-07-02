.class public Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;
.super Ljava/lang/Object;
.source "InternalCreateFfsSessionTokenInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private accessToken:Ljava/lang/String;

.field private customerId:Ljava/lang/String;

.field private deviceSerial:Ljava/lang/String;

.field private productIndex:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.InternalCreateFfsSessionTokenInput"

    aput-object v2, v0, v1

    .line 54
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->classNameHashCode:I

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
    .locals 3

    .line 75
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 79
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;

    .line 81
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->accessToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->accessToken:Ljava/lang/String;

    .line 82
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->customerId:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->customerId:Ljava/lang/String;

    .line 83
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->deviceSerial:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->deviceSerial:Ljava/lang/String;

    .line 84
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->productIndex:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->productIndex:Ljava/lang/String;

    .line 85
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->publicKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->publicKey:Ljava/lang/String;

    .line 86
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->customerId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSerial()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->deviceSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getProductIndex()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->productIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 61
    sget v1, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->classNameHashCode:I

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->accessToken:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->customerId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->deviceSerial:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->productIndex:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->publicKey:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 61
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setCustomerId(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->customerId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceSerial(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->deviceSerial:Ljava/lang/String;

    return-void
.end method

.method public setProductIndex(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->productIndex:Ljava/lang/String;

    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/InternalCreateFfsSessionTokenInput;->publicKey:Ljava/lang/String;

    return-void
.end method
