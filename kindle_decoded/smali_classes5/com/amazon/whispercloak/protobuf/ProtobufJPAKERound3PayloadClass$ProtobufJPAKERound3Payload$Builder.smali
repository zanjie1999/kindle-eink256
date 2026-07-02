.class public final Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufJPAKERound3PayloadClass.java"

# interfaces
.implements Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3PayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;",
        ">;",
        "Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3PayloadOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private macTagBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
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

.field private macTag_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

.field private participantId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 463
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 611
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->participantId_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 711
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->macTag_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 464
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$1;)V
    .locals 0

    .line 446
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 469
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 611
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->participantId_:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 711
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->macTag_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 470
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$1;)V
    .locals 0

    .line 446
    invoke-direct {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private getMacTagFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
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

    .line 854
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->macTagBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 855
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 857
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->getMacTag()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v1

    .line 858
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 859
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->macTagBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 860
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->macTag_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->macTagBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 474
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->getMacTagFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;
    .locals 0

    .line 553
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;
    .locals 2

    .line 501
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 503
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->build()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->build()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;
    .locals 4

    .line 509
    new-instance v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$1;)V

    .line 510
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 515
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->participantId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->access$602(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 519
    :cond_1
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->macTagBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 520
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->macTag_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    invoke-static {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->access$702(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    goto :goto_1

    .line 522
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    invoke-static {v0, v1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->access$702(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 524
    :goto_1
    invoke-static {v0, v3}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->access$802(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;I)I

    .line 525
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;
    .locals 1

    .line 530
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->clone()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->clone()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

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

    .line 446
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->clone()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;
    .locals 1

    .line 497
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 493
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMacTag()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->macTagBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->macTag_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    :cond_0
    return-object v0

    .line 735
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    return-object v0
.end method

.method public hasMacTag()Z
    .locals 2

    .line 722
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->bitField0_:I

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

    .line 620
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->bitField0_:I

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

    .line 457
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    const-class v2, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    .line 458
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 580
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->hasParticipantId()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 583
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->hasMacTag()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 586
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->getMacTag()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;
    .locals 1

    .line 565
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 566
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->hasParticipantId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->bitField0_:I

    .line 568
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->access$600(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->participantId_:Ljava/lang/Object;

    .line 569
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 571
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->hasMacTag()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 572
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->getMacTag()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->mergeMacTag(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    .line 574
    :cond_2
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->access$900(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    .line 575
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 598
    :try_start_0
    sget-object v1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 604
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 600
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
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

    .line 604
    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    .line 606
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;
    .locals 1

    .line 556
    instance-of v0, p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    if-eqz v0, :cond_0

    .line 557
    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;

    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    return-object p0

    .line 559
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

    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 446
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 446
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    return-object p0
.end method

.method public mergeMacTag(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;
    .locals 3

    .line 784
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->macTagBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 785
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->macTag_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    if-eqz v0, :cond_0

    .line 787
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 788
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->macTag_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 789
    invoke-static {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;->newBuilder(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->macTag_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    goto :goto_0

    .line 791
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->macTag_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 793
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 795
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 797
    :goto_1
    iget p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->bitField0_:I

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;
    .locals 0

    .line 871
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 446
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 446
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;
    .locals 0

    .line 535
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 446
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setMacTag(Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->macTagBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 750
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->macTag_:Lcom/amazon/whispercloak/protobuf/ProtobufBigIntegerClass$ProtobufBigInteger;

    .line 751
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 748
    throw p1

    .line 753
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 755
    :goto_0
    iget p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->bitField0_:I

    return-object p0
.end method

.method public setParticipantId(Ljava/lang/String;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 675
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->bitField0_:I

    .line 676
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->participantId_:Ljava/lang/Object;

    .line 677
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 673
    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;
    .locals 0

    .line 866
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 446
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 446
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/ProtobufJPAKERound3PayloadClass$ProtobufJPAKERound3Payload$Builder;

    move-result-object p1

    return-object p1
.end method
