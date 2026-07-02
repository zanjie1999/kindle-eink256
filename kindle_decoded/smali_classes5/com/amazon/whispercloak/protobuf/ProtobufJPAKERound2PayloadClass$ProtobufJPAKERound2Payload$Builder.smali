.class public final Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufJPAKERound2PayloadClass.java"

# interfaces
.implements Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2PayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;",
        ">;",
        "Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2PayloadOrBuilder;"
    }
.end annotation


# instance fields
.field private aBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;",
            "Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;",
            "Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigIntegerOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private a_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

.field private bitField0_:I

.field private knowledgeProofForX2SBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;",
            "Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;",
            "Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProofOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private knowledgeProofForX2S_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

.field private participantId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 558
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 730
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->participantId_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 830
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->a_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 984
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->knowledgeProofForX2S_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 559
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$1;)V
    .locals 0

    .line 541
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 564
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 730
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->participantId_:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 830
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->a_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 984
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->knowledgeProofForX2S_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 565
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$1;)V
    .locals 0

    .line 541
    invoke-direct {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private getAFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;",
            "Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;",
            "Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigIntegerOrBuilder;",
            ">;"
        }
    .end annotation

    .line 973
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->aBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 974
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 976
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->getA()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    .line 977
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 978
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->aBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 979
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->a_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->aBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getKnowledgeProofForX2SFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;",
            "Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;",
            "Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProofOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1127
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->knowledgeProofForX2SBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1128
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1130
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->getKnowledgeProofForX2S()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v1

    .line 1131
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1132
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->knowledgeProofForX2SBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1133
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->knowledgeProofForX2S_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->knowledgeProofForX2SBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 569
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->getAFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 571
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->getKnowledgeProofForX2SFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;
    .locals 0

    .line 663
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 541
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 541
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;
    .locals 2

    .line 603
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 605
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->build()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->build()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;
    .locals 5

    .line 611
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$1;)V

    .line 612
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 617
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->participantId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->access$602(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 621
    :cond_1
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->aBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_2

    .line 622
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->a_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->access$702(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    goto :goto_1

    .line 624
    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->access$702(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    :goto_1
    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x4

    .line 629
    :cond_3
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->knowledgeProofForX2SBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 630
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->knowledgeProofForX2S_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    invoke-static {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->access$802(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    goto :goto_2

    .line 632
    :cond_4
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    invoke-static {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->access$802(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 634
    :goto_2
    invoke-static {v0, v3}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->access$902(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;I)I

    .line 635
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;
    .locals 1

    .line 640
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->clone()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->clone()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 541
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->clone()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getA()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->aBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 852
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->a_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    :cond_0
    return-object v0

    .line 854
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;
    .locals 1

    .line 599
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 595
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getKnowledgeProofForX2S()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->knowledgeProofForX2SBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->knowledgeProofForX2S_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1008
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    return-object v0
.end method

.method public hasA()Z
    .locals 2

    .line 841
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->bitField0_:I

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

.method public hasKnowledgeProofForX2S()Z
    .locals 2

    .line 995
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->bitField0_:I

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

.method public hasParticipantId()Z
    .locals 2

    .line 739
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 552
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;

    const-class v2, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    .line 553
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 693
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->hasParticipantId()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->hasA()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 699
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->hasKnowledgeProofForX2S()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 702
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->getA()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 705
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->getKnowledgeProofForX2S()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public mergeA(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;
    .locals 3

    .line 903
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->aBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 904
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->a_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-eqz v0, :cond_0

    .line 906
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 907
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->a_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 908
    invoke-static {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->newBuilder(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->a_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    goto :goto_0

    .line 910
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->a_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 912
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 914
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 916
    :goto_1
    iget p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;
    .locals 1

    .line 675
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 676
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->hasParticipantId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->bitField0_:I

    .line 678
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->access$600(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->participantId_:Ljava/lang/Object;

    .line 679
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 681
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->hasA()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 682
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->getA()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->mergeA(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    .line 684
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->hasKnowledgeProofForX2S()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 685
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->getKnowledgeProofForX2S()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->mergeKnowledgeProofForX2S(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    .line 687
    :cond_3
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->access$1000(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    .line 688
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 717
    :try_start_0
    sget-object v1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 723
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 719
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 720
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 723
    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    .line 725
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;
    .locals 1

    .line 666
    instance-of v0, p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;

    if-eqz v0, :cond_0

    .line 667
    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;

    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    return-object p0

    .line 669
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 541
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 541
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    return-object p0
.end method

.method public mergeKnowledgeProofForX2S(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;
    .locals 3

    .line 1057
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->knowledgeProofForX2SBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 1058
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->knowledgeProofForX2S_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    if-eqz v0, :cond_0

    .line 1060
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->knowledgeProofForX2S_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 1062
    invoke-static {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->newBuilder(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->knowledgeProofForX2S_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    goto :goto_0

    .line 1064
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->knowledgeProofForX2S_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 1066
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 1068
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1070
    :goto_1
    iget p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;
    .locals 0

    .line 1144
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 541
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 541
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setA(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->aBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 869
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->a_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 870
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 867
    throw p1

    .line 872
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 874
    :goto_0
    iget p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->bitField0_:I

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;
    .locals 0

    .line 645
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 541
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 541
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setKnowledgeProofForX2S(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->knowledgeProofForX2SBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1023
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->knowledgeProofForX2S_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 1024
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1021
    throw p1

    .line 1026
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1028
    :goto_0
    iget p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->bitField0_:I

    return-object p0
.end method

.method public setParticipantId(Ljava/lang/String;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 794
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->bitField0_:I

    .line 795
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->participantId_:Ljava/lang/Object;

    .line 796
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 792
    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;
    .locals 0

    .line 1139
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 541
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 541
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound2PayloadClass$ProtobufJPAKERound2Payload$Builder;

    move-result-object p1

    return-object p1
.end method
