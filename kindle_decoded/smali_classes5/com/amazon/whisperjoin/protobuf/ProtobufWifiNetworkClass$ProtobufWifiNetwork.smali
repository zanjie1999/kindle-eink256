.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufWifiNetworkClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetworkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufWifiNetwork"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;",
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

.field private wifiKeyManagement_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 734
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;

    .line 742
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 232
    iput-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->memoizedIsInitialized:B

    const-string v0, ""

    .line 77
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->ssid_:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->wifiKeyManagement_:I

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;-><init>()V

    if-eqz p2, :cond_6

    .line 96
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 100
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    const/16 v4, 0x10

    if-eq v2, v4, :cond_1

    .line 106
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 120
    invoke-static {v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;->valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_2

    .line 122
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 124
    :cond_2
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->bitField0_:I

    .line 125
    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->wifiKeyManagement_:I

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 114
    iget v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->bitField0_:I

    .line 115
    iput-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->ssid_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 134
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 135
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 132
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 138
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 139
    throw p1

    .line 137
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 138
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_6
    const/4 p1, 0x0

    .line 92
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 74
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 232
    iput-byte p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$1;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 67
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;)Ljava/lang/Object;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->ssid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->ssid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->wifiKeyManagement_:I

    return p1
.end method

.method static synthetic access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->bitField0_:I

    return p1
.end method

.method static synthetic access$900(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;
    .locals 1

    .line 738
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 143
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;
    .locals 1

    .line 394
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 346
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 283
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;

    if-nez v1, :cond_1

    .line 284
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 286
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;

    .line 289
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->hasSsid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->hasSsid()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 290
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->hasSsid()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 291
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->getSsid()Ljava/lang/String;

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

    .line 294
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->hasWifiKeyManagement()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->hasWifiKeyManagement()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 295
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->hasWifiKeyManagement()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 296
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->wifiKeyManagement_:I

    iget v2, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->wifiKeyManagement_:I

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 298
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

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;
    .locals 1

    .line 761
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;",
            ">;"
        }
    .end annotation

    .line 757
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 262
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 266
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 267
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->ssid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    :cond_1
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 270
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->wifiKeyManagement_:I

    .line 271
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 273
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 274
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->ssid_:Ljava/lang/Object;

    .line 175
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 176
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 178
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 180
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->ssid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getWifiKeyManagement()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;
    .locals 1

    .line 228
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->wifiKeyManagement_:I

    invoke-static {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;->valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 229
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;->NONE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    :cond_0
    return-object v0
.end method

.method public hasSsid()Z
    .locals 2

    .line 164
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasWifiKeyManagement()Z
    .locals 2

    .line 218
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->bitField0_:I

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

    .line 304
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 308
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 309
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->hasSsid()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 311
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->hasWifiKeyManagement()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 315
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->wifiKeyManagement_:I

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 317
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 318
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 148
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 234
    iget-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->hasSsid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->memoizedIsInitialized:B

    return v2

    .line 242
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->hasWifiKeyManagement()Z

    move-result v0

    if-nez v0, :cond_3

    .line 243
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->memoizedIsInitialized:B

    return v2

    .line 246
    :cond_3
    iput-byte v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;
    .locals 1

    .line 392
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;
    .locals 2

    .line 407
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;
    .locals 2

    .line 400
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$1;)V

    .line 401
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork$Builder;

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

    .line 252
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->ssid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 255
    :cond_0
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 256
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiNetworkClass$ProtobufWifiNetwork;->wifiKeyManagement_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
