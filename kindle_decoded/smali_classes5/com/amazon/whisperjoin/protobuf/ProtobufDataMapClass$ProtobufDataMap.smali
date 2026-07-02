.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufDataMapClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMapOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufDataMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private dataMap_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1756
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    .line 1764
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1060
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1166
    iput-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->memoizedIsInitialized:B

    .line 1061
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->dataMap_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1073
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;-><init>()V

    if-eqz p2, :cond_7

    .line 1079
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 1083
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    .line 1089
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_2

    .line 1097
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->dataMap_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 1100
    :cond_2
    iget-object v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->dataMap_:Ljava/util/List;

    sget-object v5, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->PARSER:Lcom/google/protobuf/Parser;

    .line 1101
    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    .line 1100
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

    .line 1109
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1110
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 1107
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-ne p2, v3, :cond_4

    .line 1113
    iget-object p2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->dataMap_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->dataMap_:Ljava/util/List;

    .line 1115
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1116
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 1117
    throw p1

    :cond_5
    and-int/lit8 p1, v2, 0x1

    if-ne p1, v3, :cond_6

    .line 1113
    iget-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->dataMap_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->dataMap_:Ljava/util/List;

    .line 1115
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1116
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 1075
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1051
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1058
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1166
    iput-byte p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$1;)V
    .locals 0

    .line 1051
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    .line 1051
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Ljava/util/List;
    .locals 0

    .line 1051
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->dataMap_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1051
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->dataMap_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100()Z
    .locals 1

    .line 1051
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1051
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;
    .locals 1

    .line 1760
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1121
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->access$1400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;
    .locals 1

    .line 1309
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;
    .locals 1

    .line 1312
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1261
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1209
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    if-nez v1, :cond_1

    .line 1210
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1212
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    .line 1215
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->getDataMapList()Ljava/util/List;

    move-result-object v1

    .line 1216
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->getDataMapList()Ljava/util/List;

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

    .line 1217
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

.method public getDataMap(I)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;
    .locals 1

    .line 1156
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->dataMap_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    return-object p1
.end method

.method public getDataMapCount()I
    .locals 1

    .line 1150
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->dataMap_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDataMapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;",
            ">;"
        }
    .end annotation

    .line 1137
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->dataMap_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;
    .locals 1

    .line 1783
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1051
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1051
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;",
            ">;"
        }
    .end annotation

    .line 1779
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1191
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1195
    :goto_0
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->dataMap_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1196
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->dataMap_:Ljava/util/List;

    .line 1197
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1199
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 1200
    iput v1, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1067
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1223
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 1227
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1228
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->getDataMapCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 1230
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->getDataMapList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 1232
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1233
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1126
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass;->access$1500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    .line 1127
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1168
    iget-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 1172
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->getDataMapCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1173
    invoke-virtual {p0, v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->getDataMap(I)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufMapEntry;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1174
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1178
    :cond_3
    iput-byte v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;
    .locals 1

    .line 1307
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;
    .locals 2

    .line 1322
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1051
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1051
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1051
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;
    .locals 2

    .line 1315
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$1;)V

    .line 1316
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;)Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1051
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap$Builder;

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

    .line 1184
    :goto_0
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->dataMap_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1185
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufDataMapClass$ProtobufDataMap;->dataMap_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
