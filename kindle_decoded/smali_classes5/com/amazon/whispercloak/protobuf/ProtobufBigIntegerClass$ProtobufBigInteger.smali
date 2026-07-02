.class public final Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufBigIntegerClass.java"

# interfaces
.implements Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigIntegerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufBigInteger"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private value_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 483
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    invoke-direct {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;-><init>()V

    sput-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 491
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$1;

    invoke-direct {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$1;-><init>()V

    sput-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 126
    iput-byte v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->memoizedIsInitialized:B

    .line 47
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->value_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;-><init>()V

    if-eqz p2, :cond_4

    .line 65
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 69
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    .line 75
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 82
    :cond_1
    iget v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->bitField0_:I

    .line 83
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->value_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 91
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 92
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 89
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 95
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 96
    throw p1

    .line 94
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 95
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 61
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 44
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 126
    iput-byte p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$602(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->value_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$702(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->bitField0_:I

    return p1
.end method

.method static synthetic access$800(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 1

    .line 487
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 100
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;
    .locals 1

    .line 270
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;
    .locals 1

    .line 273
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 167
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-nez v1, :cond_1

    .line 168
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 170
    :cond_1
    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 173
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->hasValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->hasValue()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 174
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 176
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 178
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 1

    .line 510
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;",
            ">;"
        }
    .end annotation

    .line 506
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 149
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 153
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 154
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->value_:Lcom/google/protobuf/ByteString;

    .line 155
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->value_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasValue()Z
    .locals 2

    .line 117
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 184
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 188
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 189
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 191
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 193
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 105
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    const-class v2, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 128
    iget-byte v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->hasValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 133
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->memoizedIsInitialized:B

    return v2

    .line 136
    :cond_2
    iput-byte v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;
    .locals 1

    .line 268
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->newBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;
    .locals 2

    .line 283
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->newBuilderForType()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->newBuilderForType()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;
    .locals 2

    .line 276
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;-><init>(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;-><init>(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$1;)V

    .line 277
    invoke-virtual {v0, p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->value_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
