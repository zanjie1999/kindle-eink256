.class public final Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SecureTransportProtos.java"

# interfaces
.implements Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthenticatedECDHEKeyExchangeResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private authenticationDataSecureMessage_:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

.field private bitField0_:I

.field private derECDHEPublicKey_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2340
    new-instance v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;

    invoke-direct {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;-><init>()V

    sput-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;

    .line 2348
    new-instance v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$1;

    invoke-direct {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$1;-><init>()V

    sput-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1635
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1769
    iput-byte v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->memoizedIsInitialized:B

    .line 1636
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->derECDHEPublicKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1648
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 1654
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_6

    .line 1658
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    const/16 v5, 0xa

    if-eq v3, v5, :cond_4

    const/16 v5, 0x12

    if-eq v3, v5, :cond_1

    .line 1664
    invoke-virtual {p0, p1, v1, p2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 1677
    :cond_1
    iget v3, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    .line 1678
    iget-object v3, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->authenticationDataSecureMessage_:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    invoke-virtual {v3}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->toBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    .line 1680
    :goto_1
    sget-object v5, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    iput-object v5, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->authenticationDataSecureMessage_:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    if-eqz v3, :cond_3

    .line 1682
    invoke-virtual {v3, v5}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;

    .line 1683
    invoke-virtual {v3}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage$Builder;->buildPartial()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->authenticationDataSecureMessage_:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    .line 1685
    :cond_3
    iget v3, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->bitField0_:I

    goto :goto_0

    .line 1671
    :cond_4
    iget v3, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->bitField0_:I

    .line 1672
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->derECDHEPublicKey_:Lcom/google/protobuf/ByteString;
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

    .line 1693
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1694
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 1691
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1696
    :goto_3
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1697
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 1698
    throw p1

    .line 1696
    :cond_6
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1697
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    .line 1650
    :cond_7
    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1626
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1633
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1769
    iput-byte p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V
    .locals 0

    .line 1626
    invoke-direct {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$2800()Z
    .locals 1

    .line 1626
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 1626
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->derECDHEPublicKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;
    .locals 0

    .line 1626
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->authenticationDataSecureMessage_:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;I)I
    .locals 0

    .line 1626
    iput p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->bitField0_:I

    return p1
.end method

.method static synthetic access$3300(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1626
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;
    .locals 1

    .line 2344
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1702
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->access$2400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;
    .locals 1

    .line 1937
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->toBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1889
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1825
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;

    if-nez v1, :cond_1

    .line 1826
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1828
    :cond_1
    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;

    .line 1831
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->hasDerECDHEPublicKey()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->hasDerECDHEPublicKey()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1832
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->hasDerECDHEPublicKey()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 1833
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->getDerECDHEPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 1834
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->getDerECDHEPublicKey()Lcom/google/protobuf/ByteString;

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

    .line 1836
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->hasAuthenticationDataSecureMessage()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->hasAuthenticationDataSecureMessage()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 1837
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->hasAuthenticationDataSecureMessage()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 1838
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->getAuthenticationDataSecureMessage()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v1

    .line 1839
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->getAuthenticationDataSecureMessage()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 1841
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

.method public getAuthenticationDataSecureMessage()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;
    .locals 1

    .line 1756
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->authenticationDataSecureMessage_:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->getDefaultInstance()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;
    .locals 1

    .line 2367
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDerECDHEPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1733
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->derECDHEPublicKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;",
            ">;"
        }
    .end annotation

    .line 2363
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1803
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1807
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1808
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->derECDHEPublicKey_:Lcom/google/protobuf/ByteString;

    .line 1809
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1811
    :cond_1
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 1813
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->getAuthenticationDataSecureMessage()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1815
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1816
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1642
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasAuthenticationDataSecureMessage()Z
    .locals 2

    .line 1746
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->bitField0_:I

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

.method public hasDerECDHEPublicKey()Z
    .locals 2

    .line 1723
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->bitField0_:I

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

    .line 1847
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 1851
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1852
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->hasDerECDHEPublicKey()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 1854
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->getDerECDHEPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1856
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->hasAuthenticationDataSecureMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 1858
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->getAuthenticationDataSecureMessage()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 1860
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1861
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1707
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->access$2500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;

    const-class v2, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;

    .line 1708
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 1771
    iget-byte v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1775
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->hasDerECDHEPublicKey()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1776
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->memoizedIsInitialized:B

    return v2

    .line 1779
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->hasAuthenticationDataSecureMessage()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1780
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->memoizedIsInitialized:B

    return v2

    .line 1783
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->getAuthenticationDataSecureMessage()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1784
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->memoizedIsInitialized:B

    return v2

    .line 1787
    :cond_4
    iput-byte v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;
    .locals 1

    .line 1935
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->newBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;
    .locals 2

    .line 1950
    new-instance v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->newBuilderForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1626
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->newBuilderForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;
    .locals 2

    .line 1943
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;-><init>(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;-><init>(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V

    .line 1944
    invoke-virtual {v0, p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->toBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse$Builder;

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

    .line 1793
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->derECDHEPublicKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1796
    :cond_0
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1797
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AuthenticatedECDHEKeyExchangeResponse;->getAuthenticationDataSecureMessage()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$AesGCMSecureMessage;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1799
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
