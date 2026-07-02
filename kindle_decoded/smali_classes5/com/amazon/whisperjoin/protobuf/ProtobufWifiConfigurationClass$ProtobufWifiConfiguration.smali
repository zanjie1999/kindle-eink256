.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufWifiConfigurationClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufWifiConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private isHiddenNetwork_:Z

.field private memoizedIsInitialized:B

.field private networkPriority_:I

.field private volatile psk_:Ljava/lang/Object;

.field private volatile ssid_:Ljava/lang/Object;

.field private volatile wepKey_:Ljava/lang/Object;

.field private wifiKeyManagement_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1413
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    .line 1421
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 162
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 498
    iput-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->memoizedIsInitialized:B

    const-string v0, ""

    .line 163
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->ssid_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 164
    iput v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->wifiKeyManagement_:I

    .line 165
    iput v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->networkPriority_:I

    .line 166
    iput-boolean v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->isHiddenNetwork_:Z

    .line 167
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->wepKey_:Ljava/lang/Object;

    .line 168
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->psk_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;-><init>()V

    if-eqz p2, :cond_a

    .line 186
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_9

    .line 190
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    const/16 v4, 0xa

    if-eq v2, v4, :cond_7

    const/16 v4, 0x10

    if-eq v2, v4, :cond_5

    const/16 v5, 0x18

    if-eq v2, v5, :cond_4

    const/16 v5, 0x20

    if-eq v2, v5, :cond_3

    const/16 v6, 0x2a

    if-eq v2, v6, :cond_2

    const/16 v4, 0x32

    if-eq v2, v4, :cond_1

    .line 196
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 236
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 237
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    .line 238
    iput-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->psk_:Ljava/lang/Object;

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 231
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    .line 232
    iput-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->wepKey_:Ljava/lang/Object;

    goto :goto_0

    .line 225
    :cond_3
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    .line 226
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->isHiddenNetwork_:Z

    goto :goto_0

    .line 220
    :cond_4
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    .line 221
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v2

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->networkPriority_:I

    goto :goto_0

    .line 209
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 210
    invoke-static {v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;->valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    move-result-object v3

    const/4 v4, 0x2

    if-nez v3, :cond_6

    .line 212
    invoke-virtual {v0, v4, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 214
    :cond_6
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    .line 215
    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->wifiKeyManagement_:I

    goto :goto_0

    .line 203
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 204
    iget v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    .line 205
    iput-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->ssid_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_8
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 246
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 247
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 244
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 250
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 251
    throw p1

    .line 249
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 250
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_a
    const/4 p1, 0x0

    .line 182
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 160
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 498
    iput-byte p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$1;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;)Ljava/lang/Object;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->wepKey_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->wepKey_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;)Ljava/lang/Object;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->psk_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->psk_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;I)I
    .locals 0

    .line 153
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    return p1
.end method

.method static synthetic access$1300(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 153
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;)Ljava/lang/Object;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->ssid_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->ssid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;I)I
    .locals 0

    .line 153
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->wifiKeyManagement_:I

    return p1
.end method

.method static synthetic access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;I)I
    .locals 0

    .line 153
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->networkPriority_:I

    return p1
.end method

.method static synthetic access$902(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;Z)Z
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->isHiddenNetwork_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;
    .locals 1

    .line 1417
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 255
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    .locals 1

    .line 731
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 683
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 583
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    if-nez v1, :cond_1

    .line 584
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 586
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    .line 589
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasSsid()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasSsid()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 590
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasSsid()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 591
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v1

    .line 592
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getSsid()Ljava/lang/String;

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

    .line 594
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasWifiKeyManagement()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasWifiKeyManagement()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 595
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasWifiKeyManagement()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 596
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->wifiKeyManagement_:I

    iget v2, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->wifiKeyManagement_:I

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 598
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasNetworkPriority()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasNetworkPriority()Z

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    .line 599
    :goto_4
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasNetworkPriority()Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v1, :cond_9

    .line 600
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getNetworkPriority()I

    move-result v1

    .line 601
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getNetworkPriority()I

    move-result v2

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 603
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasIsHiddenNetwork()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasIsHiddenNetwork()Z

    move-result v2

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    .line 604
    :goto_6
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasIsHiddenNetwork()Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v1, :cond_c

    .line 605
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getIsHiddenNetwork()Z

    move-result v1

    .line 606
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getIsHiddenNetwork()Z

    move-result v2

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_7
    if-eqz v1, :cond_e

    .line 608
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasWepKey()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasWepKey()Z

    move-result v2

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_8

    :cond_e
    const/4 v1, 0x0

    .line 609
    :goto_8
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasWepKey()Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v1, :cond_f

    .line 610
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getWepKey()Ljava/lang/String;

    move-result-object v1

    .line 611
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getWepKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_9

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_9
    if-eqz v1, :cond_11

    .line 613
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasPsk()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasPsk()Z

    move-result v2

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 614
    :goto_a
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasPsk()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v1, :cond_12

    .line 615
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getPsk()Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getPsk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x0

    :cond_13
    :goto_b
    if-eqz v1, :cond_14

    .line 618
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_c

    :cond_14
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;
    .locals 1

    .line 1440
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getIsHiddenNetwork()Z
    .locals 1

    .line 387
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->isHiddenNetwork_:Z

    return v0
