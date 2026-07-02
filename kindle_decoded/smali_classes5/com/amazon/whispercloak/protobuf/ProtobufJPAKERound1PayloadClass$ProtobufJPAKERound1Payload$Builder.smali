.class public final Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufJPAKERound1PayloadClass.java"

# interfaces
.implements Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1PayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;",
        ">;",
        "Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1PayloadOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private curveName_:Ljava/lang/Object;

.field private gx1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;
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

.field private gx1_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

.field private gx2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;
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

.field private gx2_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

.field private knowledgeProofForX1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;
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

.field private knowledgeProofForX1_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

.field private knowledgeProofForX2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;
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

.field private knowledgeProofForX2_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

.field private participantId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 850
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 1081
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->participantId_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1181
    iput-object v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx1_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 1335
    iput-object v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx2_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 1489
    iput-object v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX1_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 1643
    iput-object v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX2_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 1797
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->curveName_:Ljava/lang/Object;

    .line 851
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$1;)V
    .locals 0

    .line 833
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 856
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 1081
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->participantId_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1181
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx1_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 1335
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx2_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 1489
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX1_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 1643
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX2_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 1797
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->curveName_:Ljava/lang/Object;

    .line 857
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$1;)V
    .locals 0

    .line 833
    invoke-direct {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private getGx1FieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
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

    .line 1324
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1325
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1327
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->getGx1()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    .line 1328
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1329
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1330
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx1_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getGx2FieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
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

    .line 1478
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1479
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1481
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->getGx2()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    .line 1482
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1483
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1484
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx2_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 1486
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getKnowledgeProofForX1FieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
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

    .line 1632
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1633
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1635
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->getKnowledgeProofForX1()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v1

    .line 1636
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1637
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1638
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX1_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getKnowledgeProofForX2FieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
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

    .line 1786
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1787
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1789
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->getKnowledgeProofForX2()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v1

    .line 1790
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1791
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 1792
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX2_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 1794
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 861
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->getGx1FieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 863
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->getGx2FieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 864
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->getKnowledgeProofForX1FieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 865
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->getKnowledgeProofForX2FieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 0

    .line 991
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 833
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 833
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;
    .locals 2

    .line 911
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    move-result-object v0

    .line 912
    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 913
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 833
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->build()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 833
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->build()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;
    .locals 5

    .line 919
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$1;)V

    .line 920
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 925
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->participantId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->access$602(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 929
    :cond_1
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_2

    .line 930
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx1_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->access$702(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    goto :goto_1

    .line 932
    :cond_2
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->access$702(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    :goto_1
    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x4

    .line 937
    :cond_3
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_4

    .line 938
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx2_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->access$802(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    goto :goto_2

    .line 940
    :cond_4
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->access$802(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    :goto_2
    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_5

    or-int/lit8 v3, v3, 0x8

    .line 945
    :cond_5
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_6

    .line 946
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX1_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->access$902(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    goto :goto_3

    .line 948
    :cond_6
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->access$902(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    :goto_3
    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x10

    .line 953
    :cond_7
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v2, :cond_8

    .line 954
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX2_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->access$1002(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    goto :goto_4

    .line 956
    :cond_8
    invoke-virtual {v2}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->access$1002(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    :goto_4
    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    or-int/lit8 v3, v3, 0x20

    .line 961
    :cond_9
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->curveName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->access$1102(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    invoke-static {v0, v3}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->access$1202(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;I)I

    .line 963
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 833
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 833
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 1

    .line 968
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 833
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->clone()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 833
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->clone()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

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

    .line 833
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->clone()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;
    .locals 1

    .line 907
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 833
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 833
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 903
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getGx1()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1203
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx1_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1205
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    return-object v0
.end method

.method public getGx2()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 1

    .line 1356
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1357
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx2_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1359
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    return-object v0
.end method

.method public getKnowledgeProofForX1()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;
    .locals 1

    .line 1510
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1511
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX1_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1513
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    return-object v0
.end method

.method public getKnowledgeProofForX2()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;
    .locals 1

    .line 1664
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1665
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX2_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    :cond_0
    return-object v0

    .line 1667
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    return-object v0
.end method

.method public hasGx1()Z
    .locals 2

    .line 1192
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

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

    .line 1346
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

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

    .line 1500
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

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

    .line 1654
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

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

    .line 1090
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

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

    .line 844
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    const-class v2, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    .line 845
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1032
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->hasParticipantId()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1035
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->hasGx1()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 1038
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->hasGx2()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 1041
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->hasKnowledgeProofForX1()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 1044
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->hasKnowledgeProofForX2()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 1047
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->getGx1()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 1050
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->getGx2()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 1053
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->getKnowledgeProofForX1()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 1056
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->getKnowledgeProofForX2()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 1

    .line 1003
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1004
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasParticipantId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    .line 1006
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->access$600(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->participantId_:Ljava/lang/Object;

    .line 1007
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1009
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasGx1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1010
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getGx1()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->mergeGx1(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    .line 1012
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasGx2()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1013
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getGx2()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->mergeGx2(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    .line 1015
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasKnowledgeProofForX1()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1016
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getKnowledgeProofForX1()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->mergeKnowledgeProofForX1(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    .line 1018
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasKnowledgeProofForX2()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1019
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->getKnowledgeProofForX2()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->mergeKnowledgeProofForX2(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    .line 1021
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->hasCurveName()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1022
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    .line 1023
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->access$1100(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->curveName_:Ljava/lang/Object;

    .line 1024
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 1026
    :cond_6
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->access$1300(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    .line 1027
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1068
    :try_start_0
    sget-object v1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1074
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1070
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1071
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

    .line 1074
    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    .line 1076
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 1

    .line 994
    instance-of v0, p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    if-eqz v0, :cond_0

    .line 995
    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;

    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    return-object p0

    .line 997
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

    .line 833
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 833
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 833
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    return-object p0
.end method

.method public mergeGx1(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 3

    .line 1254
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 1255
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx1_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-eqz v0, :cond_0

    .line 1257
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx1_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 1259
    invoke-static {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->newBuilder(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx1_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    goto :goto_0

    .line 1261
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx1_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 1263
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 1265
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1267
    :goto_1
    iget p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeGx2(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 3

    .line 1408
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x4

    if-nez v0, :cond_1

    .line 1409
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx2_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-eqz v0, :cond_0

    .line 1411
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx2_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 1413
    invoke-static {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->newBuilder(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx2_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    goto :goto_0

    .line 1415
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx2_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 1417
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 1419
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1421
    :goto_1
    iget p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeKnowledgeProofForX1(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 3

    .line 1562
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x8

    if-nez v0, :cond_1

    .line 1563
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX1_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    if-eqz v0, :cond_0

    .line 1565
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX1_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 1567
    invoke-static {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->newBuilder(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX1_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    goto :goto_0

    .line 1569
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX1_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 1571
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 1573
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1575
    :goto_1
    iget p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeKnowledgeProofForX2(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 3

    .line 1716
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/16 v1, 0x10

    if-nez v0, :cond_1

    .line 1717
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX2_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    if-eqz v0, :cond_0

    .line 1719
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1720
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX2_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 1721
    invoke-static {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;->newBuilder(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX2_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    goto :goto_0

    .line 1723
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX2_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 1725
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 1727
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1729
    :goto_1
    iget p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 0

    .line 1903
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 833
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 833
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 0

    .line 973
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 833
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 833
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setGx1(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1220
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx1_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 1221
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1218
    throw p1

    .line 1223
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1225
    :goto_0
    iget p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    return-object p0
.end method

.method public setGx2(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1374
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->gx2_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 1375
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1372
    throw p1

    .line 1377
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1379
    :goto_0
    iget p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    return-object p0
.end method

.method public setKnowledgeProofForX1(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX1Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1528
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX1_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 1529
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1526
    throw p1

    .line 1531
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1533
    :goto_0
    iget p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    return-object p0
.end method

.method public setKnowledgeProofForX2(Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 1

    .line 1678
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX2Builder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1682
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->knowledgeProofForX2_:Lcom/amazon/whispercloak/protobuf/ProtobufCalculateKnowledgeProofClass$ProtobufCalculateKnowledgeProof;

    .line 1683
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1680
    throw p1

    .line 1685
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 1687
    :goto_0
    iget p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    return-object p0
.end method

.method public setParticipantId(Ljava/lang/String;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 1145
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->bitField0_:I

    .line 1146
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->participantId_:Ljava/lang/Object;

    .line 1147
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 1143
    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;
    .locals 0

    .line 1898
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 833
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 833
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound1PayloadClass$ProtobufJPAKERound1Payload$Builder;

    move-result-object p1

    return-object p1
.end method
