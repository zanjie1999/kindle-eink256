.class public final Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "SecureTransportProtos.java"

# interfaces
.implements Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;",
        ">;",
        "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessageOrBuilder;"
    }
.end annotation


# instance fields
.field private aad_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private initializationVector_:Lcom/google/protobuf/ByteString;

.field private mac_:Lcom/google/protobuf/ByteString;

.field private payload_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 516
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 674
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->initializationVector_:Lcom/google/protobuf/ByteString;

    .line 725
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->payload_:Lcom/google/protobuf/ByteString;

    .line 776
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->mac_:Lcom/google/protobuf/ByteString;

    .line 827
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->aad_:Lcom/google/protobuf/ByteString;

    .line 517
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V
    .locals 0

    .line 499
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 522
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 674
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->initializationVector_:Lcom/google/protobuf/ByteString;

    .line 725
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->payload_:Lcom/google/protobuf/ByteString;

    .line 776
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->mac_:Lcom/google/protobuf/ByteString;

    .line 827
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->aad_:Lcom/google/protobuf/ByteString;

    .line 523
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V
    .locals 0

    .line 499
    invoke-direct {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 527
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->access$400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;
    .locals 0

    .line 609
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 499
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 499
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;
    .locals 2

    .line 553
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 555
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->build()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->build()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;
    .locals 5

    .line 561
    new-instance v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V

    .line 562
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 567
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->initializationVector_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->access$602(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 571
    :cond_1
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->payload_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->access$702(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 575
    :cond_2
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->mac_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->access$802(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 579
    :cond_3
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->aad_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->access$902(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 580
    invoke-static {v0, v3}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->access$1002(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;I)I

    .line 581
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;
    .locals 1

    .line 586
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->clone()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->clone()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

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

    .line 499
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->clone()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;
    .locals 1

    .line 549
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 545
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasAad()Z
    .locals 2

    .line 836
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->bitField0_:I

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

.method public hasInitializationVector()Z
    .locals 2

    .line 683
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMac()Z
    .locals 2

    .line 785
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->bitField0_:I

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

.method public hasPayload()Z
    .locals 2

    .line 734
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 510
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    const-class v2, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    .line 511
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 640
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->hasInitializationVector()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->hasPayload()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 646
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->hasMac()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 649
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->hasAad()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;
    .locals 1

    .line 621
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 622
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->hasInitializationVector()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->getInitializationVector()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->setInitializationVector(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    .line 625
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->hasPayload()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 626
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    .line 628
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->hasMac()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 629
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->getMac()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->setMac(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    .line 631
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->hasAad()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 632
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->getAad()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->setAad(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    .line 634
    :cond_4
    invoke-static {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->access$1100(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    .line 635
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 661
    :try_start_0
    sget-object v1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 667
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 663
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 664
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

    .line 667
    invoke-virtual {p0, v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    .line 669
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;
    .locals 1

    .line 612
    instance-of v0, p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    if-eqz v0, :cond_0

    .line 613
    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    return-object p0

    .line 615
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

    .line 499
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 499
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 499
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;
    .locals 0

    .line 884
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 499
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 499
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAad(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 859
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->bitField0_:I

    .line 860
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->aad_:Lcom/google/protobuf/ByteString;

    .line 861
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 857
    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;
    .locals 0

    .line 591
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 499
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 499
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setInitializationVector(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 706
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->bitField0_:I

    .line 707
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->initializationVector_:Lcom/google/protobuf/ByteString;

    .line 708
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 704
    throw p1
.end method

.method public setMac(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 808
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->bitField0_:I

    .line 809
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->mac_:Lcom/google/protobuf/ByteString;

    .line 810
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 806
    throw p1
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 757
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->bitField0_:I

    .line 758
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->payload_:Lcom/google/protobuf/ByteString;

    .line 759
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 755
    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;
    .locals 0

    .line 879
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 499
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 499
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    move-result-object p1

    return-object p1
.end method
