.class public Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;
.super Ljava/lang/Object;
.source "GetProvisioneeDataFromFfsSessionTokenInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private signature:Ljava/lang/String;

.field private signedPayload:Ljava/nio/ByteBuffer;

.field private token:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.GetProvisioneeDataFromFfsSessionTokenInput"

    aput-object v2, v0, v1

    .line 38
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;->classNameHashCode:I

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
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 61
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;

    .line 63
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;->signature:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;->signature:Ljava/lang/String;

    .line 64
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;->signedPayload:Ljava/nio/ByteBuffer;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;->signedPayload:Ljava/nio/ByteBuffer;

    .line 65
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;->token:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;->token:Ljava/lang/String;

    .line 66
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedPayload()Ljava/nio/ByteBuffer;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;->signedPayload:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;->token:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    sget v1, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;->classNameHashCode:I

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;->signature:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;->signedPayload:Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;->token:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 45
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;->signature:Ljava/lang/String;

    return-void
.end method

.method public setSignedPayload(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;->signedPayload:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/GetProvisioneeDataFromFfsSessionTokenInput;->token:Ljava/lang/String;

    return-void
.end method
