.class public final Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufCalculateKnowledgeProofClass.java"

# interfaces
.implements Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProofOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufCalculateKnowledgeProof"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private gv_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

.field private memoizedIsInitialized:B

.field private r_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 864
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    invoke-direct {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;-><init>()V

    sput-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 872
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$1;

    invoke-direct {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$1;-><init>()V

    sput-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 210
    iput-byte v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->memoizedIsInitialized:B

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 89
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_8

    .line 93
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    const/16 v5, 0xa

    if-eq v3, v5, :cond_4

    const/16 v5, 0x12

    if-eq v3, v5, :cond_1

    .line 99
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    .line 120
    :cond_1
    iget v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 121
    iget-object v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->r_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    invoke-virtual {v3}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    .line 123
    :goto_1
    sget-object v5, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    iput-object v5, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->r_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-eqz v3, :cond_3

    .line 125
    invoke-virtual {v3, v5}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    .line 126
    invoke-virtual {v3}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->r_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 128
    :cond_3
    iget v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->bitField0_:I

    goto :goto_0

    .line 107
    :cond_4
    iget v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->bitField0_:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    .line 108
    iget-object v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->gv_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    invoke-virtual {v3}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v0

    .line 110
    :goto_2
    sget-object v5, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    iput-object v5, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->gv_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-eqz v3, :cond_6

    .line 112
    invoke-virtual {v3, v5}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    .line 113
    invoke-virtual {v3}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->gv_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 115
    :cond_6
    iget v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->bitField0_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_3
    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 136
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 137
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 134
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :goto_4
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 140
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 141
    throw p1

    .line 139
    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 140
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    .line 85
    :cond_9
    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 69
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 210
    iput-byte p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$1;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 62
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$602(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->gv_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    return-object p1
.end method

.method static synthetic access$702(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->r_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    return-object p1
.end method

.method static synthetic access$802(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->bitField0_:I

    return p1
.end method

.method static synthetic access$900(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;
    .locals 1

    .line 868
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 145
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;
    .locals 1

    .line 382
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;
    .locals 1

    .line 385
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 270
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    if-nez v1, :cond_1

    .line 271
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 273
    :cond_1
    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 276
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->hasGv()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->hasGv()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 277
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->hasGv()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 278
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getGv()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    .line 279
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getGv()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 281
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->hasR()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->hasR()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 282
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->hasR()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 283
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getR()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    .line 284
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getR()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

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

    .line 286
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

.method public getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;
    .locals 1

    .line 891
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    return-object v0
.end method

.method public getGv()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->gv_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

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
            "Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;",
            ">;"
        }
    .end annotation

    .line 887
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getR()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->r_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 248
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 252
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getGv()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 256
    :cond_1
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 258
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getR()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 261
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasGv()Z
    .locals 2

    .line 166
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasR()Z
    .locals 2

    .line 195
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->bitField0_:I

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

    .line 292
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 296
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->hasGv()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 299
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getGv()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->hasR()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 303
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getR()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 305
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 150
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    const-class v2, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    .line 151
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 212
    iget-byte v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->hasGv()Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->memoizedIsInitialized:B

    return v2

    .line 220
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->hasR()Z

    move-result v0

    if-nez v0, :cond_3

    .line 221
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->memoizedIsInitialized:B

    return v2

    .line 224
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getGv()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 225
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->memoizedIsInitialized:B

    return v2

    .line 228
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getR()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    .line 229
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->memoizedIsInitialized:B

    return v2

    .line 232
    :cond_5
    iput-byte v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;
    .locals 1

    .line 380
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->newBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;
    .locals 2

    .line 395
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->newBuilderForType()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->newBuilderForType()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;
    .locals 2

    .line 388
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;-><init>(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;-><init>(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$1;)V

    .line 389
    invoke-virtual {v0, p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

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

    .line 238
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getGv()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 241
    :cond_0
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getR()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
