.class public Lamazon/whispersync/communication/identity/ServiceIdentity;
.super Lamazon/whispersync/communication/identity/EndpointIdentity;
.source "ServiceIdentity.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ":"

.field private static final DOMAIN:Ljava/lang/String; = "domain"

.field private static final HOSTNAME:Ljava/lang/String; = "hostname"

.field private static final PORT:Ljava/lang/String; = "port"

.field private static final REALM:Ljava/lang/String; = "realm"

.field private static final SERVICE_HEADER:Ljava/lang/String; = "urn:tcomm-endpoint:service"

.field private static final SERVICE_NAME:Ljava/lang/String; = "serviceName"

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private mDomain:Ljava/lang/String;

.field private mHostname:Ljava/lang/String;

.field private mPort:Ljava/lang/Integer;

.field private mRealm:Ljava/lang/String;

.field private final mServiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "TComm.ServiceIdentity"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lamazon/whispersync/communication/identity/ServiceIdentity;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 80
    invoke-direct {p0}, Lamazon/whispersync/communication/identity/EndpointIdentity;-><init>()V

    .line 82
    invoke-static {p1}, Lamazon/whispersync/communication/identity/ServiceIdentity;->matchesUrn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, ":"

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    array-length v1, v0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_b

    .line 93
    array-length v1, v0

    const/4 v3, 0x2

    rem-int/2addr v1, v3

    if-eqz v1, :cond_a

    const/4 v1, 0x3

    .line 97
    aget-object v1, v0, v1

    const-string/jumbo v4, "serviceName"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x4

    .line 102
    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mServiceName:Ljava/lang/String;

    const-string v4, ""

    .line 103
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 107
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_7

    .line 108
    aget-object v1, v0, v2

    const-string v5, "domain"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v2, 0x1

    .line 110
    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mDomain:Ljava/lang/String;

    .line 111
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "domain field is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 114
    :cond_1
    aget-object v1, v0, v2

    const-string/jumbo v5, "realm"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    .line 115
    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mRealm:Ljava/lang/String;

    .line 116
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 117
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "realm field is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_3
    aget-object v1, v0, v2

    const-string v5, "hostname"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v1, v2, 0x1

    .line 120
    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mHostname:Ljava/lang/String;

    .line 121
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 122
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hostname field is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_5
    aget-object v1, v0, v2

    const-string/jumbo v5, "port"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    add-int/lit8 v1, v2, 0x1

    .line 126
    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mPort:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 128
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid port field, expecting integer. urn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_6
    sget-object v1, Lamazon/whispersync/communication/identity/ServiceIdentity;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "field"

    aput-object v7, v5, v6

    aget-object v6, v0, v2

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "ServiceIdentity(urn)"

    const-string/jumbo v7, "unexpected field"

    invoke-virtual {v1, v6, v7, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    :cond_7
    return-void

    .line 104
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "serviceName field is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting first field in urn to be serviceName, urn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting odd number of fields in service urn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too few fields in service urn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceIdentity urn is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lamazon/whispersync/communication/identity/EndpointIdentity;-><init>()V

    if-eqz p1, :cond_6

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 67
    iput-object p1, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mServiceName:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p2, p1

    :cond_0
    iput-object p2, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mDomain:Ljava/lang/String;

    if-eqz p3, :cond_1

    .line 69
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    move-object p3, p1

    :cond_1
    iput-object p3, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mRealm:Ljava/lang/String;

    if-eqz p4, :cond_2

    .line 70
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    move-object p4, p1

    :cond_2
    iput-object p4, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mHostname:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mPort:Ljava/lang/Integer;

    if-nez p4, :cond_3

    if-eqz p5, :cond_4

    .line 74
    :cond_3
    iget-object p1, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mHostname:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mPort:Ljava/lang/Integer;

    if-eqz p1, :cond_5

    :cond_4
    return-void

    .line 75
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both hostname and port must be specified together"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ServiceName cannot be null when constructing ServiceIdentity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static matchesUrn(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string/jumbo v0, "urn:tcomm-endpoint:service"

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mHostname:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/Integer;
    .locals 1

    .line 174
    iget-object v0, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mRealm:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lamazon/whispersync/communication/identity/EndpointIdentity$Type;
    .locals 1

    .line 139
    sget-object v0, Lamazon/whispersync/communication/identity/EndpointIdentity$Type;->SERVICE:Lamazon/whispersync/communication/identity/EndpointIdentity$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 190
    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/ServiceIdentity;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x27

    add-int/2addr v1, v0

    .line 192
    iget-object v0, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mDomain:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 193
    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/ServiceIdentity;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 195
    :cond_0
    iget-object v0, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mRealm:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    .line 196
    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/ServiceIdentity;->getRealm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 198
    :cond_1
    iget-object v0, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mHostname:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mPort:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    .line 199
    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/ServiceIdentity;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/ServiceIdentity;->getPort()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 203
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "urn:tcomm-endpoint:service"

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "serviceName"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/ServiceIdentity;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-object v2, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mDomain:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "domain"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/ServiceIdentity;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_3
    iget-object v2, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mRealm:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "realm"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/ServiceIdentity;->getRealm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_4
    iget-object v2, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mHostname:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lamazon/whispersync/communication/identity/ServiceIdentity;->mPort:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "hostname"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/ServiceIdentity;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "port"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lamazon/whispersync/communication/identity/ServiceIdentity;->getPort()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
