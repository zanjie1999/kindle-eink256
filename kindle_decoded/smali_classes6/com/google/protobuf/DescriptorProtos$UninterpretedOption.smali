.class public final Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UninterpretedOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;,
        Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;,
        Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private volatile aggregateValue_:Ljava/lang/Object;

.field private bitField0_:I

.field private doubleValue_:D

.field private volatile identifierValue_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private name_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation
.end field

.field private negativeIntValue_:J

.field private positiveIntValue_:J

.field private stringValue_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36053
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 36061
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$1;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$1;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 34002
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 34982
    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->memoizedIsInitialized:B

    .line 34003
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    const-string v0, ""

    .line 34004
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 34005
    iput-wide v1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->positiveIntValue_:J

    .line 34006
    iput-wide v1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->negativeIntValue_:J

    const-wide/16 v1, 0x0

    .line 34007
    iput-wide v1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->doubleValue_:D

    .line 34008
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->stringValue_:Lcom/google/protobuf/ByteString;

    .line 34009
    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 34021
    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;-><init>()V

    if-eqz p2, :cond_d

    .line 34027
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_b

    .line 34031
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v5, 0x12

    if-eq v4, v5, :cond_7

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_6

    const/16 v5, 0x20

    if-eq v4, v5, :cond_5

    const/16 v6, 0x28

    if-eq v4, v6, :cond_4

    const/16 v6, 0x31

    if-eq v4, v6, :cond_3

    const/16 v6, 0x3a

    if-eq v4, v6, :cond_2

    const/16 v6, 0x42

    if-eq v4, v6, :cond_1

    .line 34037
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 34079
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 34080
    iget v6, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 34081
    iput-object v4, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    goto :goto_0

    .line 34074
    :cond_2
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 34075
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->stringValue_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 34069
    :cond_3
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 34070
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->doubleValue_:D

    goto :goto_0

    .line 34064
    :cond_4
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 34065
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->negativeIntValue_:J

    goto :goto_0

    .line 34059
    :cond_5
    iget v4, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 34060
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->positiveIntValue_:J

    goto :goto_0

    .line 34053
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 34054
    iget v5, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    or-int/2addr v5, v3

    iput v5, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    .line 34055
    iput-object v4, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    goto :goto_0

    :cond_7
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_8

    .line 34045
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 34048
    :cond_8
    iget-object v4, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    sget-object v5, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->PARSER:Lcom/google/protobuf/Parser;

    .line 34049
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    .line 34048
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 34089
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 34090
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 34087
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-ne p2, v3, :cond_a

    .line 34093
    iget-object p2, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    .line 34095
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 34096
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    throw p1

    :cond_b
    and-int/lit8 p1, v2, 0x1

    if-ne p1, v3, :cond_c

    .line 34093
    iget-object p1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    .line 34095
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 34096
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_d
    const/4 p1, 0x0

    .line 34023
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 33993
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 34000
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 34982
    iput-byte p1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 33993
    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$26000(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/util/List;
    .locals 0

    .line 33993
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$26002(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 33993
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$26100(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/lang/Object;
    .locals 0

    .line 33993
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$26102(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33993
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26202(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;J)J
    .locals 0

    .line 33993
    iput-wide p1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->positiveIntValue_:J

    return-wide p1
.end method

.method static synthetic access$26302(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;J)J
    .locals 0

    .line 33993
    iput-wide p1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->negativeIntValue_:J

    return-wide p1
.end method

.method static synthetic access$26402(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;D)D
    .locals 0

    .line 33993
    iput-wide p1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->doubleValue_:D

    return-wide p1
.end method

.method static synthetic access$26502(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 33993
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->stringValue_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$26600(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Ljava/lang/Object;
    .locals 0

    .line 33993
    iget-object p0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$26602(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33993
    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$26702(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;I)I
    .locals 0

    .line 33993
    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 36057
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 34101
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$24600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 35224
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->toBuilder()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 35065
    :cond_0
    instance-of v1, p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    if-nez v1, :cond_1

    .line 35066
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 35068
    :cond_1
    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    .line 35071
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getNameList()Ljava/util/List;

    move-result-object v1

    .line 35072
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getNameList()Ljava/util/List;

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

    .line 35073
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue()Z

    move-result v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 35074
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_4

    .line 35075
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getIdentifierValue()Ljava/lang/String;

    move-result-object v1

    .line 35076
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getIdentifierValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 35078
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue()Z

    move-result v3

    if-ne v1, v3, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    .line 35079
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v1, :cond_7

    .line 35080
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getPositiveIntValue()J

    move-result-wide v3

    .line 35081
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getPositiveIntValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_4
    if-eqz v1, :cond_9

    .line 35083
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue()Z

    move-result v3

    if-ne v1, v3, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    .line 35084
    :goto_5
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v1, :cond_a

    .line 35085
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getNegativeIntValue()J

    move-result-wide v3

    .line 35086
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getNegativeIntValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    :cond_b
    :goto_6
    if-eqz v1, :cond_c

    .line 35088
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue()Z

    move-result v3

    if-ne v1, v3, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    .line 35089
    :goto_7
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue()Z

    move-result v3

    if-eqz v3, :cond_e

    if-eqz v1, :cond_d

    .line 35091
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDoubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 35093
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDoubleValue()D

    move-result-wide v5

    .line 35092
    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    :cond_e
    :goto_8
    if-eqz v1, :cond_f

    .line 35095
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue()Z

    move-result v3

    if-ne v1, v3, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    .line 35096
    :goto_9
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue()Z

    move-result v3

    if-eqz v3, :cond_11

    if-eqz v1, :cond_10

    .line 35097
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getStringValue()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 35098
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getStringValue()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_a

    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_a
    if-eqz v1, :cond_12

    .line 35100
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasAggregateValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasAggregateValue()Z

    move-result v3

    if-ne v1, v3, :cond_12

    const/4 v1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    .line 35101
    :goto_b
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasAggregateValue()Z

    move-result v3

    if-eqz v3, :cond_14

    if-eqz v1, :cond_13

    .line 35102
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getAggregateValue()Ljava/lang/String;

    move-result-object v1

    .line 35103
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getAggregateValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_c

    :cond_13
    const/4 v1, 0x0

    :cond_14
    :goto_c
    if-eqz v1, :cond_15

    .line 35105
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_d

    :cond_15
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public getAggregateValue()Ljava/lang/String;
    .locals 2

    .line 34952
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    .line 34953
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34954
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 34956
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34958
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 34959
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34960
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 36080
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 33993
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 33993
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .line 34922
    iget-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->doubleValue_:D

    return-wide v0
.end method

.method public getIdentifierValue()Ljava/lang/String;
    .locals 2

    .line 34845
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    .line 34846
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 34847
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 34849
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 34851
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 34852
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34853
    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getName(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1

    .line 34813
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    return-object p1
.end method

.method public getNameCount()I
    .locals 1

    .line 34807
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation

    .line 34794
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    return-object v0
.end method

.method public getNegativeIntValue()J
    .locals 2

    .line 34907
    iget-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->negativeIntValue_:J

    return-wide v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .line 36076
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPositiveIntValue()J
    .locals 2

    .line 34892
    iget-wide v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->positiveIntValue_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 35025
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35029
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v0, v2, :cond_1

    .line 35030
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    .line 35031
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35033
    :cond_1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    .line 35034
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 35036
    :cond_2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/2addr v0, v3

    const/4 v2, 0x4

    if-ne v0, v3, :cond_3

    .line 35037
    iget-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->positiveIntValue_:J

    .line 35038
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 35040
    :cond_3
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_4

    const/4 v0, 0x5

    .line 35041
    iget-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->negativeIntValue_:J

    .line 35042
    invoke-static {v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 35044
    :cond_4
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_5

    const/4 v0, 0x6

    .line 35045
    iget-wide v3, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->doubleValue_:D

    .line 35046
    invoke-static {v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v0

    add-int/2addr v1, v0

    .line 35048
    :cond_5
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    const/16 v3, 0x10

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6

    const/4 v0, 0x7

    .line 35049
    iget-object v3, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->stringValue_:Lcom/google/protobuf/ByteString;

    .line 35050
    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v1, v0

    .line 35052
    :cond_6
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    const/16 v3, 0x20

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_7

    .line 35053
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 35055
    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 35056
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public getStringValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 34937
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->stringValue_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 34015
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAggregateValue()Z
    .locals 2

    .line 34946
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

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

.method public hasDoubleValue()Z
    .locals 2

    .line 34916
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

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

.method public hasIdentifierValue()Z
    .locals 2

    .line 34834
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasNegativeIntValue()Z
    .locals 2

    .line 34901
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

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

.method public hasPositiveIntValue()Z
    .locals 2

    .line 34886
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

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

.method public hasStringValue()Z
    .locals 2

    .line 34931
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

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

.method public hashCode()I
    .locals 3

    .line 35111
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 35115
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 35116
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getNameCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 35118
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getNameList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 35120
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 35122
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getIdentifierValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 35124
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 35127
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getPositiveIntValue()J

    move-result-wide v1

    .line 35126
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 35129
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 35132
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getNegativeIntValue()J

    move-result-wide v1

    .line 35131
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 35134
    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 35137
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getDoubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 35136
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 35139
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    .line 35141
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getStringValue()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 35143
    :cond_6
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->hasAggregateValue()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    .line 35145
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getAggregateValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    mul-int/lit8 v0, v0, 0x1d

    .line 35147
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 35148
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 34106
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$24700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    const-class v2, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    .line 34107
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 34984
    iget-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 34988
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getNameCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 34989
    invoke-virtual {p0, v0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->getName(I)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 34990
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34994
    :cond_3
    iput-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 35222
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->newBuilder()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .line 35237
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/DescriptorProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 33993
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 33993
    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 33993
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 2

    .line 35230
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->DEFAULT_INSTANCE:Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>(Lcom/google/protobuf/DescriptorProtos$1;)V

    .line 35231
    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 33993
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->toBuilder()Lcom/google/protobuf/DescriptorProtos$UninterpretedOption$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 35000
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_0

    .line 35001
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->name_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 35003
    :cond_0
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 35004
    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->identifierValue_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 35006
    :cond_1
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/2addr v0, v2

    const/4 v1, 0x4

    if-ne v0, v2, :cond_2

    .line 35007
    iget-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->positiveIntValue_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 35009
    :cond_2
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x5

    .line 35010
    iget-wide v1, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->negativeIntValue_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 35012
    :cond_3
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x6

    .line 35013
    iget-wide v2, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->doubleValue_:D

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 35015
    :cond_4
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_5

    const/4 v0, 0x7

    .line 35016
    iget-object v2, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->stringValue_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 35018
    :cond_5
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_6

    .line 35019
    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;->aggregateValue_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 35021
    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
