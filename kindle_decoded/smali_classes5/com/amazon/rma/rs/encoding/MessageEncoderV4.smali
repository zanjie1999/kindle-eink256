.class public Lcom/amazon/rma/rs/encoding/MessageEncoderV4;
.super Ljava/lang/Object;
.source "MessageEncoderV4.java"

# interfaces
.implements Lcom/amazon/rma/rs/encoding/ExtendedMessageEncoder;


# static fields
.field public static final DATA_TYPE_BOOLEAN_LEADING_ZEROS:I = 0x1

.field public static final DATA_TYPE_INT_LEADING_ZEROS:I = 0x2

.field public static final DATA_TYPE_LONG_LEADING_ZEROS:I = 0x3

.field public static final DATA_TYPE_STRING_LEADING_ZEROS:I = 0x0

.field public static final DEFAULT_MESSAGE_SIZE_IN_BYTES:I = 0x1000

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

.field public static final EVENT_TYPE_SHOW_CONTEXT_LEADING_ZEROS:I = 0x0

.field private static final NATIVE_LIBRARY_NAME:Ljava/lang/String; = "RSAnalyticsClient"

.field private static isNativeLibraryLoaded:Z = false

.field private static messagePublisher:Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;


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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;Lcom/amazon/rma/rs/encoding/strings/StringLists;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/amazon/rma/rs/encoding/StringCollector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->otherStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 67
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x1770

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->finalStreamBuffer:Ljava/io/ByteArrayOutputStream;

    .line 69
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberStream:Ljava/io/ByteArrayOutputStream;

    .line 71
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberStream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberOut:Ljava/io/DataOutput;

    .line 72
    new-instance v0, Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-direct {v0}, Lcom/amazon/rma/rs/encoding/BitPacker;-><init>()V

    iput-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    const-wide/16 v0, -0x1

    .line 73
    iput-wide v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->previousTimestampInTenthsOfSeconds:J

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->previousPosition:I

    .line 80
    invoke-static {}, Lcom/amazon/rma/rs/encoding/UUID;->randomUUID()Lcom/amazon/rma/rs/encoding/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->uuid:Lcom/amazon/rma/rs/encoding/UUID;

    .line 84
    sput-object p1, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->messagePublisher:Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;

    .line 85
    iput-object p2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    .line 86
    iget p1, p3, Lcom/amazon/rma/rs/encoding/strings/StringLists;->version:I

    iput p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->stringListVersion:I

    .line 88
    new-instance p1, Lcom/amazon/rma/rs/encoding/StringCollector;

    iget-object p2, p3, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    const-string v0, "context"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 89
    new-instance p1, Lcom/amazon/rma/rs/encoding/StringCollector;

    iget-object p2, p3, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    const-string/jumbo v0, "pointType"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->pointTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 91
    new-instance p1, Lcom/amazon/rma/rs/encoding/StringCollector;

    iget-object p2, p3, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    const-string/jumbo v0, "spanType"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->spanTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 92
    new-instance p1, Lcom/amazon/rma/rs/encoding/StringCollector;

    iget-object p2, p3, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    const-string v0, "actionID"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->actionIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 93
    new-instance p1, Lcom/amazon/rma/rs/encoding/StringCollector;

    iget-object p2, p3, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    const-string v0, "auxContentType"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->auxContentTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 95
    new-instance p1, Lcom/amazon/rma/rs/encoding/StringCollector;

    iget-object p2, p3, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    const-string/jumbo v0, "settingID"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->settingIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 97
    new-instance p1, Lcom/amazon/rma/rs/encoding/StringCollector;

    iget-object p2, p3, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    const-string/jumbo v0, "settingValue"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->settingValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 99
    new-instance p1, Lcom/amazon/rma/rs/encoding/StringCollector;

    iget-object p2, p3, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    const-string v0, "metadataKey"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->metadataKeyStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 101
    new-instance p1, Lcom/amazon/rma/rs/encoding/StringCollector;

    iget-object p2, p3, Lcom/amazon/rma/rs/encoding/strings/StringLists;->typeToStringArray:Ljava/util/Map;

    const-string p3, "metadataValue"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/amazon/rma/rs/encoding/StringCollector;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->metadataValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    .line 104
    invoke-direct {p0}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->initNativeLibrary()V

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->messagePublisher:Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;

    return-object v0
.end method

.method public static getMessageSizeThresholdInBytes()I
    .locals 1

    .line 229
    sget-object v0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->messagePublisher:Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;->getMessageSizeThresholdInBytes()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->messagePublisher:Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;

    invoke-interface {v0}, Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;->getMessageSizeThresholdInBytes()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x1000

    return v0
