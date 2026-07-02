.class public Lcom/amazon/rma/rs/encoding/MessageEncoderV3;
.super Ljava/lang/Object;
.source "MessageEncoderV3.java"

# interfaces
.implements Lcom/amazon/rma/rs/encoding/ExtendedMessageEncoder;


# static fields
.field public static final DATA_TYPE_BOOLEAN_LEADING_ZEROS:I = 0x1

.field public static final DATA_TYPE_INT_LEADING_ZEROS:I = 0x2

.field public static final DATA_TYPE_LONG_LEADING_ZEROS:I = 0x3

.field public static final DATA_TYPE_STRING_LEADING_ZEROS:I = 0x0

.field public static final ENCODING_VERSION:I = 0x3

.field public static final EVENT_TYPE_ACTION_LEADING_ZEROS:I = 0x1

.field public static final EVENT_TYPE_AUX_CONTENT_STATE_LEADING_ZEROS:I = 0xa

.field public static final EVENT_TYPE_CONSUME_CONTENT_POINT_LEADING_ZEROS:I = 0xb

.field public static final EVENT_TYPE_CONSUME_CONTENT_SPAN_LEADING_ZEROS:I = 0x3

.field public static final EVENT_TYPE_CONTENT_ACTION_LEADING_ZEROS:I = 0x9

.field public static final EVENT_TYPE_HIDE_CONTEXT_LEADING_ZEROS:I = 0x2

.field public static final EVENT_TYPE_METADATA_LEADING_ZEROS:I = 0x5

.field public static final EVENT_TYPE_OPEN_CONTENT_LEADING_ZEROS:I = 0xc

.field public static final EVENT_TYPE_OPEN_CONTEXT_LEADING_ZEROS:I = 0x4

.field public static final EVENT_TYPE_SETTING_STATE_BOOLEAN_LEADING_ZEROS:I = 0x6

.field public static final EVENT_TYPE_SETTING_STATE_NUMBER_LEADING_ZEROS:I = 0x7

.field public static final EVENT_TYPE_SETTING_STATE_STRING_LEADING_ZEROS:I = 0x8

.field public static final EVENT_TYPE_SHOW_CONTEXT_LEADING_ZEROS:I


# instance fields
.field private final actionIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

.field private final auxContentTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

.field private final bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

.field private final contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

.field private final finalStreamBuffer:Ljava/io/ByteArrayOutputStream;

.field private messageNum:J

.field private final metadataKeyStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

.field private final metadataValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

.field private numEvents:I

.field private final numberOut:Ljava/io/DataOutput;

.field private final numberStream:Ljava/io/ByteArrayOutputStream;

.field private final otherStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

.field private final pointTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

.field private previousPosition:I

.field private previousTimestampInTenthsOfSeconds:J

.field private final settingIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

.field private final settingValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

.field private final spanTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

.field private final stringListVersion:I

.field private final timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

.field private uuid:Lcom/amazon/rma/rs/encoding/UUID;


