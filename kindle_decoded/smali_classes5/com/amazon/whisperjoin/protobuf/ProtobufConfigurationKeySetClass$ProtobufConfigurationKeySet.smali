.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufConfigurationKeySetClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufConfigurationKeySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private keySet_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 563
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    .line 571
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 152
    iput-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->memoizedIsInitialized:B

    .line 53
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->keySet_:Lcom/google/protobuf/LazyStringList;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;-><init>()V

    if-eqz p2, :cond_7

    .line 71
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 75
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    .line 81
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    and-int/lit8 v5, v2, 0x1

    if-eq v5, v3, :cond_2

    .line 90
    new-instance v5, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->keySet_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v2, v2, 0x1

    .line 93
    :cond_2
    iget-object v5, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->keySet_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v4}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 101
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 102
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 99
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-ne p2, v3, :cond_4

    .line 105
    iget-object p2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->keySet_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->keySet_:Lcom/google/protobuf/LazyStringList;

    .line 107
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 108
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 109
    throw p1

    :cond_5
    and-int/lit8 p1, v2, 0x1

    if-ne p1, v3, :cond_6

    .line 105
    iget-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->keySet_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {p1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->keySet_:Lcom/google/protobuf/LazyStringList;

    .line 107
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 108
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 67
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 50
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 152
    iput-byte p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$1;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->keySet_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->keySet_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;
    .locals 1

    .line 567
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 113
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;
    .locals 1

    .line 293
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 245
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 193
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    if-nez v1, :cond_1

    .line 194
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 196
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    .line 199
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->getKeySetList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    .line 200
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->getKeySetList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 201
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;
    .locals 1

    .line 590
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    move-result-object v0

    return-object v0
.end method

.method public getKeySetCount()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->keySet_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getKeySetList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->keySet_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;",
            ">;"
        }
    .end annotation

    .line 586
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 171
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 177
    :goto_0
    iget-object v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->keySet_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 178
    iget-object v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->keySet_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v1}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    .line 181
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->getKeySetList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 183
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 184
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 207
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 211
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->getKeySetCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 214
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->getKeySetList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 216
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 118
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 154
    iget-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 158
    :cond_1
    iput-byte v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;
    .locals 1

    .line 291
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;
    .locals 2

    .line 306
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;
    .locals 2

    .line 299
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$1;)V

    .line 300
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;)Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet$Builder;

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

    const/4 v0, 0x0

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->keySet_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufConfigurationKeySetClass$ProtobufConfigurationKeySet;->keySet_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
