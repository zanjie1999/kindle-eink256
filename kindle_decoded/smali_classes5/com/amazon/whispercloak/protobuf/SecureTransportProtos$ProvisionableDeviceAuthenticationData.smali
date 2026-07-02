.class public final Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SecureTransportProtos.java"

# interfaces
.implements Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvisionableDeviceAuthenticationData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private certificateChain_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private signature_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3081
    new-instance v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    invoke-direct {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;-><init>()V

    sput-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    .line 3089
    new-instance v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$1;

    invoke-direct {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$1;-><init>()V

    sput-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2433
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2570
    iput-byte v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->memoizedIsInitialized:B

    .line 2434
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->certificateChain_:Ljava/util/List;

    .line 2435
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->signature_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2447
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;-><init>()V

    if-eqz p2, :cond_8

    .line 2453
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_6

    .line 2457
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    const/16 v5, 0x12

    if-eq v4, v5, :cond_1

    .line 2463
    invoke-virtual {p0, p1, v0, p2, v4}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 2478
    :cond_1
    iget v4, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->bitField0_:I

    or-int/2addr v4, v3

    iput v4, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->bitField0_:I

    .line 2479
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->signature_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    :cond_2
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_3

    .line 2471
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->certificateChain_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 2474
    :cond_3
    iget-object v4, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->certificateChain_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

    .line 2487
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 2488
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 2485
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-ne p2, v3, :cond_5

    .line 2491
    iget-object p2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->certificateChain_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->certificateChain_:Ljava/util/List;

    .line 2493
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2494
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 2495
    throw p1

    :cond_6
    and-int/lit8 p1, v2, 0x1

    if-ne p1, v3, :cond_7

    .line 2491
    iget-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->certificateChain_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->certificateChain_:Ljava/util/List;

    .line 2493
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2494
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_8
    const/4 p1, 0x0

    .line 2449
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2424
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 2431
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 2570
    iput-byte p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V
    .locals 0

    .line 2424
    invoke-direct {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$3900()Z
    .locals 1

    .line 2424
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;)Ljava/util/List;
    .locals 0

    .line 2424
    iget-object p0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->certificateChain_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$4102(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 2424
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->certificateChain_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 2424
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->signature_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;I)I
    .locals 0

    .line 2424
    iput p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->bitField0_:I

    return p1
.end method

.method static synthetic access$4400(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 2424
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;
    .locals 1

    .line 3085
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2499
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->access$3500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;
    .locals 1

    .line 2732
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->toBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2684
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2623
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    if-nez v1, :cond_1

    .line 2624
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2626
    :cond_1
    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    .line 2629
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->getCertificateChainList()Ljava/util/List;

    move-result-object v1

    .line 2630
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->getCertificateChainList()Ljava/util/List;

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

    .line 2631
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->hasSignature()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->hasSignature()Z

    move-result v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 2632
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->hasSignature()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_4

    .line 2633
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 2634
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 2636
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public getCertificateChainCount()I
    .locals 1

    .line 2533
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->certificateChain_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCertificateChainList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 2522
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->certificateChain_:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;
    .locals 1

    .line 3108
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2424
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2424
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;",
            ">;"
        }
    .end annotation

    .line 3104
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 2596
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2602
    :goto_0
    iget-object v3, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->certificateChain_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2603
    iget-object v3, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->certificateChain_:Ljava/util/List;

    .line 2604
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/ByteString;

    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    .line 2607
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->getCertificateChainList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 2609
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->bitField0_:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    .line 2610
    iget-object v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->signature_:Lcom/google/protobuf/ByteString;

    .line 2611
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2613
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2614
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2567
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 2441
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasSignature()Z
    .locals 2

    .line 2557
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->bitField0_:I

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

    .line 2642
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2646
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2647
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->getCertificateChainCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 2649
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->getCertificateChainList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2651
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->hasSignature()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 2653
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 2655
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2656
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 2504
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->access$3600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    const-class v2, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    .line 2505
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 2572
    iget-byte v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2576
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->hasSignature()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2577
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->memoizedIsInitialized:B

    return v2

    .line 2580
    :cond_2
    iput-byte v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;
    .locals 1

    .line 2730
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->newBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;
    .locals 2

    .line 2745
    new-instance v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2424
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->newBuilderForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2424
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2424
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->newBuilderForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;
    .locals 2

    .line 2738
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;-><init>(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;-><init>(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V

    .line 2739
    invoke-virtual {v0, p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2424
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->toBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData$Builder;

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

    .line 2586
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->certificateChain_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 2587
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->certificateChain_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2589
    :cond_0
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x2

    .line 2590
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$ProvisionableDeviceAuthenticationData;->signature_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2592
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
