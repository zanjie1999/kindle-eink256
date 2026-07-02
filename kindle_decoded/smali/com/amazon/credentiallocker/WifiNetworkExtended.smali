.class public Lcom/amazon/credentiallocker/WifiNetworkExtended;
.super Lcom/amazon/credentiallocker/WifiNetwork;
.source "WifiNetworkExtended.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private frequency:I

.field private lastConnectedDateUtcMillis:J

.field private priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.credentiallocker.WifiNetworkExtended"

    aput-object v2, v0, v1

    .line 36
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/credentiallocker/WifiNetworkExtended;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/amazon/credentiallocker/WifiNetwork;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 56
    instance-of v0, p1, Lcom/amazon/credentiallocker/WifiNetworkExtended;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 60
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/credentiallocker/WifiNetworkExtended;

    .line 63
    invoke-super {p0, p1}, Lcom/amazon/credentiallocker/WifiNetwork;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amazon/credentiallocker/WifiNetworkExtended;->frequency:I

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v2, v0, Lcom/amazon/credentiallocker/WifiNetworkExtended;->frequency:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v2, p0, Lcom/amazon/credentiallocker/WifiNetworkExtended;->lastConnectedDateUtcMillis:J

    .line 65
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-wide v2, v0, Lcom/amazon/credentiallocker/WifiNetworkExtended;->lastConnectedDateUtcMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amazon/credentiallocker/WifiNetworkExtended;->priority:I

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v0, v0, Lcom/amazon/credentiallocker/WifiNetworkExtended;->priority:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getPriority()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/amazon/credentiallocker/WifiNetworkExtended;->priority:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    invoke-super {p0}, Lcom/amazon/credentiallocker/WifiNetwork;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/credentiallocker/WifiNetworkExtended;->classNameHashCode:I

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/credentiallocker/WifiNetworkExtended;->frequency:I

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/credentiallocker/WifiNetworkExtended;->lastConnectedDateUtcMillis:J

    .line 47
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/credentiallocker/WifiNetworkExtended;->priority:I

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 43
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setPriority(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/amazon/credentiallocker/WifiNetworkExtended;->priority:I

    return-void
.end method
