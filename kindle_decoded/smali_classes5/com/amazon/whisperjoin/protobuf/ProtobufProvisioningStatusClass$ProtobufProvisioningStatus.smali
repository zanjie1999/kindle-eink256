.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufProvisioningStatusClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufProvisioningStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;,
        Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private insecureModeSupported_:Z

.field private memoizedIsInitialized:B

.field private state_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 780
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;

    .line 788
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 330
    iput-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->state_:I

    .line 69
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->insecureModeSupported_:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;-><init>()V

    if-eqz p2, :cond_6

    .line 87
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 91
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2

    const/16 v4, 0x10

    if-eq v2, v4, :cond_1

    .line 97
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 115
    :cond_1
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->bitField0_:I

    .line 116
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->insecureModeSupported_:Z

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 105
    invoke-static {v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    move-result-object v4

    if-nez v4, :cond_3

    .line 107
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_0

    .line 109
    :cond_3
    iget v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->bitField0_:I

    .line 110
    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->state_:I
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

    .line 124
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 125
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 122
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 128
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 129
    throw p1

    .line 127
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 128
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_6
    const/4 p1, 0x0

    .line 83
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 65
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 330
    iput-byte p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->state_:I

    return p1
.end method

.method static synthetic access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->insecureModeSupported_:Z

    return p1
.end method

.method static synthetic access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->bitField0_:I

    return p1
.end method

.method static synthetic access$900(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;
    .locals 1

    .line 784
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 133
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;
    .locals 1

    .line 494
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 446
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 382
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;

    if-nez v1, :cond_1

    .line 383
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 385
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;

    .line 388
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->hasState()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->hasState()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 389
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->hasState()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 390
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->state_:I

    iget v2, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->state_:I

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 392
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->hasInsecureModeSupported()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->hasInsecureModeSupported()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 393
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->hasInsecureModeSupported()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 394
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->getInsecureModeSupported()Z

    move-result v1

    .line 395
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->getInsecureModeSupported()Z

    move-result v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 397
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

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;
    .locals 1

    .line 807
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;

    move-result-object v0

    return-object v0
.end method

.method public getInsecureModeSupported()Z
    .locals 1

    .line 327
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->insecureModeSupported_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;",
            ">;"
        }
    .end annotation

    .line 803
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 360
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 364
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 365
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->state_:I

    .line 366
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 368
    :cond_1
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 369
    iget-boolean v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->insecureModeSupported_:Z

    .line 370
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 372
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 373
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getState()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;
    .locals 1

    .line 303
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->state_:I

    invoke-static {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    move-result-object v0

    if-nez v0, :cond_0

    .line 304
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->PROVISIONING_SESSION_IDLE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    :cond_0
    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasInsecureModeSupported()Z
    .locals 2

    .line 317
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->bitField0_:I

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

.method public hasState()Z
    .locals 2

    .line 293
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->bitField0_:I

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

    .line 403
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 407
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 408
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->hasState()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 410
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->state_:I

    add-int/2addr v0, v1

    .line 412
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->hasInsecureModeSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 415
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->getInsecureModeSupported()Z

    move-result v1

    .line 414
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 417
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 418
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 138
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;

    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 332
    iget-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->hasState()Z

    move-result v0

    if-nez v0, :cond_2

    .line 337
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->memoizedIsInitialized:B

    return v2

    .line 340
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->hasInsecureModeSupported()Z

    move-result v0

    if-nez v0, :cond_3

    .line 341
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->memoizedIsInitialized:B

    return v2

    .line 344
    :cond_3
    iput-byte v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;
    .locals 1

    .line 492
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;
    .locals 2

    .line 507
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;
    .locals 2

    .line 500
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$1;)V

    .line 501
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$Builder;

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

    .line 350
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 351
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->state_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 353
    :cond_0
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 354
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;->insecureModeSupported_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
