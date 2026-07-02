.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufProvisioningDoneFailureEventClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;",
        ">;",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEventOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private eventDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailureOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private eventData_:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

.field private uuid_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 413
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 559
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->uuid_:Lcom/google/protobuf/ByteString;

    const/4 v0, 0x0

    .line 610
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->eventData_:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    .line 414
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$1;)V
    .locals 0

    .line 396
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 419
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 559
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->uuid_:Lcom/google/protobuf/ByteString;

    const/4 p1, 0x0

    .line 610
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->eventData_:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    .line 420
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$1;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private getEventDataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilderV3<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailureOrBuilder;",
            ">;"
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->eventDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 754
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 756
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->getEventData()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object v1

    .line 757
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 758
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilderV3;-><init>(Lcom/google/protobuf/AbstractMessage;Lcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->eventDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 759
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->eventData_:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->eventDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 424
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->getEventDataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;
    .locals 0

    .line 503
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 396
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 396
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;
    .locals 2

    .line 451
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 453
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;
    .locals 4

    .line 459
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$1;)V

    .line 460
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 465
    :goto_0
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->uuid_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;->access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->eventDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 470
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->eventData_:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;->access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    goto :goto_1

    .line 472
    :cond_2
    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilderV3;->build()Lcom/google/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;->access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    .line 474
    :goto_1
    invoke-static {v0, v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;->access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;I)I

    .line 475
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;
    .locals 1

    .line 480
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

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

    .line 396
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;
    .locals 1

    .line 447
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 443
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getEventData()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->eventDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->eventData_:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object v0

    :cond_0
    return-object v0

    .line 634
    :cond_1
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/google/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    return-object v0
.end method

.method public hasEventData()Z
    .locals 2

    .line 621
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->bitField0_:I

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

    .line 568
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->bitField0_:I

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

    .line 407
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    .line 408
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 528
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->hasUuid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 531
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->hasEventData()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 534
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->getEventData()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public mergeEventData(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;
    .locals 3

    .line 683
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->eventDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 684
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->eventData_:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    if-eqz v0, :cond_0

    .line 686
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 687
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->eventData_:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    .line 688
    invoke-static {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;->newBuilder(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->eventData_:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    goto :goto_0

    .line 690
    :cond_0
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->eventData_:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    .line 692
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 694
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 696
    :goto_1
    iget p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->bitField0_:I

    return-object p0
.end method

.method public mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;
    .locals 1

    .line 515
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 516
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;->hasUuid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;->getUuid()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->setUuid(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    .line 519
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;->hasEventData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 520
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;->getEventData()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->mergeEventData(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    .line 522
    :cond_2
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;->access$900(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    .line 523
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 546
    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 552
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 548
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
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

    .line 552
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    .line 554
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;
    .locals 1

    .line 506
    instance-of v0, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;

    if-eqz v0, :cond_0

    .line 507
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    return-object p0

    .line 509
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

    .line 396
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 396
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 396
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;
    .locals 0

    .line 770
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 396
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 396
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setEventData(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->eventDataBuilder_:Lcom/google/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 649
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->eventData_:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningFailureClass$ProtobufProvisioningFailure;

    .line 650
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 647
    throw p1

    .line 652
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/SingleFieldBuilderV3;

    .line 654
    :goto_0
    iget p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->bitField0_:I

    return-object p0
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;
    .locals 0

    .line 485
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 396
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 396
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;
    .locals 0

    .line 765
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 396
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 396
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setUuid(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 591
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->bitField0_:I

    .line 592
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningDoneFailureEventClass$ProtobufProvisioningDoneFailureEvent$Builder;->uuid_:Lcom/google/protobuf/ByteString;

    .line 593
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 589
    throw p1
.end method
