.class public Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;
.super Ljava/lang/Object;
.source "WeblabSessionConfigurationFetcher.java"


# static fields
.field private static final ACCOUNT_ID_PREFIX:Ljava/lang/String; = "amzn1.account."

.field private static final BYTE_ARRAY_SIZE:I = 0x10

.field private static final DEFAULT_PFM:Ljava/lang/String;

.field private static final RADIX:I = 0x24

.field private static final SESSION_ID_FIRST_HYPHEN_INDEX:I = 0x3

.field private static final SESSION_ID_KEY:Ljava/lang/String; = "session-id"

.field private static final SESSION_ID_LENGTH:I = 0x11

.field private static final SESSION_ID_SECOND_HYPHEN_INDEX:I = 0xb

.field private static final SESSION_PPREFS:Ljava/lang/String; = "sessionPrefs"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.mobileweblab.WeblabSessionConfigurationFetcher"

.field private static isNewSessionIdAlgorithmEnabled:Z = true


# instance fields
.field private final authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;->DEFAULT_PFM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IAuthenticationManager;Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 49
    iput-object p2, p0, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;->context:Landroid/content/Context;

    return-void
.end method

.method private createSessionIdFromInteger(Ljava/math/BigInteger;)Ljava/lang/String;
    .locals 4

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "%017d"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v1, 0x11

    if-le p1, v1, :cond_0

    sub-int/2addr p1, v1

    .line 130
    invoke-virtual {v0, v3, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p1, 0x3

    const/16 v1, 0x2d

    .line 132
    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/16 p1, 0xb

    .line 133
    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAnonymousSessionId()Ljava/lang/String;
    .locals 6

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;->context:Landroid/content/Context;

    const-string v1, "sessionPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "session-id"

    const/4 v2, 0x0

    .line 110
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    .line 114
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 115
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 116
    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 117
    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 118
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {p0, v2}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;->createSessionIdFromInteger(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v2
.end method

.method private getSessionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 70
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    sget-boolean v0, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;->isNewSessionIdAlgorithmEnabled:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;->generateSessionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "\\."

    const-string v1, ""

    .line 76
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x24

    invoke-direct {v0, p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;->createSessionIdFromInteger(Ljava/math/BigInteger;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;->getAnonymousSessionId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private guessMarketplaceIdFromLocale()Ljava/lang/String;
    .locals 6

    .line 139
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {}, Lcom/amazon/kcp/application/Marketplace;->values()[Lcom/amazon/kcp/application/Marketplace;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 141
    invoke-virtual {v4}, Lcom/amazon/kcp/application/Marketplace;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    invoke-virtual {v4}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 145
    :cond_1
    sget-object v0, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;->DEFAULT_PFM:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public fetchSessionConfiguration()Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 55
    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;->guessMarketplaceIdFromLocale()Ljava/lang/String;

    move-result-object v0

    .line 56
    :goto_0
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return-object v2

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 60
    :cond_2
    invoke-direct {p0, v2}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfigurationFetcher;->getSessionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    new-instance v3, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;

    invoke-direct {v3, v1, v0, v2}, Lcom/amazon/kindle/mobileweblab/WeblabSessionConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method generateSessionId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "amzn1.account."

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "[^A-Za-z0-9]"

    const-string v1, ""

    .line 97
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 98
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x24

    invoke-direct {v0, p1, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0xa

    .line 99
    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "00000000000000000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    rsub-int/lit8 v1, v1, 0x11

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1, v2, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x3

    const/16 v1, 0x2d

    .line 102
    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/16 p1, 0xb

    .line 103
    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/16 p1, 0x13

    .line 104
    invoke-virtual {v0, v3, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
