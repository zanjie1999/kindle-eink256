.class public final Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "SecureTransportProtos.java"

# interfaces
.implements Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnauthenticatedECDHEKeyExchangeRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private derECDHEPublicKey_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private signature_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3725
    new-instance v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;

    invoke-direct {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;-><init>()V

    sput-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;

    .line 3733
    new-instance v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$1;

    invoke-direct {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$1;-><init>()V

    sput-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3163
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 3280
    iput-byte v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->memoizedIsInitialized:B

    .line 3164
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->derECDHEPublicKey_:Lcom/google/protobuf/ByteString;

    .line 3165
    iput-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->signature_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3177
    invoke-direct {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;-><init>()V

    if-eqz p2, :cond_5

    .line 3183
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 3187
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 3193
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 3205
    :cond_1
    iget v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->bitField0_:I

    .line 3206
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->signature_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 3200
    :cond_2
    iget v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->bitField0_:I

    .line 3201
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->derECDHEPublicKey_:Lcom/google/protobuf/ByteString;
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

    .line 3214
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3215
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 3212
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3217
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3218
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 3219
    throw p1

    .line 3217
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3218
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 3179
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3154
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3161
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 3280
    iput-byte p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V
    .locals 0

    .line 3154
    invoke-direct {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$5000()Z
    .locals 1

    .line 3154
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5202(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 3154
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->derECDHEPublicKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 3154
    iput-object p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->signature_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;I)I
    .locals 0

    .line 3154
    iput p1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$5500(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 3154
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;
    .locals 1

    .line 3729
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3223
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->access$4600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;
    .locals 1

    .line 3440
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;

    invoke-virtual {v0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->toBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3392
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3328
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;

    if-nez v1, :cond_1

    .line 3329
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3331
    :cond_1
    check-cast p1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;

    .line 3334
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->hasDerECDHEPublicKey()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->hasDerECDHEPublicKey()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 3335
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->hasDerECDHEPublicKey()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 3336
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->getDerECDHEPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 3337
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->getDerECDHEPublicKey()Lcom/google/protobuf/ByteString;

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

    .line 3339
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->hasSignature()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->hasSignature()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 3340
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->hasSignature()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 3341
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 3342
    invoke-virtual {p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 3344
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

.method public getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;
    .locals 1

    .line 3752
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3154
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3154
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->getDefaultInstanceForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDerECDHEPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3254
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->derECDHEPublicKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;",
            ">;"
        }
    .end annotation

    .line 3748
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3306
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3310
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 3311
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->derECDHEPublicKey_:Lcom/google/protobuf/ByteString;

    .line 3312
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3314
    :cond_1
    iget v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 3315
    iget-object v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->signature_:Lcom/google/protobuf/ByteString;

    .line 3316
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3318
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3319
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3277
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 3171
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasDerECDHEPublicKey()Z
    .locals 2

    .line 3244
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasSignature()Z
    .locals 2

    .line 3267
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->bitField0_:I

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

    .line 3350
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 3354
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3355
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->hasDerECDHEPublicKey()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3357
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->getDerECDHEPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3359
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->hasSignature()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 3361
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 3363
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3364
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3228
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos;->access$4700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;

    const-class v2, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;

    .line 3229
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 3282
    iget-byte v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3286
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->hasDerECDHEPublicKey()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3287
    iput-byte v2, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->memoizedIsInitialized:B

    return v2

    .line 3290
    :cond_2
    iput-byte v1, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;
    .locals 1

    .line 3438
    invoke-static {}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->newBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;
    .locals 2

    .line 3453
    new-instance v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3154
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->newBuilderForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3154
    invoke-virtual {p0, p1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3154
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->newBuilderForType()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;
    .locals 2

    .line 3446
    sget-object v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->DEFAULT_INSTANCE:Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;-><init>(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;-><init>(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$1;)V

    .line 3447
    invoke-virtual {v0, p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;->mergeFrom(Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;)Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3154
    invoke-virtual {p0}, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->toBuilder()Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest$Builder;

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

    .line 3296
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 3297
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->derECDHEPublicKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3299
    :cond_0
    iget v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 3300
    iget-object v0, p0, Lcom/amazon/whispercloak/protobuf/SecureTransportProtos$UnauthenticatedECDHEKeyExchangeRequest;->signature_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3302
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
