.class public Lcom/amazon/devicesetupservice/scap/v1/Event;
.super Ljava/lang/Object;
.source "Event.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private actionDetails:Lcom/amazon/devicesetupservice/scap/v1/ActionDetails;

.field private bleParameters:Lcom/amazon/devicesetupservice/scap/v1/BleEventParameters;

.field private cblToken:Ljava/lang/String;

.field private errorDetails:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

.field private sequenceNumber:I

.field private timestamp:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.scap.v1.Event"

    aput-object v2, v0, v1

    .line 74
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/scap/v1/Event;->classNameHashCode:I

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

    .line 97
    instance-of v0, p1, Lcom/amazon/devicesetupservice/scap/v1/Event;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 101
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/scap/v1/Event;

    .line 103
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->actionDetails:Lcom/amazon/devicesetupservice/scap/v1/ActionDetails;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/scap/v1/Event;->actionDetails:Lcom/amazon/devicesetupservice/scap/v1/ActionDetails;

    .line 104
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->bleParameters:Lcom/amazon/devicesetupservice/scap/v1/BleEventParameters;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/scap/v1/Event;->bleParameters:Lcom/amazon/devicesetupservice/scap/v1/BleEventParameters;

    .line 105
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->cblToken:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/scap/v1/Event;->cblToken:Ljava/lang/String;

    .line 106
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->errorDetails:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/scap/v1/Event;->errorDetails:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    .line 107
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->sequenceNumber:I

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/amazon/devicesetupservice/scap/v1/Event;->sequenceNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->timestamp:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/scap/v1/Event;->timestamp:Ljava/lang/String;

    .line 109
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->type:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/scap/v1/Event;->type:Ljava/lang/String;

    .line 110
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getActionDetails()Lcom/amazon/devicesetupservice/scap/v1/ActionDetails;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->actionDetails:Lcom/amazon/devicesetupservice/scap/v1/ActionDetails;

    return-object v0
.end method

.method public getBleParameters()Lcom/amazon/devicesetupservice/scap/v1/BleEventParameters;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->bleParameters:Lcom/amazon/devicesetupservice/scap/v1/BleEventParameters;

    return-object v0
.end method

.method public getCblToken()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->cblToken:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorDetails()Lcom/amazon/devicesetup/common/v1/ErrorInfo;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->errorDetails:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->sequenceNumber:I

    return v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 81
    sget v1, Lcom/amazon/devicesetupservice/scap/v1/Event;->classNameHashCode:I

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->actionDetails:Lcom/amazon/devicesetupservice/scap/v1/ActionDetails;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->bleParameters:Lcom/amazon/devicesetupservice/scap/v1/BleEventParameters;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->cblToken:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->errorDetails:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->sequenceNumber:I

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->timestamp:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->type:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 81
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setActionDetails(Lcom/amazon/devicesetupservice/scap/v1/ActionDetails;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->actionDetails:Lcom/amazon/devicesetupservice/scap/v1/ActionDetails;

    return-void
.end method

.method public setBleParameters(Lcom/amazon/devicesetupservice/scap/v1/BleEventParameters;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->bleParameters:Lcom/amazon/devicesetupservice/scap/v1/BleEventParameters;

    return-void
.end method

.method public setCblToken(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->cblToken:Ljava/lang/String;

    return-void
.end method

.method public setErrorDetails(Lcom/amazon/devicesetup/common/v1/ErrorInfo;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->errorDetails:Lcom/amazon/devicesetup/common/v1/ErrorInfo;

    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->sequenceNumber:I

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/Event;->type:Ljava/lang/String;

    return-void
.end method
