.class public final Lorg/threeten/bp/zone/ZoneOffsetTransition;
.super Ljava/lang/Object;
.source "ZoneOffsetTransition.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/threeten/bp/zone/ZoneOffsetTransition;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x60654e82b3c68362L


# instance fields
.field private final offsetAfter:Lorg/threeten/bp/ZoneOffset;

.field private final offsetBefore:Lorg/threeten/bp/ZoneOffset;

.field private final transition:Lorg/threeten/bp/LocalDateTime;


# direct methods
.method constructor <init>(JLorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 135
    invoke-static {p1, p2, v0, p3}, Lorg/threeten/bp/LocalDateTime;->ofEpochSecond(JILorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/LocalDateTime;

    move-result-object p1

    iput-object p1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    .line 136
    iput-object p3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    .line 137
    iput-object p4, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    return-void
.end method

.method constructor <init>(Lorg/threeten/bp/LocalDateTime;Lorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    .line 123
    iput-object p2, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    .line 124
    iput-object p3, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    return-void
.end method

.method private getDurationSeconds()I
    .locals 2

    .line 276
    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/zone/ZoneOffsetTransition;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    invoke-static {p0}, Lorg/threeten/bp/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v0

    .line 171
    invoke-static {p0}, Lorg/threeten/bp/zone/Ser;->readOffset(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;

    move-result-object v2

    .line 172
    invoke-static {p0}, Lorg/threeten/bp/zone/Ser;->readOffset(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;

    move-result-object p0

    .line 173
    invoke-virtual {v2, p0}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    new-instance v3, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    invoke-direct {v3, v0, v1, v2, p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;-><init>(JLorg/threeten/bp/ZoneOffset;Lorg/threeten/bp/ZoneOffset;)V

    return-object v3

    .line 174
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Offsets must not be equal"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 147
    new-instance v0, Lorg/threeten/bp/zone/Ser;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/threeten/bp/zone/Ser;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 66
    check-cast p1, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    invoke-virtual {p0, p1}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->compareTo(Lorg/threeten/bp/zone/ZoneOffsetTransition;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/threeten/bp/zone/ZoneOffsetTransition;)I
    .locals 1

    .line 345
    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getInstant()Lorg/threeten/bp/Instant;

    move-result-object v0

    invoke-virtual {p1}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getInstant()Lorg/threeten/bp/Instant;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/threeten/bp/Instant;->compareTo(Lorg/threeten/bp/Instant;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 362
    :cond_0
    instance-of v1, p1, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 363
    check-cast p1, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    .line 364
    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    iget-object v3, p1, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v1, v3}, Lorg/threeten/bp/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    iget-object v3, p1, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    .line 365
    invoke-virtual {v1, v3}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    iget-object p1, p1, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1, p1}, Lorg/threeten/bp/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getDateTimeAfter()Lorg/threeten/bp/LocalDateTime;
    .locals 3

    .line 232
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    invoke-direct {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDurationSeconds()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/threeten/bp/LocalDateTime;->plusSeconds(J)Lorg/threeten/bp/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeBefore()Lorg/threeten/bp/LocalDateTime;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    return-object v0
.end method

.method public getDuration()Lorg/threeten/bp/Duration;
    .locals 2

    .line 267
    invoke-direct {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getDurationSeconds()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/threeten/bp/Duration;->ofSeconds(J)Lorg/threeten/bp/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getInstant()Lorg/threeten/bp/Instant;
    .locals 2

    .line 192
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toInstant(Lorg/threeten/bp/ZoneOffset;)Lorg/threeten/bp/Instant;

    move-result-object v0

    return-object v0
.end method

.method public getOffsetAfter()Lorg/threeten/bp/ZoneOffset;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method public getOffsetBefore()Lorg/threeten/bp/ZoneOffset;
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    return-object v0
.end method

.method getValidOffsets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/threeten/bp/ZoneOffset;",
            ">;"
        }
    .end annotation

    .line 327
    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/threeten/bp/ZoneOffset;

    const/4 v1, 0x0

    .line 330
    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 377
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    invoke-virtual {v0}, Lorg/threeten/bp/LocalDateTime;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isGap()Z
    .locals 2

    .line 289
    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetAfter()Lorg/threeten/bp/ZoneOffset;

    move-result-object v0

    invoke-virtual {v0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->getOffsetBefore()Lorg/threeten/bp/ZoneOffset;

    move-result-object v1

    invoke-virtual {v1}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toEpochSecond()J
    .locals 2

    .line 201
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    invoke-virtual {v0, v1}, Lorg/threeten/bp/chrono/ChronoLocalDateTime;->toEpochSecond(Lorg/threeten/bp/ZoneOffset;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transition["

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Gap"

    goto :goto_0

    :cond_0
    const-string v1, "Overlap"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->transition:Lorg/threeten/bp/LocalDateTime;

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/threeten/bp/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    .line 158
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetBefore:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0, p1}, Lorg/threeten/bp/zone/Ser;->writeOffset(Lorg/threeten/bp/ZoneOffset;Ljava/io/DataOutput;)V

    .line 159
    iget-object v0, p0, Lorg/threeten/bp/zone/ZoneOffsetTransition;->offsetAfter:Lorg/threeten/bp/ZoneOffset;

    invoke-static {v0, p1}, Lorg/threeten/bp/zone/Ser;->writeOffset(Lorg/threeten/bp/ZoneOffset;Ljava/io/DataOutput;)V

    return-void
.end method
