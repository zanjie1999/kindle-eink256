.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufDataMapClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufMapEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private boolValue_:Z

.field private bytesValue_:Lcom/google/protobuf/ByteString;

.field private volatile key_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private sint32Value_:I

.field private volatile stringValue_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 988
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    .line 996
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 312
    iput-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->memoizedIsInitialized:B

    const-string v0, ""

    .line 93
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->key_:Ljava/lang/Object;

    .line 94
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bytesValue_:Lcom/google/protobuf/ByteString;

    .line 95
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->stringValue_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->sint32Value_:I

    .line 97
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->boolValue_:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;-><init>()V

    if-eqz p2, :cond_8

    .line 115
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 119
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0xa

    if-eq v2, v4, :cond_5

    const/16 v4, 0x12

    if-eq v2, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x20

    if-eq v2, v4, :cond_2

    const/16 v4, 0x28

    if-eq v2, v4, :cond_1

    .line 125
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 154
    :cond_1
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    .line 155
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->boolValue_:Z

    goto :goto_0

    .line 149
    :cond_2
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    .line 150
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v2

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->sint32Value_:I

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 144
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    .line 145
    iput-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->stringValue_:Ljava/lang/Object;

    goto :goto_0

    .line 138
    :cond_4
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    .line 139
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bytesValue_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 132
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 133
    iget v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    .line 134
    iput-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->key_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 163
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 164
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 161
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 167
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 168
    throw p1

    .line 166
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 167
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_8
    const/4 p1, 0x0

    .line 111
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 312
    iput-byte p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$1;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;Z)Z
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->boolValue_:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;I)I
    .locals 0

    .line 83
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    return p1
.end method

.method static synthetic access$1200(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 83
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;)Ljava/lang/Object;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->key_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->key_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bytesValue_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$800(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;)Ljava/lang/Object;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->stringValue_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->stringValue_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;I)I
    .locals 0

    .line 83
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->sint32Value_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;
    .locals 1

    .line 992
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 172
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
    .locals 1

    .line 519
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 379
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    if-nez v1, :cond_1

    .line 380
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 382
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    .line 385
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasKey()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasKey()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 386
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasKey()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 387
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 390
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasBytesValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasBytesValue()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 391
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasBytesValue()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 392
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 393
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 395
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasStringValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasStringValue()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 396
    :goto_4
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasStringValue()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 397
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 400
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasSint32Value()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasSint32Value()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 401
    :goto_6
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasSint32Value()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 402
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getSint32Value()I

    move-result v1

    .line 403
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getSint32Value()I

    move-result v2

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 405
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasBoolValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasBoolValue()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 406
    :goto_8
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasBoolValue()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 407
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getBoolValue()Z

    move-result v1

    .line 408
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getBoolValue()Z

    move-result v2

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 410
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getBoolValue()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->boolValue_:Z

    return v0
.end method

.method public getBytesValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bytesValue_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;
    .locals 1

    .line 1015
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->key_:Ljava/lang/Object;

    .line 196
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 197
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 199
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 201
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->key_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;",
            ">;"
        }
    .end annotation

    .line 1011
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 347
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 351
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 352
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->key_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 354
    :cond_1
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 355
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bytesValue_:Lcom/google/protobuf/ByteString;

    .line 356
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 358
    :cond_2
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 359
    iget-object v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->stringValue_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 361
    :cond_3
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 362
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->sint32Value_:I

    .line 363
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 365
    :cond_4
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 366
    iget-boolean v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->boolValue_:Z

    .line 367
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 369
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 370
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSint32Value()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->sint32Value_:I

    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->stringValue_:Ljava/lang/Object;

    .line 253
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 254
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 256
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 258
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->stringValue_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasBoolValue()Z
    .locals 2

    .line 303
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBytesValue()Z
    .locals 2

    .line 231
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasKey()Z
    .locals 2

    .line 189
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSint32Value()Z
    .locals 2

    .line 288
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStringValue()Z
    .locals 2

    .line 246
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 416
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 420
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 421
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 423
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasBytesValue()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 427
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 429
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasStringValue()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 431
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 433
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasSint32Value()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 435
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getSint32Value()I

    move-result v1

    add-int/2addr v0, v1

    .line 437
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasBoolValue()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 440
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getBoolValue()Z

    move-result v1

    .line 439
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    .line 442
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 443
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 177
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    .line 178
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 314
    iget-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasKey()Z

    move-result v0

    if-nez v0, :cond_2

    .line 319
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->memoizedIsInitialized:B

    return v2

    .line 322
    :cond_2
    iput-byte v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
    .locals 1

    .line 517
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
    .locals 2

    .line 532
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
    .locals 2

    .line 525
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$1;)V

    .line 526
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->key_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 331
    :cond_0
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 332
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bytesValue_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 334
    :cond_1
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 335
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->stringValue_:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 337
    :cond_2
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 338
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->sint32Value_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 340
    :cond_3
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 341
    iget-boolean v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->boolValue_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 343
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