.end method

.method public getNetworkPriority()I
    .locals 1

    .line 364
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->networkPriority_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1436
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPsk()Ljava/lang/String;
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->psk_:Ljava/lang/Object;

    .line 465
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 466
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 468
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 470
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 471
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->psk_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getSerializedSize()I
    .locals 4

    .line 548
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 552
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 553
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->ssid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 555
    :cond_1
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 556
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->wifiKeyManagement_:I

    .line 557
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 559
    :cond_2
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 560
    iget v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->networkPriority_:I

    .line 561
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 563
    :cond_3
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 564
    iget-boolean v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->isHiddenNetwork_:Z

    .line 565
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 567
    :cond_4
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 568
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->wepKey_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 570
    :cond_5
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 571
    iget-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->psk_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 573
    :cond_6
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 574
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->ssid_:Ljava/lang/Object;

    .line 287
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 288
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 290
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 292
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->ssid_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getWepKey()Ljava/lang/String;
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->wepKey_:Ljava/lang/Object;

    .line 411
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 412
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 414
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 416
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->wepKey_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getWifiKeyManagement()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;
    .locals 1

    .line 340
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->wifiKeyManagement_:I

    invoke-static {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;->valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 341
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;->NONE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiKeyManagementClass$ProtobufWifiKeyManagement$WifiKeyManagement;

    :cond_0
    return-object v0
.end method

.method public hasIsHiddenNetwork()Z
    .locals 2

    .line 377
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

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

.method public hasNetworkPriority()Z
    .locals 2

    .line 354
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

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

.method public hasPsk()Z
    .locals 2

    .line 454
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

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

.method public hasSsid()Z
    .locals 2

    .line 276
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasWepKey()Z
    .locals 2

    .line 400
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

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

.method public hasWifiKeyManagement()Z
    .locals 2

    .line 330
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

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

    .line 624
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 628
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 629
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasSsid()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 631
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 633
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasWifiKeyManagement()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 635
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->wifiKeyManagement_:I

    add-int/2addr v0, v1

    .line 637
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasNetworkPriority()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 639
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getNetworkPriority()I

    move-result v1

    add-int/2addr v0, v1

    .line 641
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasIsHiddenNetwork()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 644
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getIsHiddenNetwork()Z

    move-result v1

    .line 643
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 646
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasWepKey()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 648
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getWepKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 650
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasPsk()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    .line 652
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->getPsk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    mul-int/lit8 v0, v0, 0x1d

    .line 654
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 655
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 260
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    .line 261
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 500
    iget-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasSsid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 505
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->memoizedIsInitialized:B

    return v2

    .line 508
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasWifiKeyManagement()Z

    move-result v0

    if-nez v0, :cond_3

    .line 509
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->memoizedIsInitialized:B

    return v2

    .line 512
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasNetworkPriority()Z

    move-result v0

    if-nez v0, :cond_4

    .line 513
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->memoizedIsInitialized:B

    return v2

    .line 516
    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->hasIsHiddenNetwork()Z

    move-result v0

    if-nez v0, :cond_5

    .line 517
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->memoizedIsInitialized:B

    return v2

    .line 520
    :cond_5
    iput-byte v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    .locals 1

    .line 729
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    .locals 2

    .line 744
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;
    .locals 2

    .line 737
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$1;)V

    .line 738
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration$Builder;

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

    .line 526
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->ssid_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 529
    :cond_0
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 530
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->wifiKeyManagement_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 532
    :cond_1
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 533
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->networkPriority_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32(II)V

    .line 535
    :cond_2
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 536
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->isHiddenNetwork_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 538
    :cond_3
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 539
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->wepKey_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 541
    :cond_4
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 542
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConfigurationClass$ProtobufWifiConfiguration;->psk_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 544
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
