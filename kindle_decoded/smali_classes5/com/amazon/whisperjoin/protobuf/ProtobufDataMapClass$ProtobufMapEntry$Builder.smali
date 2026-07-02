.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufDataMapClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;",
        ">;",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntryOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private boolValue_:Z

.field private bytesValue_:Lcom/google/protobuf/ByteString;

.field private key_:Ljava/lang/Object;

.field private sint32Value_:I

.field private stringValue_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 559
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const-string v0, ""

    .line 721
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->key_:Ljava/lang/Object;

    .line 797
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bytesValue_:Lcom/google/protobuf/ByteString;

    .line 832
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->stringValue_:Ljava/lang/Object;

    .line 560
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$1;)V
    .locals 0

    .line 542
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    .line 565
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const-string p1, ""

    .line 721
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->key_:Ljava/lang/Object;

    .line 797
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bytesValue_:Lcom/google/protobuf/ByteString;

    .line 832
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->stringValue_:Ljava/lang/Object;

    .line 566
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$1;)V
    .locals 0

    .line 542
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 570
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->access$400()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
    .locals 0

    .line 658
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;
    .locals 2

    .line 598
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    move-result-object v0

    .line 599
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 600
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;
    .locals 5

    .line 606
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$1;)V

    .line 607
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 612
    :goto_0
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->key_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 616
    :cond_1
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bytesValue_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 620
    :cond_2
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->stringValue_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 624
    :cond_3
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->sint32Value_:I

    invoke-static {v0, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->access$902(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;I)I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 628
    :cond_4
    iget-boolean v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->boolValue_:Z

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->access$1002(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;Z)Z

    .line 629
    invoke-static {v0, v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->access$1102(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;I)I

    .line 630
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
    .locals 1

    .line 635
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

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

    .line 542
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;
    .locals 1

    .line 594
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 590
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public hasKey()Z
    .locals 2

    .line 726
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bitField0_:I

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

    .line 553
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    .line 554
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 696
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
    .locals 1

    .line 670
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 671
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bitField0_:I

    .line 673
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->access$600(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->key_:Ljava/lang/Object;

    .line 674
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 676
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasBytesValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 677
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getBytesValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->setBytesValue(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    .line 679
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 680
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bitField0_:I

    .line 681
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->access$800(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->stringValue_:Ljava/lang/Object;

    .line 682
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    .line 684
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasSint32Value()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 685
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getSint32Value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->setSint32Value(I)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    .line 687
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->hasBoolValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 688
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->getBoolValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->setBoolValue(Z)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    .line 690
    :cond_5
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->access$1200(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    .line 691
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 708
    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 714
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 710
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 711
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

    .line 714
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    .line 716
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
    .locals 1

    .line 661
    instance-of v0, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    if-eqz v0, :cond_0

    .line 662
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    return-object p0

    .line 664
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

    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 542
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 542
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
    .locals 0

    .line 978
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 542
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 542
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBoolValue(Z)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
    .locals 1

    .line 957
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bitField0_:I

    .line 958
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->boolValue_:Z

    .line 959
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setBytesValue(Lcom/google/protobuf/ByteString;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 817
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bitField0_:I

    .line 818
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bytesValue_:Lcom/google/protobuf/ByteString;

    .line 819
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 815
    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
    .locals 0

    .line 640
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 542
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setKey(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 769
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bitField0_:I

    .line 770
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->key_:Ljava/lang/Object;

    .line 771
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 767
    throw p1
.end method

.method public setSint32Value(I)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
    .locals 1

    .line 925
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bitField0_:I

    .line 926
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->sint32Value_:I

    .line 927
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 880
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->bitField0_:I

    .line 881
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->stringValue_:Ljava/lang/Object;

    .line 882
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 878
    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;
    .locals 0

    .line 973
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 542
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 542
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;

    move-result-object p1

    return-object p1
.end method
