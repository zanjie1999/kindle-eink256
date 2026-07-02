.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufWifiConnectionDetailsClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufWifiConnectionDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private volatile ssid_:Ljava/lang/Object;

.field private state_:I

.field private wifiKeyManagement_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1036
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    .line 1044
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 451
    iput-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->memoizedIsInitialized:B

    const-string v0, ""

    .line 94
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->ssid_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->wifiKeyManagement_:I

    .line 96
    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->state_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;-><init>()V

    if-eqz p2, :cond_8

    .line 114
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 118
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0xa

    if-eq v2, v4, :cond_5

    const/16 v4, 0x10

    if-eq v2, v4, :cond_3

    const/16 v4, 0x18

    if-eq v2, v4, :cond_1

    .line 124
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 148
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 149
    invoke-static {v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;->valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x3

    .line 151
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 153
    :cond_2
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->bitField0_:I

    .line 154
    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->state_:I

    goto :goto_0

    .line 137
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 138
    invoke-static {v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;->valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_4

    .line 140
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 142
    :cond_4
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->bitField0_:I

    .line 143
    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->wifiKeyManagement_:I

    goto :goto_0

    .line 131
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 132
    iget v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->bitField0_:I

    .line 133
    iput-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->ssid_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 163
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 164
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 161
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 167
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 168
    throw p1

    .line 166
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 167
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_8
    const/4 p1, 0x0

    .line 110
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 91
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 451
    iput-byte p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$1;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 84
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Ljava/lang/Object;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->ssid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->ssid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;I)I
    .locals 0

    .line 84
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->wifiKeyManagement_:I

    return p1
.end method

.method static synthetic access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;I)I
    .locals 0

    .line 84
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->state_:I

    return p1
.end method

.method static synthetic access$902(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;I)I
    .locals 0

    .line 84
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;
    .locals 1

    .line 1040
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 172
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;
    .locals 1

    .line 632
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;
    .locals 1

    .line 635
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 584
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 513
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    if-nez v1, :cond_1

    .line 514
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 516
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    .line 519
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hasSsid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hasSsid()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 520
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hasSsid()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 521
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->getSsid()Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 524
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hasWifiKeyManagement()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hasWifiKeyManagement()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 525
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hasWifiKeyManagement()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 526
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->wifiKeyManagement_:I

    iget v2, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->wifiKeyManagement_:I

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 528
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hasState()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hasState()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 529
    :goto_4
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hasState()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 530
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->state_:I

    iget v2, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->state_:I

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 532
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;
    .locals 1

    .line 1063
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;",
            ">;"
        }
    .end annotation

    .line 1059
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 488
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 492
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 493
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->ssid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 495
    :cond_1
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 496
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->wifiKeyManagement_:I

    .line 497
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 499
    :cond_2
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 500
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->state_:I

    .line 501
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 503
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 504
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->ssid_:Ljava/lang/Object;

    .line 370
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 371
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 373
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 375
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->ssid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getState()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;
    .locals 1

    .line 447
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->state_:I

    invoke-static {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;->valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;

    move-result-object v0

    if-nez v0, :cond_0

    .line 448
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;->INITIATING_CONNECTION_ATTEMPT:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$State;

    :cond_0
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getWifiKeyManagement()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;
    .locals 1

    .line 423
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->wifiKeyManagement_:I

    invoke-static {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;->valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 424
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;->NONE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    :cond_0
    return-object v0
.end method

.method public hasSsid()Z
    .locals 2

    .line 359
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasState()Z
    .locals 2

    .line 437
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->bitField0_:I

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

.method public hasWifiKeyManagement()Z
    .locals 2

    .line 413
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->bitField0_:I

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

.method public hashCode()I
    .locals 2

    .line 538
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 542
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 543
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hasSsid()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 545
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 547
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hasWifiKeyManagement()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 549
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->wifiKeyManagement_:I

    add-int/2addr v0, v1

    .line 551
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hasState()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 553
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->state_:I

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    .line 555
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 556
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 177
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    .line 178
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 453
    iget-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 457
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hasSsid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 458
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->memoizedIsInitialized:B

    return v2

    .line 461
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hasWifiKeyManagement()Z

    move-result v0

    if-nez v0, :cond_3

    .line 462
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->memoizedIsInitialized:B

    return v2

    .line 465
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->hasState()Z

    move-result v0

    if-nez v0, :cond_4

    .line 466
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->memoizedIsInitialized:B

    return v2

    .line 469
    :cond_4
    iput-byte v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;
    .locals 1

    .line 630
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;
    .locals 2

    .line 645
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;
    .locals 2

    .line 638
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$1;)V

    .line 639
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$Builder;

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

    .line 475
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->ssid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 478
    :cond_0
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 479
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->wifiKeyManagement_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 481
    :cond_1
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 482
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;->state_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
