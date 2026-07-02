.class Lcom/audible/sdk/AudibleSDK$CovertArtInfoImpl;
.super Ljava/lang/Object;
.source "AudibleSDK.java"

# interfaces
.implements Lcom/audible/sdk/AudibleSDK$CoverArtInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/sdk/AudibleSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CovertArtInfoImpl"
.end annotation


# instance fields
.field private final length:J

.field private final offset:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput-wide p1, p0, Lcom/audible/sdk/AudibleSDK$CovertArtInfoImpl;->offset:J

    .line 461
    iput-wide p3, p0, Lcom/audible/sdk/AudibleSDK$CovertArtInfoImpl;->length:J

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    .line 471
    iget-wide v0, p0, Lcom/audible/sdk/AudibleSDK$CovertArtInfoImpl;->length:J

    return-wide v0
.end method

.method public getOffset()J
    .locals 2

    .line 466
    iget-wide v0, p0, Lcom/audible/sdk/AudibleSDK$CovertArtInfoImpl;->offset:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/audible/sdk/AudibleSDK$CovertArtInfoImpl;->offset:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " length="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/audible/sdk/AudibleSDK$CovertArtInfoImpl;->length:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
