.class public Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;
.super Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;
.source "StartEcdheAuthenticationSessionInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private authMaterialIndex:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private productIndex:Ljava/lang/String;

.field private softwareVersionIndex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.StartEcdheAuthenticationSessionInput"

    aput-object v2, v0, v1

    .line 45
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->classNameHashCode:I

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

    .line 66
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 70
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;

    .line 73
    invoke-super {p0, p1}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->authMaterialIndex:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->authMaterialIndex:Ljava/lang/String;

    .line 74
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->nonce:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->nonce:Ljava/lang/String;

    .line 75
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->productIndex:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->productIndex:Ljava/lang/String;

    .line 76
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->softwareVersionIndex:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->softwareVersionIndex:Ljava/lang/String;

    .line 77
    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAuthMaterialIndex()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->authMaterialIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getProductIndex()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->productIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersionIndex()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->softwareVersionIndex:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    invoke-super {p0}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->classNameHashCode:I

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->authMaterialIndex:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->nonce:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->productIndex:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->softwareVersionIndex:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 52
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAuthMaterialIndex(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->authMaterialIndex:Ljava/lang/String;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setProductIndex(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->productIndex:Ljava/lang/String;

    return-void
.end method

.method public setSoftwareVersionIndex(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/StartEcdheAuthenticationSessionInput;->softwareVersionIndex:Ljava/lang/String;

    return-void
.end method
