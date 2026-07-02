.class public final Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ProtobufBooleanClass.java"

# interfaces
.implements Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBooleanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProtobufBoolean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

.field public static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;",
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

.field private value_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 505
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    .line 513
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 138
    iput-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->memoizedIsInitialized:B

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->value_:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;-><init>()V

    if-eqz p2, :cond_4

    .line 69
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 73
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    .line 79
    invoke-virtual {p0, p1, v0, p2, v2}, Lcom/google/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 86
    :cond_1
    iget v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->bitField0_:I

    .line 87
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->value_:Z
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

    .line 95
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 96
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p2

    :catch_1
    move-exception p1

    .line 93
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 99
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 100
    throw p1

    .line 98
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 99
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 65
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 48
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 138
    iput-byte p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$602(Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->value_:Z

    return p1
.end method

.method static synthetic access$702(Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->bitField0_:I

    return p1
.end method

.method static synthetic access$800(Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;
    .locals 1

    .line 509
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 104
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;
    .locals 1

    .line 283
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    invoke-virtual {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 235
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 179
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    if-nez v1, :cond_1

    .line 180
    invoke-super {p0, p1}, Lcom/google/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 182
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    .line 185
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->hasValue()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->hasValue()Z

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 186
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    .line 187
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->getValue()Z

    move-result v1

    .line 188
    invoke-virtual {p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->getValue()Z

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 190
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

.method public getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;
    .locals 1

    .line 532
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->getDefaultInstanceForType()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;",
            ">;"
        }
    .end annotation

    .line 528
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 161
    iget v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 165
    iget v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 166
    iget-boolean v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->value_:Z

    .line 167
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 170
    iput v0, p0, Lcom/google/protobuf/AbstractMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getValue()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->value_:Z

    return v0
.end method

.method public hasValue()Z
    .locals 2

    .line 125
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->bitField0_:I

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

    .line 196
    iget v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 200
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 201
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 204
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->getValue()Z

    move-result v1

    .line 203
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 206
    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 207
    iput v0, p0, Lcom/google/protobuf/AbstractMessageLite;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 109
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    const-class v2, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 140
    iget-byte v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->hasValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    iput-byte v2, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->memoizedIsInitialized:B

    return v2

    .line 148
    :cond_2
    iput-byte v1, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->memoizedIsInitialized:B

    return v1
.end method

.method public newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;
    .locals 1

    .line 281
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->newBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;
    .locals 2

    .line 296
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$1;)V

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->newBuilderForType()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;
    .locals 2

    .line 289
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->DEFAULT_INSTANCE:Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;-><init>(Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$1;)V

    .line 290
    invoke-virtual {v0, p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;->mergeFrom(Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;)Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->toBuilder()Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean$Builder;

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

    .line 154
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 155
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufBooleanClass$ProtobufBoolean;->value_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
