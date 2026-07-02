.class public final Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufJPAKERound3PayloadClass.java"

# interfaces
.implements Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3PayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufJPAKERound3Payload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private macTag_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

.field private memoizedIsInitialized:B

.field private volatile participantId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 881
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    invoke-direct {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;-><init>()V

    sput-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    .line 889
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$1;

    invoke-direct {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$1;-><init>()V

    sput-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 255
    iput-byte v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->memoizedIsInitialized:B

    const-string v0, ""

    .line 90
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->participantId_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 108
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_6

    .line 112
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    const/16 v5, 0xa

    if-eq v3, v5, :cond_4

    const/16 v5, 0x12

    if-eq v3, v5, :cond_1

    .line 118
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 132
    :cond_1
    iget v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 133
    iget-object v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->macTag_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    invoke-virtual {v3}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    .line 135
    :goto_1
    sget-object v5, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    iput-object v5, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->macTag_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-eqz v3, :cond_3

    .line 137
    invoke-virtual {v3, v5}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    .line 138
    invoke-virtual {v3}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->macTag_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 140
    :cond_3
    iget v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->bitField0_:I

    goto :goto_0

    .line 125
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 126
    iget v5, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->bitField0_:I

    .line 127
    iput-object v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->participantId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 148
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 149
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 146
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :goto_3
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 152
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 153
    throw p1

    .line 151
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 152
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    .line 104
    :cond_7
    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 87
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 255
    iput-byte p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 80
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;)Ljava/lang/Object;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->participantId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->participantId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->macTag_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    return-object p1
.end method

.method static synthetic access$802(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;I)I
    .locals 0

    .line 80
    iput p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->bitField0_:I

    return p1
.end method

.method static synthetic access$900(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;
    .locals 1

    .line 885
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 157
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;
    .locals 1

    .line 422
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 374
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 310
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    if-nez v1, :cond_1

    .line 311
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 313
    :cond_1
    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    .line 316
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->hasParticipantId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->hasParticipantId()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 317
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->hasParticipantId()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 318
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->getParticipantId()Ljava/lang/String;

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

    .line 321
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->hasMacTag()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->hasMacTag()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 322
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->hasMacTag()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 323
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->getMacTag()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    .line 324
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->getMacTag()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 326
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

.method public getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;
    .locals 1

    .line 908
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    move-result-object v0

    return-object v0
.end method

.method public getMacTag()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->macTag_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;",
            ">;"
        }
    .end annotation

    .line 904
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->participantId_:Ljava/lang/Object;

    .line 189
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 190
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 192
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 194
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iput-object v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->participantId_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSerializedSize()I
    .locals 3

    .line 289
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 293
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 294
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->participantId_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 296
    :cond_1
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 298
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->getMacTag()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 300
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasMacTag()Z
    .locals 2

    .line 232
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->bitField0_:I

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

.method public hasParticipantId()Z
    .locals 2

    .line 178
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->bitField0_:I

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

    .line 332
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 336
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 337
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->hasParticipantId()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 339
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->hasMacTag()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 343
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->getMacTag()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 345
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 346
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 162
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    const-class v2, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 257
    iget-byte v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->hasParticipantId()Z

    move-result v0

    if-nez v0, :cond_2

    .line 262
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->memoizedIsInitialized:B

    return v2

    .line 265
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->hasMacTag()Z

    move-result v0

    if-nez v0, :cond_3

    .line 266
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->memoizedIsInitialized:B

    return v2

    .line 269
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->getMacTag()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 270
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->memoizedIsInitialized:B

    return v2

    .line 273
    :cond_4
    iput-byte v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;
    .locals 1

    .line 420
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->newBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;
    .locals 2

    .line 435
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->newBuilderForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->newBuilderForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;
    .locals 2

    .line 428
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;-><init>(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;-><init>(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$1;)V

    .line 429
    invoke-virtual {v0, p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

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

    .line 279
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->participantId_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 282
    :cond_0
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->getMacTag()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
