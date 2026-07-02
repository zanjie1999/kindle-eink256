.class public Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;
.super Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;
.source "RecordDevicePossessionIntentInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private customerId:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private publicKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.RecordDevicePossessionIntentInput"

    aput-object v2, v0, v1

    .line 36
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 56
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 60
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;

    .line 63
    invoke-super {p0, p1}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;->customerId:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;->customerId:Ljava/lang/String;

    .line 64
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;->productId:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;->productId:Ljava/lang/String;

    .line 65
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;->publicKey:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;->publicKey:Ljava/lang/String;

    .line 66
    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCustomerId()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;->customerId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    invoke-super {p0}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;->classNameHashCode:I

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;->customerId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;->productId:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;->publicKey:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 43
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCustomerId(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;->customerId:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;->productId:Ljava/lang/String;

    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/RecordDevicePossessionIntentInput;->publicKey:Ljava/lang/String;

    return-void
.end method
