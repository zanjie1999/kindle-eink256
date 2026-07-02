.class public Lcom/audible/mobile/download/networking/CCDSServerResponse;
.super Lcom/audible/mobile/downloader/BaseServerResponse;
.source "CCDSServerResponse.java"


# static fields
.field private static final CODEC_KEY:Ljava/lang/String; = "codec="

.field private static final MESSAGE_TAGS:[[Ljava/lang/String;


# instance fields
.field private final codec:Lcom/audible/mobile/domain/Codec;

.field private final deviceType:Lcom/audible/mobile/identity/DeviceType;

.field private final urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "<message>"

    const-string v2, "</message>"

    .line 21
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "<Message>"

    const-string v2, "</Message>"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/audible/mobile/download/networking/CCDSServerResponse;->MESSAGE_TAGS:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/download/UrlResolutionStrategy;ILjava/util/Map;Lcom/audible/mobile/domain/Format;Lcom/audible/mobile/identity/DeviceType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/download/UrlResolutionStrategy;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/audible/mobile/domain/Format;",
            "Lcom/audible/mobile/identity/DeviceType;",
            "Z)V"
        }
    .end annotation

    .line 31
    invoke-virtual {p4}, Lcom/audible/mobile/domain/Format;->getCodec()Lcom/audible/mobile/domain/Codec;

    move-result-object v0

    invoke-static {v0, p6}, Lcom/audible/mobile/download/networking/CCDSServerResponse;->expectedContentType(Lcom/audible/mobile/domain/Codec;Z)Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, p2, p3, p6}, Lcom/audible/mobile/downloader/BaseServerResponse;-><init>(ILjava/util/Map;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p4}, Lcom/audible/mobile/domain/Format;->getCodec()Lcom/audible/mobile/domain/Codec;

    move-result-object p2

    iput-object p2, p0, Lcom/audible/mobile/download/networking/CCDSServerResponse;->codec:Lcom/audible/mobile/domain/Codec;

    .line 33
    iput-object p5, p0, Lcom/audible/mobile/download/networking/CCDSServerResponse;->deviceType:Lcom/audible/mobile/identity/DeviceType;

    .line 34
    iput-object p1, p0, Lcom/audible/mobile/download/networking/CCDSServerResponse;->urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;

    return-void
.end method

.method private static expectedContentType(Lcom/audible/mobile/domain/Codec;Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "audio/audible-sample"

    return-object p0

    .line 44
    :cond_0
    sget-object p1, Lcom/audible/mobile/domain/Codec;->mp332:Lcom/audible/mobile/domain/Codec;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "audio/audible"

    return-object p0

    :cond_1
    const-string p0, "audio/vnd.audible.aax"

    return-object p0
.end method

.method private swapCodecForFormat(Ljava/net/URL;)Ljava/net/URL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 84
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3f

    .line 86
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, "codec="

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x6

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/audible/mobile/download/networking/CCDSServerResponse;->codec:Lcom/audible/mobile/domain/Codec;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "&"

    .line 95
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&source=audible_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/audible/mobile/download/networking/CCDSServerResponse;->deviceType:Lcom/audible/mobile/identity/DeviceType;

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public parseServerErrorMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 113
    :cond_0
    sget-object v0, Lcom/audible/mobile/download/networking/CCDSServerResponse;->MESSAGE_TAGS:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 114
    aget-object v5, v4, v2

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_1

    .line 116
    aget-object v7, v4, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    const/4 v7, 0x1

    .line 117
    aget-object v7, v4, v7

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-le v4, v6, :cond_1

    .line 119
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public redirectTo()Ljava/net/URL;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 55
    invoke-super {p0}, Lcom/audible/mobile/downloader/BaseServerResponse;->redirectTo()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_0
    invoke-direct {p0, v0}, Lcom/audible/mobile/download/networking/CCDSServerResponse;->swapCodecForFormat(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/audible/mobile/download/networking/CCDSServerResponse;->urlResolutionStrategy:Lcom/audible/mobile/download/UrlResolutionStrategy;

    sget-object v3, Lcom/audible/mobile/download/ContentType;->Audiobook:Lcom/audible/mobile/download/ContentType;

    invoke-interface {v2, v3, v1}, Lcom/audible/mobile/download/UrlResolutionStrategy;->transform(Lcom/audible/mobile/download/ContentType;Ljava/net/URL;)Ljava/net/URL;

    move-result-object v1

    .line 64
    sget-object v2, Lcom/audible/mobile/downloader/BaseServerResponse;->logger:Lorg/slf4j/Logger;

    const-string v3, "CServerResponse.redirectTo: location_header {}; modified_location_url {}"

    invoke-interface {v2, v3, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
