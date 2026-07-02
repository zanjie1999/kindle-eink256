.class public Lcom/audible/mobile/player/exception/PlayerException;
.super Ljava/lang/Exception;
.source "PlayerException.java"


# instance fields
.field private final asin:Lcom/audible/mobile/domain/Asin;

.field private final audioDataSourceType:Lcom/audible/mobile/player/AudioDataSourceType;

.field private final error:Ljava/lang/String;

.field private final errorCode:I

.field private final estimatedNetworkSpeed:J

.field private final legacyDetailMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/domain/Asin;Lcom/audible/mobile/player/AudioDataSourceType;JLjava/lang/Exception;)V
    .locals 1

    .line 47
    invoke-virtual {p7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p7}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p7

    invoke-direct {p0, v0, p7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    iput-object p1, p0, Lcom/audible/mobile/player/exception/PlayerException;->error:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 49
    sget-object p3, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    :cond_0
    iput-object p3, p0, Lcom/audible/mobile/player/exception/PlayerException;->asin:Lcom/audible/mobile/domain/Asin;

    .line 50
    iput-object p4, p0, Lcom/audible/mobile/player/exception/PlayerException;->audioDataSourceType:Lcom/audible/mobile/player/AudioDataSourceType;

    .line 51
    iput-wide p5, p0, Lcom/audible/mobile/player/exception/PlayerException;->estimatedNetworkSpeed:J

    .line 52
    iput-object p2, p0, Lcom/audible/mobile/player/exception/PlayerException;->legacyDetailMessage:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/audible/mobile/player/exception/PlayerErrors;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/exception/PlayerErrors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/audible/mobile/player/exception/PlayerErrors;->getId()I

    move-result p1

    iput p1, p0, Lcom/audible/mobile/player/exception/PlayerException;->errorCode:I

    return-void
.end method


# virtual methods
.method public getAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/audible/mobile/player/exception/PlayerException;->asin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getAudioDataSourceType()Lcom/audible/mobile/player/AudioDataSourceType;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/audible/mobile/player/exception/PlayerException;->audioDataSourceType:Lcom/audible/mobile/player/AudioDataSourceType;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/audible/mobile/player/exception/PlayerException;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/audible/mobile/player/exception/PlayerException;->errorCode:I

    return v0
.end method

.method public getEstimatedNetworkSpeed()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/audible/mobile/player/exception/PlayerException;->estimatedNetworkSpeed:J

    return-wide v0
.end method

.method public getLegacyDetailMessage()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/audible/mobile/player/exception/PlayerException;->legacyDetailMessage:Ljava/lang/String;

    return-object v0
.end method