# direct methods
.method public constructor <init>(Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;Lcom/amazon/rma/rs/encoding/strings/StringLists;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/amazon/rma/rs/encoding/StringCollector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->otherStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 58
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1770

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->finalStreamBuffer:Ljava/io/ByteArrayOutputStream;

    .line 60
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberStream:Ljava/io/ByteArrayOutputStream;

    .line 61
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberStream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberOut:Ljava/io/DataOutput;

    .line 63
    new-instance v0, Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-direct {v0}, Lcom/amazon/rma/rs/encoding/BitPacker;-><init>()V

    iput-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    const-wide/16 v0, -0x1

    .line 65
    iput-wide v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->previousTimestampInTenthsOfSeconds:J

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->previousPosition:I

    .line 70
    invoke-static {}, Lcom/amazon/rma/rs/encoding/UUID;->randomUUID()Lcom/amazon/rma/rs/encoding/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->uuid:Lcom/amazon/rma/rs/encoding/UUID;

    .line 73
    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    .line 74
    iget p1, p2, Lcom/amazon/rma/rs/encoding/strings/StringLists;->version:I

    iput p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->stringListVersion:I

    .line 75
    new-instance p1, Lcom/amazon/rma/rs/encoding/StringCollector;

    iget-object v0, p2, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    const-string v1, "context"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 76
    new-instance p1, Lcom/amazon/rma/rs/encoding/StringCollector;

    iget-object v0, p2, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    const-string/jumbo v1, "pointType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->pointTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 78
    new-instance p1, Lcom/amazon/rma/rs/encoding/StringCollector;

    iget-object v0, p2, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    const-string/jumbo v1, "spanType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->spanTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 79
    new-instance p1, Lcom/amazon/rma/rs/encoding/StringCollector;

    iget-object v0, p2, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    const-string v1, "actionID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->actionIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 80
    new-instance p1, Lcom/amazon/rma/rs/encoding/StringCollector;

    iget-object v0, p2, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    const-string v1, "auxContentType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->auxContentTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 82
    new-instance p1, Lcom/amazon/rma/rs/encoding/StringCollector;

    iget-object v0, p2, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    const-string/jumbo v1, "settingID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->settingIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 84
    new-instance p1, Lcom/amazon/rma/rs/encoding/StringCollector;

    iget-object v0, p2, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    const-string/jumbo v1, "settingValue"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->settingValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 86
    new-instance p1, Lcom/amazon/rma/rs/encoding/StringCollector;

    iget-object v0, p2, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    const-string v1, "metadataKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->metadataKeyStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 88
    new-instance p1, Lcom/amazon/rma/rs/encoding/StringCollector;

    iget-object p2, p2, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    const-string v0, "metadataValue"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->metadataValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    return-void
.end method

.method private validateCommonData(JLjava/util/Map;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    if-eqz p3, :cond_2

    .line 556
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 557
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 558
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 559
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 560
    instance-of p3, p2, Ljava/lang/Integer;

    if-nez p3, :cond_0

    instance-of p3, p2, Ljava/lang/Long;

    if-nez p3, :cond_0

    instance-of p3, p2, Ljava/lang/Boolean;

    if-nez p3, :cond_0

    instance-of p3, p2, Ljava/lang/String;

    if-eqz p3, :cond_1

    goto :goto_0

    .line 562
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Unsupported type for metadata value: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ".  Only Integer, Long, Boolean, and String are supported."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void

    .line 553
    :cond_3
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Timestamps cannot be negative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private validateContext(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 571
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeCommonData(IJLjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 576
    iget v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numEvents:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numEvents:I

    .line 577
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {v0, p1}, Lcom/amazon/rma/rs/encoding/BitPacker;->addTrue(I)V

    .line 579
    invoke-static {p2, p3}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->timestampToTenthsOfSeconds(J)J

    move-result-wide p1

    .line 580
    iget-wide v2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->previousTimestampInTenthsOfSeconds:J

    const-wide/16 v4, -0x1

    const/4 p3, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p3}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V

    goto :goto_2

    .line 582
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {v0, v1}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V

    .line 583
    iget-wide v2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->previousTimestampInTenthsOfSeconds:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 584
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberOut:Ljava/io/DataOutput;

    invoke-static {v0, p1, p2}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVLong(Ljava/io/DataOutput;J)V

    goto :goto_1

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberOut:Ljava/io/DataOutput;

    sub-long v2, p1, v2

    invoke-static {v0, v2, v3}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVLong(Ljava/io/DataOutput;J)V

    .line 593
    :goto_1
    iput-wide p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->previousTimestampInTenthsOfSeconds:J

    :goto_2
    if-eqz p4, :cond_9

    .line 598
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_5

    .line 601
    :cond_3
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, v1}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V

    .line 602
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberOut:Ljava/io/DataOutput;

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p2

    invoke-static {p1, p2}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    .line 604
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 605
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 606
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 607
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 609
    :cond_4
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 611
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 612
    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 613
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 614
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->metadataKeyStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, v0, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 615
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 616
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 617
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/amazon/rma/rs/encoding/BitPacker;->addTrue(I)V

    .line 618
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberOut:Ljava/io/DataOutput;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p2}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeVInt(Ljava/io/DataOutput;I)V

    goto :goto_4

    .line 619
    :cond_6
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 620
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/amazon/rma/rs/encoding/BitPacker;->addTrue(I)V

    .line 621
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberOut:Ljava/io/DataOutput;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeVLong(Ljava/io/DataOutput;J)V

    goto :goto_4

    .line 622
    :cond_7
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 623
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {v0, v1}, Lcom/amazon/rma/rs/encoding/BitPacker;->addTrue(I)V

    .line 624
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V

    goto :goto_4

    .line 625
    :cond_8
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 626
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {v0, p3}, Lcom/amazon/rma/rs/encoding/BitPacker;->addTrue(I)V

    .line 627
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->metadataValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    goto :goto_4

    .line 599
    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p3}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V

    :cond_a
    return-void
.end method

