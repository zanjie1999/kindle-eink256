.class public abstract Lcom/google/crypto/tink/shaded/protobuf/AbstractParser;
.super Ljava/lang/Object;
.source "AbstractParser.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_REGISTRY:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/AbstractParser;->EMPTY_REGISTRY:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 66
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLiteOrBuilder;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/AbstractParser;->newUninitializedMessageException(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    throw v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method private newUninitializedMessageException(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)",
            "Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;"
        }
    .end annotation

    .line 52
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->newUninitializedMessageException()Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;

    invoke-direct {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/UninitializedMessageException;-><init>(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V

    return-object v0
.end method


# virtual methods
.method public parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/ByteString;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/AbstractParser;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/AbstractParser;->checkMessageInitialized(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-object p1
.end method

.method public bridge synthetic parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/AbstractParser;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/ByteString;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TMessageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 99
    :try_start_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->newCodedInput()Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    move-result-object p1

    .line 100
    invoke-interface {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Parser;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 102
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->checkLastTagWas(I)V
    :try_end_1
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    .line 104
    :try_start_2
    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    throw p1
    :try_end_2
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 108
    throw p1
.end method
