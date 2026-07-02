.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufCBLRegistrationRequestClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufCBLRegistrationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private expiration_:J

.field private volatile linkCode_:Ljava/lang/Object;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 725
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    .line 733
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 225
    iput-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->memoizedIsInitialized:B

    const-string v0, ""

    .line 77
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->linkCode_:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 78
    iput-wide v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->expiration_:J

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
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;-><init>()V

    if-eqz p2, :cond_5

    .line 96
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 100
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x10

    if-eq v2, v4, :cond_1

    .line 106
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 119
    :cond_1
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->bitField0_:I

    .line 120
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->expiration_:J

    goto :goto_0

    .line 113
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 114
    iget v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->bitField0_:I

    .line 115
    iput-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->linkCode_:Ljava/lang/Object;
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

    .line 128
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 129
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 126
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 132
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 133
    throw p1

    .line 131
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 132
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 92
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 225
    iput-byte p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$1;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 67
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;)Ljava/lang/Object;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->linkCode_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->linkCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;J)J
    .locals 0

    .line 67
    iput-wide p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->expiration_:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$900(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;
    .locals 1

    .line 729
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 137
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;
    .locals 1

    .line 389
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 341
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 276
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    if-nez v1, :cond_1

    .line 277
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 279
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    .line 282
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->hasLinkCode()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->hasLinkCode()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 283
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->hasLinkCode()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 284
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->getLinkCode()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->getLinkCode()Ljava/lang/String;

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

    .line 287
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->hasExpiration()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->hasExpiration()Z

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 288
    :goto_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->hasExpiration()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    .line 289
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->getExpiration()J

    move-result-wide v1

    .line 290
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->getExpiration()J

    move-result-wide v4

    cmp-long v6, v1, v4

    if-nez v6, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 292
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

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;
    .locals 1

    .line 752
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .line 222
    iget-wide v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->expiration_:J

    return-wide v0
.end method

.method public getLinkCode()Ljava/lang/String;
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->linkCode_:Ljava/lang/Object;

    .line 169
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 170
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 172
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 174
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->linkCode_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;",
            ">;"
        }
    .end annotation

    .line 748
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 255
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 259
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 260
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->linkCode_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 262
    :cond_1
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 263
    iget-wide v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->expiration_:J

    .line 264
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 267
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasExpiration()Z
    .locals 2

    .line 212
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->bitField0_:I

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

.method public hasLinkCode()Z
    .locals 2

    .line 158
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->bitField0_:I

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
    .locals 3

    .line 298
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 302
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 303
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->hasLinkCode()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 305
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->getLinkCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->hasExpiration()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 310
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->getExpiration()J

    move-result-wide v1

    .line 309
    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->hashLong(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1d

    .line 312
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 313
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 142
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 227
    iget-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->hasLinkCode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->memoizedIsInitialized:B

    return v2

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->hasExpiration()Z

    move-result v0

    if-nez v0, :cond_3

    .line 236
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->memoizedIsInitialized:B

    return v2

    .line 239
    :cond_3
    iput-byte v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;
    .locals 1

    .line 387
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;
    .locals 2

    .line 402
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 67
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;
    .locals 2

    .line 395
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$1;)V

    .line 396
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest$Builder;

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

    .line 245
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->linkCode_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 248
    :cond_0
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 249
    iget-wide v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationRequestClass$ProtobufCBLRegistrationRequest;->expiration_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeSInt64(IJ)V

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
