.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufProvisioningFailureClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailureOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufProvisioningFailure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private errorCode_:I

.field private memoizedIsInitialized:B

.field private volatile message_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 645
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    .line 653
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 189
    iput-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->errorCode_:I

    const-string v0, ""

    .line 62
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->message_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;-><init>()V

    if-eqz p2, :cond_5

    .line 80
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 84
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 90
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 103
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->bitField0_:I

    .line 104
    iput-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->message_:Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_2
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->bitField0_:I

    .line 98
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v2

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->errorCode_:I
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

    .line 112
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 113
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 110
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 116
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 117
    throw p1

    .line 115
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 116
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 76
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 58
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 189
    iput-byte p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$1;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->errorCode_:I

    return p1
.end method

.method static synthetic access$700(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Ljava/lang/Object;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->message_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->message_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->bitField0_:I

    return p1
.end method

.method static synthetic access$900(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;
    .locals 1

    .line 649
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 121
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;
    .locals 1

    .line 348
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;
    .locals 1

    .line 351
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 300
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 236
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    if-nez v1, :cond_1

    .line 237
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 239
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    .line 242
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->hasErrorCode()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->hasErrorCode()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 243
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->hasErrorCode()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->getErrorCode()I

    move-result v1

    .line 245
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->getErrorCode()I

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 247
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->hasMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->hasMessage()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 248
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->hasMessage()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 249
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 252
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;
    .locals 1

    .line 672
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->errorCode_:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->message_:Ljava/lang/Object;

    .line 160
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 161
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 163
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 165
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->message_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;",
            ">;"
        }
    .end annotation

    .line 668
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 215
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 219
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 220
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->errorCode_:I

    .line 221
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 223
    :cond_1
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 224
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->message_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 227
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasErrorCode()Z
    .locals 2

    .line 138
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMessage()Z
    .locals 2

    .line 153
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->bitField0_:I

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

.method public hashCode()I
    .locals 2

    .line 258
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 262
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 263
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->hasErrorCode()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 265
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->getErrorCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->hasMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 269
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 271
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 126
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 191
    iget-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->hasErrorCode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->memoizedIsInitialized:B

    return v2

    .line 199
    :cond_2
    iput-byte v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;
    .locals 1

    .line 346
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;
    .locals 2

    .line 361
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;
    .locals 2

    .line 354
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$1;)V

    .line 355
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

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

    .line 205
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 206
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->errorCode_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 208
    :cond_0
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->message_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
