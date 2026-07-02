.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "ProtobufValidatableUuidClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;",
        ">;",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollectionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private protobufUuidCollectionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid$Builder;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuidOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private protobufUuidCollection_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 864
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1020
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollection_:Ljava/util/List;

    .line 865
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$1;)V
    .locals 0

    .line 847
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 870
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1020
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollection_:Ljava/util/List;

    .line 871
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$1;)V
    .locals 0

    .line 847
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureProtobufUuidCollectionIsMutable()V
    .locals 3

    .line 1022
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    .line 1023
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollection_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollection_:Ljava/util/List;

    .line 1024
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getProtobufUuidCollectionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid$Builder;",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuidOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1247
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollectionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 1248
    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollection_:Ljava/util/List;

    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->bitField0_:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1252
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 1253
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollectionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 1254
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollection_:Ljava/util/List;

    .line 1256
    :cond_1
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollectionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 875
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->getProtobufUuidCollectionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addProtobufUuidCollection(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;
    .locals 1

    .line 1096
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollectionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1100
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->ensureProtobufUuidCollectionIsMutable()V

    .line 1101
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollection_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1098
    throw p1

    .line 1104
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;
    .locals 0

    .line 947
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 847
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 847
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;
    .locals 2

    .line 900
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;

    move-result-object v0

    .line 901
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 902
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 847
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 847
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->build()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;
    .locals 3

    .line 908
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$1;)V

    .line 909
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->bitField0_:I

    .line 910
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollectionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 912
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollection_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollection_:Ljava/util/List;

    .line 913
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->bitField0_:I

    .line 915
    :cond_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollection_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;->access$1602(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 917
    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;->access$1602(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;Ljava/util/List;)Ljava/util/List;

    .line 919
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 847
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 847
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;
    .locals 1

    .line 924
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 847
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 847
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

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

    .line 847
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->clone()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;
    .locals 1

    .line 896
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 847
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 847
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 892
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getProtobufUuidCollection(I)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollectionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollection_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;

    return-object p1

    .line 1058
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;

    return-object p1
.end method

.method public getProtobufUuidCollectionCount()I
    .locals 1

    .line 1045
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollectionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollection_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 1048
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 858
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass;->access$1100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    .line 859
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 992
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->getProtobufUuidCollectionCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 993
    invoke-virtual {p0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->getProtobufUuidCollection(I)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufValidatableUuid;->isInitialized()Z

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

.method public mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;
    .locals 2

    .line 959
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollectionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 961
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;->access$1600(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 962
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollection_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;->access$1600(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollection_:Ljava/util/List;

    .line 964
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->bitField0_:I

    goto :goto_0

    .line 966
    :cond_1
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->ensureProtobufUuidCollectionIsMutable()V

    .line 967
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollection_:Ljava/util/List;

    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;->access$1600(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 969
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    goto :goto_1

    .line 972
    :cond_2
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;->access$1600(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 973
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollectionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 974
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollectionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    .line 975
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollectionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 976
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;->access$1600(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollection_:Ljava/util/List;

    .line 977
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->bitField0_:I

    .line 979
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;->access$1700()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 980
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->getProtobufUuidCollectionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_3
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollectionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    .line 982
    :cond_4
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->protobufUuidCollectionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;->access$1600(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    .line 986
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;->access$1800(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    .line 987
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1006
    :try_start_0
    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1012
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1008
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1009
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

    .line 1012
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    .line 1014
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;
    .locals 1

    .line 950
    instance-of v0, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;

    if-eqz v0, :cond_0

    .line 951
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;

    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    return-object p0

    .line 953
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

    .line 847
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 847
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 847
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 847
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 847
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    return-object p0
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;
    .locals 0

    .line 1265
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 847
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 847
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;
    .locals 0

    .line 929
    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 847
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 847
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;
    .locals 0

    .line 1260
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-object p1, p0

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 847
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 847
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/amazon/whisperjoin/protobuf/ProtobufValidatableUuidClass$ProtobufUuidCollection$Builder;

    move-result-object p1

    return-object p1
.end method
