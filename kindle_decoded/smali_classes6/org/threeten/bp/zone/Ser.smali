.class final Lorg/threeten/bp/zone/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = -0x7b4f011483e5ac42L


# instance fields
.field private object:Ljava/lang/Object;

.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-byte p1, p0, Lorg/threeten/bp/zone/Ser;->type:B

    .line 86
    iput-object p2, p0, Lorg/threeten/bp/zone/Ser;->object:Ljava/lang/Object;

    return-void
.end method

.method static read(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 132
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    .line 133
    invoke-static {v0, p0}, Lorg/threeten/bp/zone/Ser;->readInternal(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static readEpochSec(Ljava/io/DataInput;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 217
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    return-wide v0

    .line 219
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    and-int/2addr v2, v1

    .line 220
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result p0

    and-int/2addr p0, v1

    shl-int/lit8 v0, v0, 0x10

    shl-int/lit8 v1, v2, 0x8

    add-int/2addr v0, v1

    add-int/2addr v0, p0

    int-to-long v0, v0

    const-wide/16 v2, 0x384

    mul-long v0, v0, v2

    const-wide v2, 0x110bc5000L

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static readInternal(BLjava/io/DataInput;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 143
    invoke-static {p1}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    move-result-object p0

    return-object p0

    .line 145
    :cond_0
    new-instance p0, Ljava/io/StreamCorruptedException;

    const-string p1, "Unknown serialized type"

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_1
    invoke-static {p1}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/zone/ZoneOffsetTransition;

    move-result-object p0

    return-object p0

    .line 139
    :cond_2
    invoke-static {p1}, Lorg/threeten/bp/zone/StandardZoneRules;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/zone/StandardZoneRules;

    move-result-object p0

    return-object p0
.end method

.method static readOffset(Ljava/io/DataInput;)Lorg/threeten/bp/ZoneOffset;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 184
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-static {p0}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object p0

    goto :goto_0

    :cond_0
    mul-int/lit16 v0, v0, 0x384

    invoke-static {v0}, Lorg/threeten/bp/ZoneOffset;->ofTotalSeconds(I)Lorg/threeten/bp/ZoneOffset;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/threeten/bp/zone/Ser;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static writeEpochSec(JLjava/io/DataOutput;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xff

    const-wide v1, -0x110bc5000L

    cmp-long v3, p0, v1

    if-ltz v3, :cond_0

    const-wide v1, 0x26cb5db00L

    cmp-long v3, p0, v1

    if-gez v3, :cond_0

    const-wide/16 v1, 0x384

    .line 196
    rem-long v3, p0, v1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    const-wide v3, 0x110bc5000L

    add-long/2addr p0, v3

    .line 197
    div-long/2addr p0, v1

    long-to-int p1, p0

    ushr-int/lit8 p0, p1, 0x10

    and-int/2addr p0, v0

    .line 198
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    ushr-int/lit8 p0, p1, 0x8

    and-int/2addr p0, v0

    .line 199
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    and-int/lit16 p0, p1, 0xff

    .line 200
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 203
    invoke-interface {p2, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    :goto_0
    return-void
.end method

.method private static writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 113
    check-cast p1, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/zone/ZoneOffsetTransitionRule;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 116
    :cond_0
    new-instance p0, Ljava/io/InvalidClassException;

    const-string p1, "Unknown serialized type"

    invoke-direct {p0, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 110
    :cond_1
    check-cast p1, Lorg/threeten/bp/zone/ZoneOffsetTransition;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/zone/ZoneOffsetTransition;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 107
    :cond_2
    check-cast p1, Lorg/threeten/bp/zone/StandardZoneRules;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/zone/StandardZoneRules;->writeExternal(Ljava/io/DataOutput;)V

    :goto_0
    return-void
.end method

.method static writeOffset(Lorg/threeten/bp/ZoneOffset;Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0}, Lorg/threeten/bp/ZoneOffset;->getTotalSeconds()I

    move-result p0

    .line 168
    rem-int/lit16 v0, p0, 0x384

    const/16 v1, 0x7f

    if-nez v0, :cond_0

    div-int/lit16 v0, p0, 0x384

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    .line 169
    :goto_0
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    if-ne v0, v1, :cond_1

    .line 171
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 127
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/threeten/bp/zone/Ser;->type:B

    .line 128
    invoke-static {v0, p1}, Lorg/threeten/bp/zone/Ser;->readInternal(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/threeten/bp/zone/Ser;->object:Ljava/lang/Object;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-byte v0, p0, Lorg/threeten/bp/zone/Ser;->type:B

    iget-object v1, p0, Lorg/threeten/bp/zone/Ser;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lorg/threeten/bp/zone/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V

    return-void
.end method
