.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufCBLRegistrationDetailsClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufCBLRegistrationDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private httpCode_:I

.field private memoizedIsInitialized:B

.field private volatile message_:Ljava/lang/Object;

.field private state_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 994
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    .line 1002
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 426
    iput-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->state_:I

    const-string v1, ""

    .line 95
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->message_:Ljava/lang/Object;

    .line 96
    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->httpCode_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;-><init>()V

    if-eqz p2, :cond_7

    .line 114
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 118
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/16 v4, 0x8

    if-eq v2, v4, :cond_3

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2

    const/16 v4, 0x18

    if-eq v2, v4, :cond_1

    .line 124
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 148
    :cond_1
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->bitField0_:I

    .line 149
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v2

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->httpCode_:I

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 143
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->bitField0_:I

    .line 144
    iput-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->message_:Ljava/lang/Object;

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 132
    invoke-static {v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    move-result-object v4

    if-nez v4, :cond_4

    .line 134
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 136
    :cond_4
    iget v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->bitField0_:I

    .line 137
    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->state_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 157
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 158
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 155
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 161
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 162
    throw p1

    .line 160
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 161
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 110
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 91
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 426
    iput-byte p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$1;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 84
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;I)I
    .locals 0

    .line 84
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->state_:I

    return p1
.end method

.method static synthetic access$700(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;)Ljava/lang/Object;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->message_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->message_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;I)I
    .locals 0

    .line 84
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->httpCode_:I

    return p1
.end method

.method static synthetic access$902(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;I)I
    .locals 0

    .line 84
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;
    .locals 1

    .line 998
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 166
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;
    .locals 1

    .line 600
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;
    .locals 1

    .line 603
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 552
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 480
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    if-nez v1, :cond_1

    .line 481
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 483
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    .line 486
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->hasState()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->hasState()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 487
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->hasState()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 488
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->state_:I

    iget v2, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->state_:I

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 490
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->hasMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->hasMessage()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 491
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->hasMessage()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 492
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 493
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->getMessage()Ljava/lang/String;

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

    .line 495
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->hasHttpCode()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->hasHttpCode()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 496
    :goto_4
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->hasHttpCode()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 497
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->getHttpCode()I

    move-result v1

    .line 498
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->getHttpCode()I

    move-result v2

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 500
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

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;
    .locals 1

    .line 1021
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    move-result-object v0

    return-object v0
.end method

.method public getHttpCode()I
    .locals 1

    .line 423
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->httpCode_:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->message_:Ljava/lang/Object;

    .line 370
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 371
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 373
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 375
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->message_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;",
            ">;"
        }
    .end annotation

    .line 1017
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 455
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 459
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 460
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->state_:I

    .line 461
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 463
    :cond_1
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 464
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->message_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 466
    :cond_2
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 467
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->httpCode_:I

    .line 468
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 470
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 471
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getState()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;
    .locals 1

    .line 345
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->state_:I

    invoke-static {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    move-result-object v0

    if-nez v0, :cond_0

    .line 346
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->NOT_REGISTERED:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    :cond_0
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasHttpCode()Z
    .locals 2

    .line 413
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->bitField0_:I

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

.method public hasMessage()Z
    .locals 2

    .line 359
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->bitField0_:I

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

.method public hasState()Z
    .locals 2

    .line 335
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->bitField0_:I

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

    .line 506
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 510
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 511
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->hasState()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 513
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->state_:I

    add-int/2addr v0, v1

    .line 515
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->hasMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 517
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 519
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->hasHttpCode()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 521
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->getHttpCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 523
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 524
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 171
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 428
    iget-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->hasState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 433
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->memoizedIsInitialized:B

    return v2

    .line 436
    :cond_2
    iput-byte v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;
    .locals 1

    .line 598
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;
    .locals 2

    .line 613
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;
    .locals 2

    .line 606
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$1;)V

    .line 607
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$Builder;

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

    .line 442
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 443
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->state_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 445
    :cond_0
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 446
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->message_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 448
    :cond_1
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 449
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;->httpCode_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
