.class public final Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufJPAKERound1PayloadClass.java"

# interfaces
.implements Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1PayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufJPAKERound1Payload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private volatile curveName_:Ljava/lang/Object;

.field private gx1_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

.field private gx2_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

.field private knowledgeProofForX1_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

.field private knowledgeProofForX2_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

.field private memoizedIsInitialized:B

.field private volatile participantId_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1913
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    invoke-direct {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;-><init>()V

    sput-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    .line 1921
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$1;

    invoke-direct {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$1;-><init>()V

    sput-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 190
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 555
    iput-byte v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->memoizedIsInitialized:B

    const-string v0, ""

    .line 191
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->participantId_:Ljava/lang/Object;

    .line 192
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->curveName_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_11

    .line 210
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_10

    .line 214
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_f

    const/16 v5, 0xa

    if-eq v3, v5, :cond_e

    const/16 v5, 0x12

    if-eq v3, v5, :cond_b

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_8

    const/16 v5, 0x22

    if-eq v3, v5, :cond_5

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_2

    const/16 v5, 0x32

    if-eq v3, v5, :cond_1

    .line 220
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 285
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 286
    iget v4, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    .line 287
    iput-object v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->curveName_:Ljava/lang/Object;

    goto :goto_0

    .line 273
    :cond_2
    iget v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    .line 274
    iget-object v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->knowledgeProofForX2_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    invoke-virtual {v3}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v0

    .line 276
    :goto_1
    sget-object v5, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    iput-object v5, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->knowledgeProofForX2_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    if-eqz v3, :cond_4

    .line 278
    invoke-virtual {v3, v5}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    .line 279
    invoke-virtual {v3}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->knowledgeProofForX2_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 281
    :cond_4
    iget v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    goto :goto_0

    .line 260
    :cond_5
    iget v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_6

    .line 261
    iget-object v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->knowledgeProofForX1_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    invoke-virtual {v3}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object v3, v0

    .line 263
    :goto_2
    sget-object v5, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    iput-object v5, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->knowledgeProofForX1_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    if-eqz v3, :cond_7

    .line 265
    invoke-virtual {v3, v5}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    .line 266
    invoke-virtual {v3}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->knowledgeProofForX1_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 268
    :cond_7
    iget v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    goto/16 :goto_0

    .line 247
    :cond_8
    iget v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_9

    .line 248
    iget-object v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->gx2_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    invoke-virtual {v3}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object v3

    goto :goto_3

    :cond_9
    move-object v3, v0

    .line 250
    :goto_3
    sget-object v5, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    iput-object v5, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->gx2_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-eqz v3, :cond_a

    .line 252
    invoke-virtual {v3, v5}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    .line 253
    invoke-virtual {v3}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->gx2_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 255
    :cond_a
    iget v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    goto/16 :goto_0

    .line 234
    :cond_b
    iget v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_c

    .line 235
    iget-object v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->gx1_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    invoke-virtual {v3}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object v3

    goto :goto_4

    :cond_c
    move-object v3, v0

    .line 237
    :goto_4
    sget-object v5, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    iput-object v5, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->gx1_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-eqz v3, :cond_d

    .line 239
    invoke-virtual {v3, v5}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    .line 240
    invoke-virtual {v3}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->gx1_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 242
    :cond_d
    iget v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    goto/16 :goto_0

    .line 227
    :cond_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    .line 228
    iget v5, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    or-int/2addr v4, v5

    iput v4, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    .line 229
    iput-object v3, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->participantId_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_f
    :goto_5
    const/4 v2, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 295
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 296
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 293
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :goto_6
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 299
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 300
    throw p1

    .line 298
    :cond_10
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 299
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    .line 206
    :cond_11
    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 188
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 555
    iput-byte p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$1;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->knowledgeProofForX2_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;)Ljava/lang/Object;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->curveName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->curveName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;I)I
    .locals 0

    .line 181
    iput p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    return p1
.end method

.method static synthetic access$1300(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 181
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;)Ljava/lang/Object;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->participantId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->participantId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->gx1_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    return-object p1
.end method

