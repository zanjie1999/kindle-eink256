.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufProvisioningCommandResponseClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufProvisioningCommandResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private status_:I

.field private uuid_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 755
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    .line 763
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 230
    iput-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->memoizedIsInitialized:B

    .line 85
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->uuid_:Lcom/google/protobuf/ByteString;

    const/4 v1, 0x0

    .line 86
    iput v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->status_:I

    .line 87
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;-><init>()V

    if-eqz p2, :cond_6

    .line 105
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 109
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    const/16 v4, 0x10

    if-eq v2, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 115
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 132
    :cond_1
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->bitField0_:I

    .line 133
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->data_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 127
    :cond_2
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->bitField0_:I

    .line 128
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v2

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->status_:I

    goto :goto_0

    .line 122
    :cond_3
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->bitField0_:I

    .line 123
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->uuid_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 141
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 142
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 139
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 145
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 146
    throw p1

    .line 144
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 145
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_6
    const/4 p1, 0x0

    .line 101
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 82
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 230
    iput-byte p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$1;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 75
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->uuid_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->status_:I

    return p1
.end method

.method static synthetic access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->data_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$902(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;I)I
    .locals 0

    .line 75
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;
    .locals 1

    .line 759
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 150
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;
    .locals 1

    .line 410
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 362
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 289
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    if-nez v1, :cond_1

    .line 290
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 292
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    .line 295
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->hasUuid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->hasUuid()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 296
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->hasUuid()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 297
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->getUuid()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 298
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->getUuid()Lcom/google/protobuf/ByteString;

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

    .line 300
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->hasStatus()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->hasStatus()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 301
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->hasStatus()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 302
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->getStatus()I

    move-result v1

    .line 303
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->getStatus()I

    move-result v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 305
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->hasData()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->hasData()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 306
    :goto_4
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->hasData()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 307
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 308
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 310
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;
    .locals 1

    .line 782
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;",
            ">;"
        }
    .end annotation

    .line 778
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 263
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 267
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 268
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->uuid_:Lcom/google/protobuf/ByteString;

    .line 269
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 271
    :cond_1
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 272
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->status_:I

    .line 273
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 275
    :cond_2
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 276
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->data_:Lcom/google/protobuf/ByteString;

    .line 277
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 279
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 280
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->status_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUuid()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->uuid_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasData()Z
    .locals 2

    .line 217
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->bitField0_:I

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

.method public hasStatus()Z
    .locals 2

    .line 194
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->bitField0_:I

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

.method public hasUuid()Z
    .locals 2

    .line 171
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->bitField0_:I

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

    .line 316
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 320
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->hasUuid()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 323
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->getUuid()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 325
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 327
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->getStatus()I

    move-result v1

    add-int/2addr v0, v1

    .line 329
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->hasData()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 331
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 333
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 334
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 155
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    .line 156
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 232
    iget-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->hasUuid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 237
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->memoizedIsInitialized:B

    return v2

    .line 240
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->hasStatus()Z

    move-result v0

    if-nez v0, :cond_3

    .line 241
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->memoizedIsInitialized:B

    return v2

    .line 244
    :cond_3
    iput-byte v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;
    .locals 1

    .line 408
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;
    .locals 2

    .line 423
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;
    .locals 2

    .line 416
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$1;)V

    .line 417
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse$Builder;

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

    .line 250
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->uuid_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 253
    :cond_0
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 254
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->status_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 256
    :cond_1
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 257
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningCommandResponseClass$ProtobufProvisioningCommandResponse;->data_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
