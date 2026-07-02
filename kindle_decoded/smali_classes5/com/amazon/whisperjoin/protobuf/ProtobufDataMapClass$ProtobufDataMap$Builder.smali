.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufDataMapClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMapOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;",
        ">;",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMapOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private dataMapBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntryOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private dataMap_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1345
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1501
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMap_:Ljava/util/List;

    .line 1346
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$1;)V
    .locals 0

    .line 1328
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1351
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1501
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMap_:Ljava/util/List;

    .line 1352
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$1;)V
    .locals 0

    .line 1328
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureDataMapIsMutable()V
    .locals 3

    .line 1503
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 1504
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMap_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMap_:Ljava/util/List;

    .line 1505
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getDataMapFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry$Builder;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntryOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1728
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMapBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1729
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMap_:Ljava/util/List;

    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1733
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1734
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMapBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1735
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMap_:Ljava/util/List;

    .line 1737
    :cond_1
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMapBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1356
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->getDataMapFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addDataMap(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;
    .locals 1

    .line 1577
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMapBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1581
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->ensureDataMapIsMutable()V

    .line 1582
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMap_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1583
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1579
    throw p1

    .line 1585
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;
    .locals 0

    .line 1428
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1328
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1328
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;
    .locals 2

    .line 1381
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v0

    .line 1382
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1383
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 1328
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1328
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;
    .locals 3

    .line 1389
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$1;)V

    .line 1390
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->bitField0_:I

    .line 1391
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMapBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 1393
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMap_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMap_:Ljava/util/List;

    .line 1394
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->bitField0_:I

    .line 1396
    :cond_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMap_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->access$2002(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 1398
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->access$2002(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;Ljava/util/List;)Ljava/util/List;

    .line 1400
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 1328
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1328
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;
    .locals 1

    .line 1405
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1328
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1328
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

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

    .line 1328
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDataMap(I)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;
    .locals 1

    .line 1536
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMapBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMap_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    return-object p1

    .line 1539
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    return-object p1
.end method

.method public getDataMapCount()I
    .locals 1

    .line 1526
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMapBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMap_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1529
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;
    .locals 1

    .line 1377
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1328
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1328
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1373
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->access$1400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1339
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->access$1500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    .line 1340
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1473
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->getDataMapCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1474
    invoke-virtual {p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->getDataMap(I)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;
    .locals 2

    .line 1440
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1441
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMapBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 1442
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->access$2000(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1443
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMap_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1444
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->access$2000(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMap_:Ljava/util/List;

    .line 1445
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->bitField0_:I

    goto :goto_0

    .line 1447
    :cond_1
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->ensureDataMapIsMutable()V

    .line 1448
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMap_:Ljava/util/List;

    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->access$2000(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1450
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 1453
    :cond_2
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->access$2000(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1454
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMapBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1455
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMapBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 1456
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMapBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 1457
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->access$2000(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMap_:Ljava/util/List;

    .line 1458
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->bitField0_:I

    .line 1460
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->access$2100()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1461
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->getDataMapFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMapBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 1463
    :cond_4
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->dataMapBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->access$2000(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 1467
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->access$2200(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    .line 1468
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1487
    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1493
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1489
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1490
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

    .line 1493
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    .line 1495
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;
    .locals 1

    .line 1431
    instance-of v0, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    if-eqz v0, :cond_0

    .line 1432
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    return-object p0

    .line 1434
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

    .line 1328
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1328
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1328
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1328
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1328
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;
    .locals 0

    .line 1746
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1328
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1328
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;
    .locals 0

    .line 1410
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1328
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1328
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;
    .locals 0

    .line 1741
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1328
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1328
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object p1

    return-object p1
.end method
