.class public abstract Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;
.super Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite;",
        "BuilderType:",
        "Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;",
        ">",
        "Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder<",
        "TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Lcom/amazon/whispersync/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;->getDefaultInstanceForType()Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public abstract mergeFrom(Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessageLite$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation
.end method

.method protected parseUnknownField(Lcom/amazon/whispersync/google/protobuf/CodedInputStream;Lcom/amazon/whispersync/google/protobuf/ExtensionRegistryLite;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p3}, Lcom/amazon/whispersync/google/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    return p1
.end method
