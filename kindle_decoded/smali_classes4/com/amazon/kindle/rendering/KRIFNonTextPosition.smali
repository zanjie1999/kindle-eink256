.class public Lcom/amazon/kindle/rendering/KRIFNonTextPosition;
.super Lcom/amazon/kindle/model/Annotations/AbstractPosition;
.source "KRIFNonTextPosition.java"

# interfaces
.implements Lcom/amazon/kindle/rendering/IKRIFPlatformPosition;
.implements Lcom/amazon/kindle/model/Annotations/ICanInterpretLongPosition;


# instance fields
.field protected final platformPosition:Lcom/amazon/krf/platform/Position;


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/Position;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/kindle/model/Annotations/AbstractPosition;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFNonTextPosition;->platformPosition:Lcom/amazon/krf/platform/Position;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/kindle/krx/reader/IPosition;)I
    .locals 1

    .line 25
    instance-of v0, p1, Lcom/amazon/kindle/rendering/KRIFNonTextPosition;

    if-eqz v0, :cond_0

    .line 26
    check-cast p1, Lcom/amazon/kindle/rendering/KRIFNonTextPosition;

    .line 27
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFNonTextPosition;->getPlatformPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFNonTextPosition;->getPlatformPosition()Lcom/amazon/krf/platform/Position;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 29
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kindle/model/Annotations/AbstractPosition;->compareTo(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/rendering/KRIFNonTextPosition;->compareTo(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p1

    return p1
.end method

.method public getIntPosition()I
    .locals 2

    .line 35
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFNonTextPosition;->getPlatformPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getLongPosition()Ljava/lang/String;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFNonTextPosition;->getPlatformPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformPosition()Lcom/amazon/krf/platform/Position;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFNonTextPosition;->platformPosition:Lcom/amazon/krf/platform/Position;

    return-object v0
.end method

.method public toSerializableString()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFNonTextPosition;->getPlatformPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Position;->getLongPosition()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