.end method

.method private initNativeLibrary()V
    .locals 1

    :try_start_0
    const-string v0, "RSAnalyticsClient"

    .line 266
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 267
    sput-boolean v0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->isNativeLibraryLoaded:Z

    .line 268
    invoke-static {}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->getMessageSizeThresholdInBytes()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->initNativePublisher(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private native initNativePublisher(I)V
.end method

.method private native publishNativeRSMessage()V
.end method

.method public static publishReadingStreamsMessage([B)V
    .locals 2

    .line 375
    sget-object v0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->messagePublisher:Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;

    if-eqz v0, :cond_0

    .line 377
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazon/rma/rs/encoding/MessageEncoderV4$1;

    invoke-direct {v1, p0}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4$1;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return-void
.end method

.method private validateCommonData(JLjava/util/Map;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    if-eqz p3, :cond_2

    .line 649
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 650
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 651
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 652
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 653
    instance-of p3, p2, Ljava/lang/Integer;

    if-nez p3, :cond_0

    instance-of p3, p2, Ljava/lang/Long;

    if-nez p3, :cond_0

    instance-of p3, p2, Ljava/lang/Boolean;

    if-nez p3, :cond_0

    instance-of p3, p2, Ljava/lang/String;

    if-eqz p3, :cond_1

    goto :goto_0

    .line 655
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

    .line 646
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

    .line 664
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

    .line 669
    iget v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numEvents:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numEvents:I

    .line 670
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {v0, p1}, Lcom/amazon/rma/rs/encoding/BitPacker;->addTrue(I)V

    .line 672
    invoke-static {p2, p3}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->timestampToTenthsOfSeconds(J)J

    move-result-wide p1

    .line 673
    iget-wide v2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->previousTimestampInTenthsOfSeconds:J

    const-wide/16 v4, -0x1

    const/4 p3, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 688
    :cond_0
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p3}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V

    goto :goto_2

    .line 675
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {v0, v1}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V

    .line 676
    iget-wide v2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->previousTimestampInTenthsOfSeconds:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 677
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberOut:Ljava/io/DataOutput;

    invoke-static {v0, p1, p2}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVLong(Ljava/io/DataOutput;J)V

    goto :goto_1

    .line 684
    :cond_2
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberOut:Ljava/io/DataOutput;

    sub-long v2, p1, v2

    invoke-static {v0, v2, v3}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVLong(Ljava/io/DataOutput;J)V

    .line 686
    :goto_1
    iput-wide p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->previousTimestampInTenthsOfSeconds:J

    :goto_2
    if-eqz p4, :cond_9

    .line 691
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_5

    .line 694
    :cond_3
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, v1}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V

    .line 695
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberOut:Ljava/io/DataOutput;

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p2

    invoke-static {p1, p2}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    .line 697
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 698
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 699
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 700
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 702
    :cond_4
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 704
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 705
    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 706
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 707
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->metadataKeyStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, v0, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 708
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 709
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 710
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/amazon/rma/rs/encoding/BitPacker;->addTrue(I)V

    .line 711
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberOut:Ljava/io/DataOutput;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p2}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeVInt(Ljava/io/DataOutput;I)V

    goto :goto_4

    .line 712
    :cond_6
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 713
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/amazon/rma/rs/encoding/BitPacker;->addTrue(I)V

    .line 714
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberOut:Ljava/io/DataOutput;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeVLong(Ljava/io/DataOutput;J)V

    goto :goto_4

    .line 715
    :cond_7
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 716
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {v0, v1}, Lcom/amazon/rma/rs/encoding/BitPacker;->addTrue(I)V

    .line 717
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V

    goto :goto_4

    .line 718
    :cond_8
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 719
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {v0, p3}, Lcom/amazon/rma/rs/encoding/BitPacker;->addTrue(I)V

    .line 720
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->metadataValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    goto :goto_4

    .line 692
    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

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

    .line 730
    iget v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->previousPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 731
    iget-object p2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberOut:Ljava/io/DataOutput;

    invoke-static {p2, p1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    goto :goto_0

    :cond_0
    sub-int v0, p1, v0

    if-eqz p2, :cond_1

    .line 736
    iget-object p2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberOut:Ljava/io/DataOutput;

    invoke-static {p2, v0}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    goto :goto_0

    .line 738
    :cond_1
    iget-object p2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberOut:Ljava/io/DataOutput;

    invoke-static {p2, v0}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeVInt(Ljava/io/DataOutput;I)V

    .line 741
    :goto_0
    iput p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->previousPosition:I

    return-void
.end method

.method private writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 745
    invoke-virtual {p1, p2}, Lcom/amazon/rma/rs/encoding/StringCollector;->getID(Ljava/lang/String;)I

    move-result p1

    .line 746
    iget-object p2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberOut:Ljava/io/DataOutput;

    invoke-static {p2, p1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized clear(Z)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 112
    :try_start_0
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->clear()V

    :cond_0
    const-wide/16 v0, 0x0

    .line 115
    iput-wide v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->messageNum:J

    goto :goto_0

    .line 117
    :cond_1
    iget-wide v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->messageNum:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->messageNum:J

    .line 120
    :goto_0
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 121
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->pointTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 122
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->spanTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 123
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->actionIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 124
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->auxContentTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 125
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->settingIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 126
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->settingValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 127
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->metadataKeyStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 128
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->metadataValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 129
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->otherStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/StringCollector;->clear()V

    .line 131
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 132
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/BitPacker;->clear()V

    const-wide/16 v0, -0x1

    .line 134
    iput-wide v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->previousTimestampInTenthsOfSeconds:J

    const/4 p1, -0x1

    .line 135
    iput p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->previousPosition:I

    const/4 p1, 0x0

    .line 136
    iput p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numEvents:I

    .line 137
    invoke-static {}, Lcom/amazon/rma/rs/encoding/UUID;->randomUUID()Lcom/amazon/rma/rs/encoding/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->uuid:Lcom/amazon/rma/rs/encoding/UUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
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

    .line 145
    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->consumeContentPoint(Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
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

    .line 153
    :try_start_0
    invoke-direct {p0, p4, p5, p6}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateCommonData(JLjava/util/Map;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateContext(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-ltz p3, :cond_0

    const/16 v0, 0xb

    .line 162
    invoke-direct {p0, v0, p4, p5, p6}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeCommonData(IJLjava/util/Map;)V

    .line 163
    iget-object p4, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p4, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->pointTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 165
    invoke-direct {p0, p3, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writePosition(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 159
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

    .line 156
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

    .line 173
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->consumeContentSpan(Ljava/lang/String;Ljava/lang/String;IIJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
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

    .line 181
    :try_start_0
    invoke-direct {p0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateCommonData(JLjava/util/Map;)V

    .line 182
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateContext(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-ltz p3, :cond_0

    if-lt p4, p3, :cond_0

    const/4 v0, 0x3

    .line 190
    invoke-direct {p0, v0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeCommonData(IJLjava/util/Map;)V

    .line 191
    iget-object p5, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p5, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->spanTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 193
    invoke-direct {p0, p3, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writePosition(IZ)V

    const/4 p1, 0x1

    .line 194
    invoke-direct {p0, p4, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writePosition(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 187
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

    .line 184
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

    .line 201
    :try_start_0
    invoke-static {v0}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->getUVIntSizeInBytes(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    iget-wide v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->messageNum:J

    invoke-static {v1, v2}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->getUVLongSizeInBytes(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->stringListVersion:I

    invoke-static {v1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->getUVIntSizeInBytes(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->pointTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->spanTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->actionIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->auxContentTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->settingIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->settingValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->metadataKeyStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->metadataValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->otherStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/StringCollector;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numEvents:I

    invoke-static {v1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->getUVIntSizeInBytes(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/BitPacker;->getSize()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->getUVIntSizeInBytes(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {v1}, Lcom/amazon/rma/rs/encoding/BitPacker;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberStream:Ljava/io/ByteArrayOutputStream;

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

    .line 239
    :try_start_0
    iget v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numEvents:I
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

    .line 246
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->hideContext(Ljava/lang/String;JLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
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

    .line 253
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateCommonData(JLjava/util/Map;)V

    .line 254
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateContext(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 256
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeCommonData(IJLjava/util/Map;)V

    .line 257
    iget-object p2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p2, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
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

    .line 286
    :try_start_0
    invoke-virtual/range {v1 .. v10}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->openContent(Lcom/amazon/rma/rs/encoding/ContentType;Ljava/lang/String;Ljava/lang/String;IIIJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
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

    .line 294
    :try_start_0
    invoke-direct {p0, p7, p8, p9}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateCommonData(JLjava/util/Map;)V

    if-eqz p1, :cond_0

    const/16 v0, 0xc

    .line 299
    invoke-direct {p0, v0, p7, p8, p9}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeCommonData(IJLjava/util/Map;)V

    .line 300
    iget-object p7, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberOut:Ljava/io/DataOutput;

    iget p1, p1, Lcom/amazon/rma/rs/encoding/ContentType;->id:I

    invoke-interface {p7, p1}, Ljava/io/DataOutput;->writeByte(I)V

    .line 301
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->otherStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 302
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->otherStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p3}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 303
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberOut:Ljava/io/DataOutput;

    invoke-static {p1, p4}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeVInt(Ljava/io/DataOutput;I)V

    .line 304
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberOut:Ljava/io/DataOutput;

    invoke-static {p1, p5}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeVInt(Ljava/io/DataOutput;I)V

    .line 305
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberOut:Ljava/io/DataOutput;

    invoke-static {p1, p6}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeVInt(Ljava/io/DataOutput;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    .line 296
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

    .line 313
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->openContext(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
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

    .line 321
    :try_start_0
    invoke-direct {p0, p3, p4, p5}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateCommonData(JLjava/util/Map;)V

    .line 322
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateContext(Ljava/lang/String;)V

    .line 323
    invoke-direct {p0, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateContext(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 325
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeCommonData(IJLjava/util/Map;)V

    .line 326
    iget-object p3, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p3, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 327
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
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

    .line 334
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->performAction(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
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

    .line 342
    :try_start_0
    invoke-direct {p0, p3, p4, p5}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateCommonData(JLjava/util/Map;)V

    .line 343
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateContext(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 348
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeCommonData(IJLjava/util/Map;)V

    .line 349
    iget-object p3, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p3, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->actionIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    .line 345
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

    .line 358
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->performContentAction(Ljava/lang/String;Ljava/lang/String;IIJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
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

    .line 394
    :try_start_0
    invoke-direct {p0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateCommonData(JLjava/util/Map;)V

    .line 395
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateContext(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    if-ltz p3, :cond_0

    if-lt p4, p3, :cond_0

    const/16 v0, 0x9

    .line 403
    invoke-direct {p0, v0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeCommonData(IJLjava/util/Map;)V

    .line 404
    iget-object p5, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p5, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 405
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->actionIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 406
    invoke-direct {p0, p3, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writePosition(IZ)V

    const/4 p1, 0x1

    .line 407
    invoke-direct {p0, p4, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writePosition(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit p0

    return-void

    .line 400
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

    .line 397
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

    .line 415
    :try_start_0
    invoke-virtual/range {v1 .. v9}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->recordAuxContentAvailability(Ljava/lang/String;ZZZZJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
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

    .line 425
    :try_start_0
    invoke-direct {p0, p6, p7, p8}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateCommonData(JLjava/util/Map;)V

    if-eqz p1, :cond_0

    const/16 v0, 0xa

    .line 430
    invoke-direct {p0, v0, p6, p7, p8}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeCommonData(IJLjava/util/Map;)V

    .line 431
    iget-object p6, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->auxContentTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p6, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 432
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p2}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V

    .line 433
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p3}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V

    .line 434
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p4}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V

    .line 435
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p5}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    monitor-exit p0

    return-void

    .line 427
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

    .line 442
    :try_start_0
    invoke-direct {p0, p3, p4, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateCommonData(JLjava/util/Map;)V

    .line 443
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateContext(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x5

    .line 448
    invoke-direct {p0, v0, p3, p4, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeCommonData(IJLjava/util/Map;)V

    .line 449
    iget-object p2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p2, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    .line 445
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

    .line 491
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->recordSetting(Ljava/lang/String;Ljava/lang/String;IZJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
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

    .line 499
    :try_start_0
    invoke-direct {p0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateCommonData(JLjava/util/Map;)V

    .line 500
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateContext(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 505
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    .line 506
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->shouldDedupeSettingContext(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 508
    monitor-exit p0

    return-void

    .line 510
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->recordedSettingContext(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    const/4 v0, 0x7

    .line 513
    invoke-direct {p0, v0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeCommonData(IJLjava/util/Map;)V

    .line 514
    iget-object p5, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p5, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 515
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->settingIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 516
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberOut:Ljava/io/DataOutput;

    invoke-static {p1, p3}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeVInt(Ljava/io/DataOutput;I)V

    .line 517
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p4}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    monitor-exit p0

    return-void

    .line 502
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

    .line 525
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->recordSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
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

    .line 533
    :try_start_0
    invoke-direct {p0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateCommonData(JLjava/util/Map;)V

    .line 534
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateContext(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 539
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    .line 540
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->shouldDedupeSettingContext(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 542
    monitor-exit p0

    return-void

    .line 544
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->recordedSettingContext(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    const/16 v0, 0x8

    .line 547
    invoke-direct {p0, v0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeCommonData(IJLjava/util/Map;)V

    .line 548
    iget-object p5, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p5, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 549
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->settingIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 550
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->settingValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p3}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 551
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p4}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    monitor-exit p0

    return-void

    .line 536
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

    .line 457
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZJLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
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

    .line 465
    :try_start_0
    invoke-direct {p0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateCommonData(JLjava/util/Map;)V

    .line 466
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateContext(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 471
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    .line 472
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->shouldDedupeSettingContext(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 474
    monitor-exit p0

    return-void

    .line 476
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->timeDedupedEventHistory:Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->recordedSettingContext(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    const/4 v0, 0x6

    .line 479
    invoke-direct {p0, v0, p5, p6, p7}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeCommonData(IJLjava/util/Map;)V

    .line 480
    iget-object p5, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p5, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 481
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->settingIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V

    .line 482
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p3}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V

    .line 483
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, p4}, Lcom/amazon/rma/rs/encoding/BitPacker;->add(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    monitor-exit p0

    return-void

    .line 468
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

    .line 558
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->clear(Z)V

    .line 559
    iput-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->uuid:Lcom/amazon/rma/rs/encoding/UUID;

    .line 560
    iput-wide p2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->messageNum:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
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

    .line 567
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->showContext(Ljava/lang/String;JLjava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
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

    .line 574
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateCommonData(JLjava/util/Map;)V

    .line 575
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->validateContext(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 577
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeCommonData(IJLjava/util/Map;)V

    .line 578
    iget-object p2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-direct {p0, p2, p1}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->writeString(Lcom/amazon/rma/rs/encoding/StringCollector;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
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

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->finalStreamBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 590
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->finalStreamBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x3

    .line 591
    invoke-static {v0, v1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    .line 593
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->finalStreamBuffer:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 594
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 596
    iget-object v2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->uuid:Lcom/amazon/rma/rs/encoding/UUID;

    iget-wide v2, v2, Lcom/amazon/rma/rs/encoding/UUID;->mostSignificantBits:J

    invoke-interface {v1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 597
    iget-object v2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->uuid:Lcom/amazon/rma/rs/encoding/UUID;

    iget-wide v2, v2, Lcom/amazon/rma/rs/encoding/UUID;->leastSignificantBits:J

    invoke-interface {v1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 598
    iget-wide v2, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->messageNum:J

    invoke-static {v1, v2, v3}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVLong(Ljava/io/DataOutput;J)V

    .line 599
    invoke-interface {v1, p1, p2}, Ljava/io/DataOutput;->writeLong(J)V

    .line 601
    iget p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->stringListVersion:I

    invoke-static {v1, p1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    .line 602
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->contextStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 603
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->pointTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 604
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->spanTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 605
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->actionIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 606
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->auxContentTypeStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 607
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->settingIdStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 608
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->settingValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 609
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->metadataKeyStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 610
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->metadataValueStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 611
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->otherStrings:Lcom/amazon/rma/rs/encoding/StringCollector;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/StringCollector;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 613
    iget p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numEvents:I

    invoke-static {v1, p1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    .line 614
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1}, Lcom/amazon/rma/rs/encoding/BitPacker;->getSize()I

    move-result p1

    invoke-static {v1, p1}, Lcom/amazon/rma/rs/encoding/EncodingUtils;->writeUVInt(Ljava/io/DataOutput;I)V

    .line 615
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->bitPacker:Lcom/amazon/rma/rs/encoding/BitPacker;

    invoke-virtual {p1, v1, v0}, Lcom/amazon/rma/rs/encoding/BitPacker;->writeToStream(Ljava/io/DataOutput;Ljava/io/OutputStream;)V

    .line 616
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->numberStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 618
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 619
    iget-object p1, p0, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->finalStreamBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 586
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

.method public declared-synchronized toByteArray(JZ)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    .line 629
    :try_start_0
    sget-boolean p3, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->isNativeLibraryLoaded:Z

    if-nez p3, :cond_0

    .line 630
    invoke-direct {p0}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->initNativeLibrary()V

    .line 634
    :cond_0
    sget-boolean p3, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->isNativeLibraryLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    .line 636
    :try_start_1
    invoke-direct {p0}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->publishNativeRSMessage()V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 641
    :catch_0
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/amazon/rma/rs/encoding/MessageEncoderV4;->toByteArray(J)[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