.method static synthetic access$802(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->gx2_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    return-object p1
.end method

.method static synthetic access$902(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->knowledgeProofForX1_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;
    .locals 1

    .line 1917
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 304
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 1

    .line 809
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 761
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 661
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    if-nez v1, :cond_1

    .line 662
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 664
    :cond_1
    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    .line 667
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasParticipantId()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasParticipantId()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 668
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasParticipantId()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 669
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    .line 670
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getParticipantId()Ljava/lang/String;

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

    .line 672
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasGx1()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasGx1()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 673
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasGx1()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 674
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getGx1()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    .line 675
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getGx1()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

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

    .line 677
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasGx2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasGx2()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 678
    :goto_4
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasGx2()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 679
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getGx2()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    .line 680
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getGx2()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 682
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasKnowledgeProofForX1()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasKnowledgeProofForX1()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 683
    :goto_6
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasKnowledgeProofForX1()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 684
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getKnowledgeProofForX1()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v1

    .line 685
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getKnowledgeProofForX1()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 687
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasKnowledgeProofForX2()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasKnowledgeProofForX2()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 688
    :goto_8
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasKnowledgeProofForX2()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 689
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getKnowledgeProofForX2()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v1

    .line 690
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getKnowledgeProofForX2()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 692
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasCurveName()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasCurveName()Z

    move-result v2

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 693
    :goto_a
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasCurveName()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    .line 694
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getCurveName()Ljava/lang/String;

    move-result-object v1

    .line 695
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getCurveName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_b
    if-eqz v1, :cond_14

    .line 697
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_c

    :cond_14
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public getCurveName()Ljava/lang/String;
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->curveName_:Ljava/lang/Object;

    .line 522
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 523
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 525
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 527
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 528
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    iput-object v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->curveName_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;
    .locals 1

    .line 1940
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    move-result-object v0

    return-object v0
.end method

.method public getGx1()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->gx1_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGx2()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->gx2_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getKnowledgeProofForX1()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->knowledgeProofForX1_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getKnowledgeProofForX2()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->knowledgeProofForX2_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

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
            "Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;",
            ">;"
        }
    .end annotation

    .line 1936
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->participantId_:Ljava/lang/Object;

    .line 336
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 337
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 339
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 341
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iput-object v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->participantId_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSerializedSize()I
    .locals 4

    .line 625
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 629
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 630
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->participantId_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 632
    :cond_1
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 634
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getGx1()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 636
    :cond_2
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 638
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getGx2()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 640
    :cond_3
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 642
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getKnowledgeProofForX1()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 644
    :cond_4
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 646
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getKnowledgeProofForX2()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 648
    :cond_5
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 649
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->curveName_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 651
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 652
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasCurveName()Z
    .locals 2

    .line 511
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGx1()Z
    .locals 2

    .line 379
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

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

.method public hasGx2()Z
    .locals 2

    .line 412
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

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

.method public hasKnowledgeProofForX1()Z
    .locals 2

    .line 445
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

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

.method public hasKnowledgeProofForX2()Z
    .locals 2

    .line 478
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

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

.method public hasParticipantId()Z
    .locals 2

    .line 325
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

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

    .line 703
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 707
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 708
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasParticipantId()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 710
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 712
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasGx1()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 714
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getGx1()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 716
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasGx2()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 718
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getGx2()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 720
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasKnowledgeProofForX1()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 722
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getKnowledgeProofForX1()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 724
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasKnowledgeProofForX2()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 726
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getKnowledgeProofForX2()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 728
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasCurveName()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 730
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getCurveName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    mul-int/lit8 v0, v0, 0x1d

    .line 732
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 733
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 309
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    const-class v2, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    .line 310
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 557
    iget-byte v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 561
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasParticipantId()Z

    move-result v0

    if-nez v0, :cond_2

    .line 562
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->memoizedIsInitialized:B

    return v2

    .line 565
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasGx1()Z

    move-result v0

    if-nez v0, :cond_3

    .line 566
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->memoizedIsInitialized:B

    return v2

    .line 569
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasGx2()Z

    move-result v0

    if-nez v0, :cond_4

    .line 570
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->memoizedIsInitialized:B

    return v2

    .line 573
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasKnowledgeProofForX1()Z

    move-result v0

    if-nez v0, :cond_5

    .line 574
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->memoizedIsInitialized:B

    return v2

    .line 577
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasKnowledgeProofForX2()Z

    move-result v0

    if-nez v0, :cond_6

    .line 578
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->memoizedIsInitialized:B

    return v2

    .line 581
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getGx1()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    .line 582
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->memoizedIsInitialized:B

    return v2

    .line 585
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getGx2()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    .line 586
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->memoizedIsInitialized:B

    return v2

    .line 589
    :cond_8
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getKnowledgeProofForX1()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 590
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->memoizedIsInitialized:B

    return v2

    .line 593
    :cond_9
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getKnowledgeProofForX2()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_a

    .line 594
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->memoizedIsInitialized:B

    return v2

    .line 597
    :cond_a
    iput-byte v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 1

    .line 807
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->newBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 2

    .line 822
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->newBuilderForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 181
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->newBuilderForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 2

    .line 815
    sget-object v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;-><init>(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;-><init>(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$1;)V

    .line 816
    invoke-virtual {v0, p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->toBuilder()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

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

    .line 603
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 604
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->participantId_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 606
    :cond_0
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 607
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getGx1()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 609
    :cond_1
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 610
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getGx2()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 612
    :cond_2
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 613
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getKnowledgeProofForX1()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 615
    :cond_3
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 616
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getKnowledgeProofForX2()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 618
    :cond_4
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 619
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->curveName_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 621
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
