.class final Lorg/threeten/bp/chrono/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = 0x6d0b833274ca0096L


# instance fields
.field private object:Ljava/lang/Object;

.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-byte p1, p0, Lorg/threeten/bp/chrono/Ser;->type:B

    .line 104
    iput-object p2, p0, Lorg/threeten/bp/chrono/Ser;->object:Ljava/lang/Object;

    return-void
.end method

.method private static readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    .line 190
    :pswitch_0
    new-instance p0, Ljava/io/StreamCorruptedException;

    const-string p1, "Unknown serialized type"

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :pswitch_1
    invoke-static {p1}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->readExternal(Ljava/io/ObjectInput;)Lorg/threeten/bp/chrono/ChronoZonedDateTime;

    move-result-object p0

    return-object p0

    .line 187
    :pswitch_2
    invoke-static {p1}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->readExternal(Ljava/io/ObjectInput;)Lorg/threeten/bp/chrono/ChronoLocalDateTime;

    move-result-object p0

    return-object p0

    .line 186
    :pswitch_3
    invoke-static {p1}, Lorg/threeten/bp/chrono/Chronology;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/Chronology;

    move-result-object p0

    return-object p0

    .line 185
    :pswitch_4
    invoke-static {p1}, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    move-result-object p0

    return-object p0

    .line 184
    :pswitch_5
    invoke-static {p1}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object p0

    return-object p0

    .line 183
    :pswitch_6
    invoke-static {p1}, Lorg/threeten/bp/chrono/MinguoEra;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/MinguoEra;

    move-result-object p0

    return-object p0

    .line 182
    :pswitch_7
    invoke-static {p1}, Lorg/threeten/bp/chrono/MinguoDate;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object p0

    return-object p0

    .line 181
    :pswitch_8
    invoke-static {p1}, Lorg/threeten/bp/chrono/HijrahEra;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/HijrahEra;

    move-result-object p0

    return-object p0

    .line 180
    :pswitch_9
    invoke-static {p1}, Lorg/threeten/bp/chrono/HijrahDate;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object p0

    return-object p0

    .line 179
    :pswitch_a
    invoke-static {p1}, Lorg/threeten/bp/chrono/JapaneseEra;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/JapaneseEra;

    move-result-object p0

    return-object p0

    .line 178
    :pswitch_b
    invoke-static {p1}, Lorg/threeten/bp/chrono/JapaneseDate;->readExternal(Ljava/io/DataInput;)Lorg/threeten/bp/chrono/ChronoLocalDate;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/threeten/bp/chrono/Ser;->object:Ljava/lang/Object;

    return-object v0
.end method

.method private static writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-interface {p2, p0}, Ljava/io/ObjectOutput;->writeByte(I)V

    packed-switch p0, :pswitch_data_0

    .line 155
    :pswitch_0
    new-instance p0, Ljava/io/InvalidClassException;

    const-string p1, "Unknown serialized type"

    invoke-direct {p0, p1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 152
    :pswitch_1
    check-cast p1, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/ChronoZonedDateTimeImpl;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 149
    :pswitch_2
    check-cast p1, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/ChronoLocalDateTimeImpl;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 146
    :pswitch_3
    check-cast p1, Lorg/threeten/bp/chrono/Chronology;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/Chronology;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 143
    :pswitch_4
    check-cast p1, Lorg/threeten/bp/chrono/ThaiBuddhistEra;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/ThaiBuddhistEra;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 140
    :pswitch_5
    check-cast p1, Lorg/threeten/bp/chrono/ThaiBuddhistDate;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/ThaiBuddhistDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 137
    :pswitch_6
    check-cast p1, Lorg/threeten/bp/chrono/MinguoEra;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/MinguoEra;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 134
    :pswitch_7
    check-cast p1, Lorg/threeten/bp/chrono/MinguoDate;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/MinguoDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 131
    :pswitch_8
    check-cast p1, Lorg/threeten/bp/chrono/HijrahEra;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/HijrahEra;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 128
    :pswitch_9
    check-cast p1, Lorg/threeten/bp/chrono/HijrahDate;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/HijrahDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 125
    :pswitch_a
    check-cast p1, Lorg/threeten/bp/chrono/JapaneseEra;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/JapaneseEra;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_0

    .line 122
    :pswitch_b
    check-cast p1, Lorg/threeten/bp/chrono/JapaneseDate;

    invoke-virtual {p1, p2}, Lorg/threeten/bp/chrono/JapaneseDate;->writeExternal(Ljava/io/DataOutput;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
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

    .line 167
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/threeten/bp/chrono/Ser;->type:B

    .line 168
    invoke-static {v0, p1}, Lorg/threeten/bp/chrono/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/threeten/bp/chrono/Ser;->object:Ljava/lang/Object;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-byte v0, p0, Lorg/threeten/bp/chrono/Ser;->type:B

    iget-object v1, p0, Lorg/threeten/bp/chrono/Ser;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lorg/threeten/bp/chrono/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V

    return-void
.end method
