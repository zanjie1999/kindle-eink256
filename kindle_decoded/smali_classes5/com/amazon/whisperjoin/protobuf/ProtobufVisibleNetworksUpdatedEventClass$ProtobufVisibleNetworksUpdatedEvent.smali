.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufVisibleNetworksUpdatedEventClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufVisibleNetworksUpdatedEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private eventData_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;

.field private memoizedIsInitialized:B

.field private uuid_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 780
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;

    .line 788
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 209
    iput-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->memoizedIsInitialized:B

    .line 76
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->uuid_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 94
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_6

    .line 98
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    const/16 v5, 0xa

    if-eq v3, v5, :cond_4

    const/16 v5, 0x12

    if-eq v3, v5, :cond_1

    .line 104
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 117
    :cond_1
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 118
    iget-object v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->eventData_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection$Builder;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    .line 120
    :goto_1
    sget-object v5, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;

    iput-object v5, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->eventData_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;

    if-eqz v3, :cond_3

    .line 122
    invoke-virtual {v3, v5}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection$Builder;

    .line 123
    invoke-virtual {v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection$Builder;->buildPartial()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->eventData_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;

    .line 125
    :cond_3
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->bitField0_:I

    goto :goto_0

    .line 111
    :cond_4
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->bitField0_:I

    .line 112
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->uuid_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 133
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 134
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 131
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :goto_3
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 137
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 138
    throw p1

    .line 136
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 137
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    .line 90
    :cond_7
    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 73
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 209
    iput-byte p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 66
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->uuid_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->eventData_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;

    return-object p1
.end method

.method static synthetic access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->bitField0_:I

    return p1
.end method

.method static synthetic access$900(Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;
    .locals 1

    .line 784
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 142
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;
    .locals 1

    .line 377
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 329
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 265
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;

    if-nez v1, :cond_1

    .line 266
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 268
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;

    .line 271
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->hasUuid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->hasUuid()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 272
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->hasUuid()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 273
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->getUuid()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 274
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->getUuid()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 276
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->hasEventData()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->hasEventData()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 277
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->hasEventData()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 278
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->getEventData()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;

    move-result-object v1

    .line 279
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->getEventData()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 281
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;
    .locals 1

    .line 807
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;

    move-result-object v0

    return-object v0
.end method

.method public getEventData()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->eventData_:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;->getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;",
            ">;"
        }
    .end annotation

    .line 803
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 243
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 247
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 248
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->uuid_:Lcom/google/protobuf/ByteString;

    .line 249
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 251
    :cond_1
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->getEventData()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 256
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUuid()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->uuid_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasEventData()Z
    .locals 2

    .line 186
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->bitField0_:I

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

    .line 163
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 287
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 291
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 292
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->hasUuid()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 294
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->getUuid()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->hasEventData()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 298
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->getEventData()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 300
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 147
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;

    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 211
    iget-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->hasUuid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->memoizedIsInitialized:B

    return v2

    .line 219
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->hasEventData()Z

    move-result v0

    if-nez v0, :cond_3

    .line 220
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->memoizedIsInitialized:B

    return v2

    .line 223
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->getEventData()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 224
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->memoizedIsInitialized:B

    return v2

    .line 227
    :cond_4
    iput-byte v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;
    .locals 1

    .line 375
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;
    .locals 2

    .line 390
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;
    .locals 2

    .line 383
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$1;)V

    .line 384
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;)Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->uuid_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 236
    :cond_0
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufVisibleNetworksUpdatedEventClass$ProtobufVisibleNetworksUpdatedEvent;->getEventData()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiScanResultClass$ProtobufWifiScanResultCollection;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
