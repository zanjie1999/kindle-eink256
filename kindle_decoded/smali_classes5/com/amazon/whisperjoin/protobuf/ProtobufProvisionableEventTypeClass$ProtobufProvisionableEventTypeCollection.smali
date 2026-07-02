.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufProvisionableEventTypeClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollectionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufProvisionableEventTypeCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private protobufProvisionableEventTypeCollection_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1401
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;

    .line 1409
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 705
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 811
    iput-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->memoizedIsInitialized:B

    .line 706
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->protobufProvisionableEventTypeCollection_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 718
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;-><init>()V

    if-eqz p2, :cond_7

    .line 724
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 728
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    .line 734
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_2

    .line 742
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->protobufProvisionableEventTypeCollection_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 745
    :cond_2
    iget-object v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->protobufProvisionableEventTypeCollection_:Ljava/util/List;

    sget-object v5, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventType;->PARSER:Lcom/google/protobuf/Parser;

    .line 746
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    .line 745
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 754
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 755
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 752
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-ne p2, v3, :cond_4

    .line 758
    iget-object p2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->protobufProvisionableEventTypeCollection_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->protobufProvisionableEventTypeCollection_:Ljava/util/List;

    .line 760
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 761
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 762
    throw p1

    :cond_5
    and-int/lit8 p1, v2, 0x1

    if-ne p1, v3, :cond_6

    .line 758
    iget-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->protobufProvisionableEventTypeCollection_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->protobufProvisionableEventTypeCollection_:Ljava/util/List;

    .line 760
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 761
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 720
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 696
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 703
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 811
    iput-byte p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$1;)V
    .locals 0

    .line 696
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1500()Z
    .locals 1

    .line 696
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;)Ljava/util/List;
    .locals 0

    .line 696
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->protobufProvisionableEventTypeCollection_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->protobufProvisionableEventTypeCollection_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1800()Z
    .locals 1

    .line 696
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 696
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;
    .locals 1

    .line 1405
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 766
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;
    .locals 1

    .line 954
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;
    .locals 1

    .line 957
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 906
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 854
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;

    if-nez v1, :cond_1

    .line 855
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 857
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;

    .line 860
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->getProtobufProvisionableEventTypeCollectionList()Ljava/util/List;

    move-result-object v1

    .line 861
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->getProtobufProvisionableEventTypeCollectionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 862
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;
    .locals 1

    .line 1428
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 696
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 696
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;",
            ">;"
        }
    .end annotation

    .line 1424
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProtobufProvisionableEventTypeCollection(I)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventType;
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->protobufProvisionableEventTypeCollection_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventType;

    return-object p1
.end method

.method public getProtobufProvisionableEventTypeCollectionCount()I
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->protobufProvisionableEventTypeCollection_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getProtobufProvisionableEventTypeCollectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventType;",
            ">;"
        }
    .end annotation

    .line 782
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->protobufProvisionableEventTypeCollection_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 836
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 840
    :goto_0
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->protobufProvisionableEventTypeCollection_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 841
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->protobufProvisionableEventTypeCollection_:Ljava/util/List;

    .line 842
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 844
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 845
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 868
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 872
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 873
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->getProtobufProvisionableEventTypeCollectionCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 875
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->getProtobufProvisionableEventTypeCollectionList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 877
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 878
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 771
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass;->access$1200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;

    .line 772
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 813
    iget-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 817
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->getProtobufProvisionableEventTypeCollectionCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 818
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->getProtobufProvisionableEventTypeCollection(I)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventType;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 819
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 823
    :cond_3
    iput-byte v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;
    .locals 1

    .line 952
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;
    .locals 2

    .line 967
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 696
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 696
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 696
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;
    .locals 2

    .line 960
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$1;)V

    .line 961
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 696
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection$Builder;

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

    const/4 v0, 0x0

    .line 829
    :goto_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->protobufProvisionableEventTypeCollection_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 830
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisionableEventTypeClass$ProtobufProvisionableEventTypeCollection;->protobufProvisionableEventTypeCollection_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
