.class public Lcom/amazon/devicesetupservice/v1/WifiConfiguration;
.super Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;
.source "WifiConfiguration.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private credentialConfiguration:Lcom/amazon/devicesetupservice/v1/CredentialConfiguration;

.field private frequency:I

.field private lastConnectedDateUtcMillis:J

.field private priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.v1.WifiConfiguration"

    aput-object v2, v0, v1

    .line 45
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 66
    instance-of v0, p1, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 70
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;

    .line 73
    invoke-super {p0, p1}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->credentialConfiguration:Lcom/amazon/devicesetupservice/v1/CredentialConfiguration;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->credentialConfiguration:Lcom/amazon/devicesetupservice/v1/CredentialConfiguration;

    .line 74
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->frequency:I

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v2, v0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->frequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v2, p0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->lastConnectedDateUtcMillis:J

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-wide v2, v0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->lastConnectedDateUtcMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->priority:I

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v0, v0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->priority:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCredentialConfiguration()Lcom/amazon/devicesetupservice/v1/CredentialConfiguration;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->credentialConfiguration:Lcom/amazon/devicesetupservice/v1/CredentialConfiguration;

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->frequency:I

    return v0
.end method

.method public getLastConnectedDateUtcMillis()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->lastConnectedDateUtcMillis:J

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->priority:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    invoke-super {p0}, Lcom/amazon/devicesetupservice/v1/WifiNetworkInfo;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->classNameHashCode:I

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->credentialConfiguration:Lcom/amazon/devicesetupservice/v1/CredentialConfiguration;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->frequency:I

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->lastConnectedDateUtcMillis:J

    .line 57
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->priority:I

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 52
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCredentialConfiguration(Lcom/amazon/devicesetupservice/v1/CredentialConfiguration;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->credentialConfiguration:Lcom/amazon/devicesetupservice/v1/CredentialConfiguration;

    return-void
.end method

.method public setFrequency(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->frequency:I

    return-void
.end method

.method public setLastConnectedDateUtcMillis(J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->lastConnectedDateUtcMillis:J

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/amazon/devicesetupservice/v1/WifiConfiguration;->priority:I

    return-void
.end method