.method private writePosition(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 637
    iget v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->previousPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 638
    iget-object p2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberOut:Ljava/io/DataOutput;

    invoke-static {p2, p1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    goto :goto_0

    :cond_0
    sub-int v0, p1, v0

    if-eqz p2, :cond_1

    .line 643
    iget-object p2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberOut:Ljava/io/DataOutput;

    invoke-static {p2, v0}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    goto :goto_0

    .line 645
    :cond_1
    iget-object p2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberOut:Ljava/io/DataOutput;

    invoke-static {p2, v0}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeVInt(Ljava/io/DataOutput;I)V

    .line 648
    :goto_0
    iput p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->previousPosition:I

    return-void
.end method

.method private writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 652
    invoke-virtual {p1, p2}, Lcom/amazon/rma/rs/encoding/StringCollector;->getID(Ljava/lang/String;)I

    move-result p1

    .line 653
    iget-object p2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberOut:Ljava/io/DataOutput;

    invoke-static {p2, p1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized clear(Z)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 97
    :try_start_0
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->clear()V

    :cond_0
    const-wide/16 v0, 0x0

    .line 100
    iput-wide v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->messageNum:J

    goto :goto_0

    .line 102
    :cond_1
    iget-wide v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->messageNum:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->messageNum:J

    .line 105
    :goto_0
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 106
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->pointTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 107
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->spanTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 108
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->actionIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 109
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->auxContentTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 110
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->settingIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 111
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->settingValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 112
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->metadataKeyStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 113
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->metadataValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 114
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->otherStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 116
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 117
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/BitPacker;->clear()V

    const-wide/16 v0, -0x1

    .line 119
    iput-wide v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->previousTimestampInTenthsOfSeconds:J

    const/4 p1, -0x1

    .line 120
    iput p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->previousPosition:I

    const/4 p1, 0x0

    .line 121
    iput p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numEvents:I

    .line 122
    invoke-static {}, Lcom/amazon/rma/rs/encoding/UUID;->randomUUID()Lcom/amazon/rma/rs/encoding/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->uuid:Lcom/amazon/rma/rs/encoding/UUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized consumeContentPoint(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 131
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->consumeContentPoint(Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized consumeContentPoint(Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 139
    :try_start_0
    invoke-direct {p0, p4, p5, p6}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateCommonData(JLjava/util/Map;)V

    .line 140
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateContext(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-ltz p3, :cond_0

    const/16 v0, 0xb

    .line 148
    invoke-direct {p0, v0, p4, p5, p6}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeCommonData(IJLjava/util/Map;)V

    .line 149
    iget-object p4, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p4, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->pointTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 151
    invoke-direct {p0, p3, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writePosition(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 145
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p4, "Invalid position "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Point type cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized consumeContentSpan(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    .line 159
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->consumeContentSpan(Ljava/lang/String;Ljava/lang/String;IIJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized consumeContentSpan(Ljava/lang/String;Ljava/lang/String;IIJLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 167
    :try_start_0
    invoke-direct {p0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateCommonData(JLjava/util/Map;)V

    .line 168
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateContext(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-ltz p3, :cond_0

    if-lt p4, p3, :cond_0

    const/4 v0, 0x3

    .line 176
    invoke-direct {p0, v0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeCommonData(IJLjava/util/Map;)V

    .line 177
    iget-object p5, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p5, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->spanTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 179
    invoke-direct {p0, p3, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writePosition(IZ)V

    const/4 p1, 0x1

    .line 180
    invoke-direct {p0, p4, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writePosition(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 173
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p5, "Invalid position range ["

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Span type cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSizeInBytes()I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x3

    .line 187
    :try_start_0
    invoke-static {v0}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->getUVIntSizeInBytes(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    iget-wide v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->messageNum:J

    invoke-static {v1, v2}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->getUVLongSizeInBytes(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->stringListVersion:I

    invoke-static {v1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->getUVIntSizeInBytes(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->pointTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->spanTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->actionIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->auxContentTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->settingIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->settingValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->metadataKeyStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->metadataValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->otherStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numEvents:I

    invoke-static {v1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->getUVIntSizeInBytes(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/BitPacker;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->getUVIntSizeInBytes(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/BitPacker;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasEvents()Z
    .locals 1

    monitor-enter p0

    .line 212
    :try_start_0
    iget v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numEvents:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hideContext(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 219
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->hideContext(Ljava/lang/String;JLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized hideContext(Ljava/lang/String;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 226
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateCommonData(JLjava/util/Map;)V

    .line 227
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateContext(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 229
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeCommonData(IJLjava/util/Map;)V

    .line 230
    iget-object p2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p2, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized openContent(Lcom/amazon/rma/rs/encoding/ContentType;Ljava/lang/String;Ljava/lang/String;IIIJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    .line 238
    :try_start_0
    invoke-virtual/range {v1 .. v10}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->openContent(Lcom/amazon/rma/rs/encoding/ContentType;Ljava/lang/String;Ljava/lang/String;IIIJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized openContent(Lcom/amazon/rma/rs/encoding/ContentType;Ljava/lang/String;Ljava/lang/String;IIIJLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 246
    :try_start_0
    invoke-direct {p0, p7, p8, p9}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateCommonData(JLjava/util/Map;)V

    if-eqz p1, :cond_0

    const/16 v0, 0xc

    .line 251
    invoke-direct {p0, v0, p7, p8, p9}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeCommonData(IJLjava/util/Map;)V

    .line 252
    iget-object p7, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberOut:Ljava/io/DataOutput;

    iget p1, p1, Lcom/amazon/rma/rs/encoding/ContentType;->id:I

    invoke-interface {p7, p1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 253
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->otherStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->otherStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p3}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 255
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberOut:Ljava/io/DataOutput;

    invoke-static {p1, p4}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeVInt(Ljava/io/DataOutput;I)V

    .line 256
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberOut:Ljava/io/DataOutput;

    invoke-static {p1, p5}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeVInt(Ljava/io/DataOutput;I)V

    .line 257
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberOut:Ljava/io/DataOutput;

    invoke-static {p1, p6}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeVInt(Ljava/io/DataOutput;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    .line 248
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Content type cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized openContext(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 265
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->openContext(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized openContext(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 273
    :try_start_0
    invoke-direct {p0, p3, p4, p5}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateCommonData(JLjava/util/Map;)V

    .line 274
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateContext(Ljava/lang/String;)V

    .line 275
    invoke-direct {p0, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateContext(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 277
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeCommonData(IJLjava/util/Map;)V

    .line 278
    iget-object p3, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p3, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 279
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized performAction(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 286
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->performAction(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized performAction(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 294
    :try_start_0
    invoke-direct {p0, p3, p4, p5}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateCommonData(JLjava/util/Map;)V

    .line 295
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateContext(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 300
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeCommonData(IJLjava/util/Map;)V

    .line 301
    iget-object p3, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p3, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 302
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->actionIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 297
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Action ID cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized performContentAction(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    .line 310
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->performContentAction(Ljava/lang/String;Ljava/lang/String;IIJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized performContentAction(Ljava/lang/String;Ljava/lang/String;IIJLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 318
    :try_start_0
    invoke-direct {p0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateCommonData(JLjava/util/Map;)V

    .line 319
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateContext(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-ltz p3, :cond_0

    if-lt p4, p3, :cond_0

    const/16 v0, 0x9

    .line 327
    invoke-direct {p0, v0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeCommonData(IJLjava/util/Map;)V

    .line 328
    iget-object p5, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p5, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 329
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->actionIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 330
    invoke-direct {p0, p3, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writePosition(IZ)V

    const/4 p1, 0x1

    .line 331
    invoke-direct {p0, p4, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writePosition(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    .line 324
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p5, "Invalid position range ["

    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Action ID cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordAuxContentAvailability(Ljava/lang/String;ZZZZJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-wide/from16 v7, p6

    .line 339
    :try_start_0
    invoke-virtual/range {v1 .. v9}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->recordAuxContentAvailability(Ljava/lang/String;ZZZZJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized recordAuxContentAvailability(Ljava/lang/String;ZZZZJLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 349
    :try_start_0
    invoke-direct {p0, p6, p7, p8}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateCommonData(JLjava/util/Map;)V

    if-eqz p1, :cond_0

    const/16 v0, 0xa

    .line 354
    invoke-direct {p0, v0, p6, p7, p8}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeCommonData(IJLjava/util/Map;)V

    .line 355
    iget-object p6, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->auxContentTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p6, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 356
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p2}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V

    .line 357
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p3}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V

    .line 358
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p4}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V

    .line 359
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p5}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    monitor-exit p0

    return-void

    .line 351
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "auxContentType cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordMetadata(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 366
    :try_start_0
    invoke-direct {p0, p3, p4, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateCommonData(JLjava/util/Map;)V

    .line 367
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateContext(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x5

    .line 372
    invoke-direct {p0, v0, p3, p4, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeCommonData(IJLjava/util/Map;)V

    .line 373
    iget-object p2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p2, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    monitor-exit p0

    return-void

    .line 369
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "metadata cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordSetting(Ljava/lang/String;Ljava/lang/String;IZJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    .line 414
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->recordSetting(Ljava/lang/String;Ljava/lang/String;IZJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordSetting(Ljava/lang/String;Ljava/lang/String;IZJLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 422
    :try_start_0
    invoke-direct {p0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateCommonData(JLjava/util/Map;)V

    .line 423
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateContext(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 428
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    .line 429
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->shouldDedupeSettingContext(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 430
    monitor-exit p0

    return-void

    .line 432
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->recordedSettingContext(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    const/4 v0, 0x7

    .line 435
    invoke-direct {p0, v0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeCommonData(IJLjava/util/Map;)V

    .line 436
    iget-object p5, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p5, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 437
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->settingIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 438
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberOut:Ljava/io/DataOutput;

    invoke-static {p1, p3}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeVInt(Ljava/io/DataOutput;I)V

    .line 439
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p4}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 440
    monitor-exit p0

    return-void

    .line 425
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Setting ID cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    .line 447
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->recordSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 455
    :try_start_0
    invoke-direct {p0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateCommonData(JLjava/util/Map;)V

    .line 456
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateContext(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 461
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    .line 462
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->shouldDedupeSettingContext(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 463
    monitor-exit p0

    return-void

    .line 465
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->recordedSettingContext(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    const/16 v0, 0x8

    .line 468
    invoke-direct {p0, v0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeCommonData(IJLjava/util/Map;)V

    .line 469
    iget-object p5, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p5, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 470
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->settingIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 471
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->settingValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p3}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 472
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p4}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    .line 458
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Setting ID cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordSetting(Ljava/lang/String;Ljava/lang/String;ZZJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    .line 381
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recordSetting(Ljava/lang/String;Ljava/lang/String;ZZJLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 389
    :try_start_0
    invoke-direct {p0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateCommonData(JLjava/util/Map;)V

    .line 390
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateContext(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 395
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    .line 396
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->shouldDedupeSettingContext(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 397
    monitor-exit p0

    return-void

    .line 399
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->recordedSettingContext(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    const/4 v0, 0x6

    .line 402
    invoke-direct {p0, v0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeCommonData(IJLjava/util/Map;)V

    .line 403
    iget-object p5, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p5, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 404
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->settingIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 405
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p3}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V

    .line 406
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p4}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    monitor-exit p0

    return-void

    .line 392
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Setting ID cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reset(Lcom/amazon/rma/rs/encoding/UUID;JZ)V
    .locals 0

    monitor-enter p0

    .line 479
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->clear(Z)V

    .line 480
    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->uuid:Lcom/amazon/rma/rs/encoding/UUID;

    .line 481
    iput-wide p2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->messageNum:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized showContext(Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 488
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->showContext(Ljava/lang/String;JLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized showContext(Ljava/lang/String;JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 495
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateCommonData(JLjava/util/Map;)V

    .line 496
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->validateContext(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 498
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeCommonData(IJLjava/util/Map;)V

    .line 499
    iget-object p2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p2, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toByteArray(J)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 510
    :try_start_0
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->finalStreamBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 511
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->finalStreamBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x3

    .line 512
    invoke-static {v0, v1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    .line 514
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->finalStreamBuffer:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 515
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 517
    iget-object v2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->uuid:Lcom/amazon/rma/rs/encoding/UUID;

    iget-wide v2, v2, Lcom/amazon/rma/rs/encoding/UUID;->mostSignificantBits:J

    invoke-interface {v1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 518
    iget-object v2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->uuid:Lcom/amazon/rma/rs/encoding/UUID;

    iget-wide v2, v2, Lcom/amazon/rma/rs/encoding/UUID;->leastSignificantBits:J

    invoke-interface {v1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 519
    iget-wide v2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->messageNum:J

    invoke-static {v1, v2, v3}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVLong(Ljava/io/DataOutput;J)V

    .line 520
    invoke-interface {v1, p1, p2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 522
    iget p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->stringListVersion:I

    invoke-static {v1, p1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    .line 523
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 524
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->pointTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 525
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->spanTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 526
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->actionIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 527
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->auxContentTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 528
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->settingIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 529
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->settingValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 530
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->metadataKeyStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 531
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->metadataValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 532
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->otherStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 534
    iget p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numEvents:I

    invoke-static {v1, p1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    .line 535
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/BitPacker;->getSize()I

    move-result p1

    invoke-static {v1, p1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    .line 536
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/BitPacker;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 537
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->numberStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 539
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 540
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->finalStreamBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 507
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Timestamps cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public toByteArray(JZ)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    invoke-virtual {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV3;->toByteArray(J)[B

    move-result-object p1

    return-object p1
.end method
