.class public Lcom/amazon/devicesetupservice/scap/v1/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private blacklistParameters:Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;

.field private bleConnectionPriority:Ljava/lang/String;

.field private bleParameters:Lcom/amazon/devicesetupservice/scap/v1/BleParameters;

.field private credentialData:Lcom/amazon/devicesetupservice/scap/v1/SmartHomeCredentialData;

.field private scanFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/scap/v1/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private sequenceNumber:I

.field private timeout:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private useChunking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.scap.v1.Action"

    aput-object v2, v0, v1

    .line 92
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/scap/v1/Action;->classNameHashCode:I

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

    .line 117
    instance-of v0, p1, Lcom/amazon/devicesetupservice/scap/v1/Action;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 121
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/scap/v1/Action;

    .line 123
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->blacklistParameters:Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/scap/v1/Action;->blacklistParameters:Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;

    .line 124
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->bleConnectionPriority:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/scap/v1/Action;->bleConnectionPriority:Ljava/lang/String;

    .line 125
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->bleParameters:Lcom/amazon/devicesetupservice/scap/v1/BleParameters;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/scap/v1/Action;->bleParameters:Lcom/amazon/devicesetupservice/scap/v1/BleParameters;

    .line 126
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->credentialData:Lcom/amazon/devicesetupservice/scap/v1/SmartHomeCredentialData;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/scap/v1/Action;->credentialData:Lcom/amazon/devicesetupservice/scap/v1/SmartHomeCredentialData;

    .line 127
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->scanFilters:Ljava/util/List;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/scap/v1/Action;->scanFilters:Ljava/util/List;

    .line 128
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->sequenceNumber:I

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/amazon/devicesetupservice/scap/v1/Action;->sequenceNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->timeout:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/scap/v1/Action;->timeout:Ljava/lang/String;

    .line 130
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->type:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/scap/v1/Action;->type:Ljava/lang/String;

    .line 131
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->useChunking:Z

    .line 132
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean p1, p1, Lcom/amazon/devicesetupservice/scap/v1/Action;->useChunking:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getBlacklistParameters()Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->blacklistParameters:Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;

    return-object v0
.end method

.method public getBleConnectionPriority()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->bleConnectionPriority:Ljava/lang/String;

    return-object v0
.end method

.method public getBleParameters()Lcom/amazon/devicesetupservice/scap/v1/BleParameters;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->bleParameters:Lcom/amazon/devicesetupservice/scap/v1/BleParameters;

    return-object v0
.end method

.method public getCredentialData()Lcom/amazon/devicesetupservice/scap/v1/SmartHomeCredentialData;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->credentialData:Lcom/amazon/devicesetupservice/scap/v1/SmartHomeCredentialData;

    return-object v0
.end method

.method public getScanFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/scap/v1/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->scanFilters:Ljava/util/List;

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->sequenceNumber:I

    return v0
.end method

.method public getTimeout()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->timeout:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 99
    sget v1, Lcom/amazon/devicesetupservice/scap/v1/Action;->classNameHashCode:I

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->blacklistParameters:Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->bleConnectionPriority:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->bleParameters:Lcom/amazon/devicesetupservice/scap/v1/BleParameters;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->credentialData:Lcom/amazon/devicesetupservice/scap/v1/SmartHomeCredentialData;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->scanFilters:Ljava/util/List;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->sequenceNumber:I

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->timeout:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->type:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->useChunking:Z

    .line 109
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 99
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isUseChunking()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->useChunking:Z

    return v0
.end method

.method public setBlacklistParameters(Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->blacklistParameters:Lcom/amazon/devicesetupservice/scap/v1/BlacklistParameters;

    return-void
.end method

.method public setBleConnectionPriority(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->bleConnectionPriority:Ljava/lang/String;

    return-void
.end method

.method public setBleParameters(Lcom/amazon/devicesetupservice/scap/v1/BleParameters;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->bleParameters:Lcom/amazon/devicesetupservice/scap/v1/BleParameters;

    return-void
.end method

.method public setCredentialData(Lcom/amazon/devicesetupservice/scap/v1/SmartHomeCredentialData;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->credentialData:Lcom/amazon/devicesetupservice/scap/v1/SmartHomeCredentialData;

    return-void
.end method

.method public setScanFilters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/scap/v1/ScanFilter;",
            ">;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->scanFilters:Ljava/util/List;

    return-void
.end method

.method public setSequenceNumber(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->sequenceNumber:I

    return-void
.end method

.method public setTimeout(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->timeout:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->type:Ljava/lang/String;

    return-void
.end method

.method public setUseChunking(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/amazon/devicesetupservice/scap/v1/Action;->useChunking:Z

    return-void
.end method
