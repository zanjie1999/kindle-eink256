.class public Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;
.super Ljava/lang/Object;
.source "ComputeConfigurationDataOutput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private configuration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private endpointToUse:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

.field private registrationDetails:Lcom/amazon/devicesetupservice/v1/RegistrationDetails;

.field private signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.ComputeConfigurationDataOutput"

    aput-object v2, v0, v1

    .line 56
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->classNameHashCode:I

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

    .line 77
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 81
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;

    .line 83
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->configuration:Ljava/util/Map;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->configuration:Ljava/util/Map;

    .line 84
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->endpointToUse:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->endpointToUse:Ljava/lang/String;

    .line 85
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->nonce:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->nonce:Ljava/lang/String;

    .line 86
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->registrationDetails:Lcom/amazon/devicesetupservice/v1/RegistrationDetails;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->registrationDetails:Lcom/amazon/devicesetupservice/v1/RegistrationDetails;

    .line 87
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->signature:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->signature:Ljava/lang/String;

    .line 88
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getConfiguration()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->configuration:Ljava/util/Map;

    return-object v0
.end method

.method public getEndpointToUse()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->endpointToUse:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationDetails()Lcom/amazon/devicesetupservice/v1/RegistrationDetails;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->registrationDetails:Lcom/amazon/devicesetupservice/v1/RegistrationDetails;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 63
    sget v1, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->classNameHashCode:I

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->configuration:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->endpointToUse:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->nonce:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->registrationDetails:Lcom/amazon/devicesetupservice/v1/RegistrationDetails;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->signature:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 63
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setConfiguration(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->configuration:Ljava/util/Map;

    return-void
.end method

.method public setEndpointToUse(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->endpointToUse:Ljava/lang/String;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setRegistrationDetails(Lcom/amazon/devicesetupservice/v1/RegistrationDetails;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->registrationDetails:Lcom/amazon/devicesetupservice/v1/RegistrationDetails;

    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/ComputeConfigurationDataOutput;->signature:Ljava/lang/String;

    return-void
.end method
