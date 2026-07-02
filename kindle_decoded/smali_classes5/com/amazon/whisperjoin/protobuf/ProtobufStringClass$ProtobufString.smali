.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufStringClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufStringOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufString"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;",
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

.field private volatile value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 598
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;

    .line 606
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 179
    iput-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->memoizedIsInitialized:B

    const-string v0, ""

    .line 60
    iput-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->value_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;-><init>()V

    if-eqz p2, :cond_4

    .line 78
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 82
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    .line 88
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 96
    iget v4, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->bitField0_:I

    .line 97
    iput-object v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->value_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 105
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 106
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 103
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 109
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 110
    throw p1

    .line 108
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 109
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 74
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 57
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 179
    iput-byte p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$1;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 50
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;)Ljava/lang/Object;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->value_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;I)I
    .locals 0

    .line 50
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->bitField0_:I

    return p1
.end method

.method static synthetic access$800(Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;
    .locals 1

    .line 602
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 114
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;
    .locals 1

    .line 322
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 274
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 219
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;

    if-nez v1, :cond_1

    .line 220
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 222
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;

    .line 225
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->hasValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->hasValue()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 226
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 227
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->getValue()Ljava/lang/String;

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

    .line 230
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;
    .locals 1

    .line 625
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;",
            ">;"
        }
    .end annotation

    .line 621
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 202
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 206
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 207
    iget-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->value_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 210
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->value_:Ljava/lang/Object;

    .line 146
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 147
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 149
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 151
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iput-object v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->value_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public hasValue()Z
    .locals 2

    .line 135
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->bitField0_:I

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

    .line 236
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 240
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 243
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 245
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 119
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 181
    iget-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->hasValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 186
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->memoizedIsInitialized:B

    return v2

    .line 189
    :cond_2
    iput-byte v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;
    .locals 1

    .line 320
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;
    .locals 2

    .line 335
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;
    .locals 2

    .line 328
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$1;)V

    .line 329
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;)Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString$Builder;

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

    .line 195
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufStringClass$ProtobufString;->value_:Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
