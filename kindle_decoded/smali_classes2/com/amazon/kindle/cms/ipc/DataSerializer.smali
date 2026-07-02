.class final Lcom/amazon/kindle/cms/ipc/DataSerializer;
.super Ljava/lang/Object;
.source "DataSerializer.java"


# static fields
.field private static final FIELD_TYPE_BLOB:I = 0x5

.field private static final FIELD_TYPE_BOOLEAN:I = 0x3

.field private static final FIELD_TYPE_DOUBLE:I = 0x6

.field private static final FIELD_TYPE_FLOAT:I = 0x7

.field private static final FIELD_TYPE_INTEGER:I = 0x2

.field private static final FIELD_TYPE_LONG:I = 0x4

.field private static final FIELD_TYPE_STRING:I = 0x1


# direct methods
.method static readObject(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 47
    new-instance p0, Ljava/io/IOException;

    const-string v0, "invalid field type"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :pswitch_0
    invoke-interface {p0}, Ljava/io/DataInput;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    .line 39
    :pswitch_1
    invoke-interface {p0}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    .line 42
    :pswitch_2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 43
    new-array v0, v0, [B

    .line 44
    invoke-interface {p0, v0}, Ljava/io/DataInput;->readFully([B)V

    move-object p0, v0

    goto :goto_0

    .line 33
    :pswitch_3
    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    .line 30
    :pswitch_4
    invoke-interface {p0}, Ljava/io/DataInput;->readBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    .line 27
    :pswitch_5
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 24
    :pswitch_6
    invoke-interface {p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static writeObject(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 56
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 57
    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 61
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 62
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0

    .line 64
    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 66
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 67
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeBoolean(Z)V

    goto :goto_0

    .line 69
    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 71
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 72
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    goto :goto_0

    .line 74
    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    .line 76
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 77
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-interface {p1, p0}, Ljava/io/DataOutput;->writeFloat(F)V

    goto :goto_0

    .line 79
    :cond_4
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 81
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 82
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/DataOutput;->writeDouble(D)V

    goto :goto_0

    .line 84
    :cond_5
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    .line 86
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 87
    check-cast p0, [B

    array-length v0, p0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 88
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->write([B)V

    :goto_0
    return-void

    .line 92
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string/jumbo p1, "unsupported object type"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
