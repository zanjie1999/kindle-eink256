.class final Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$1;
.super Lcom/google/protobuf/AbstractParser;
.source "ProtobufWifiConnectionDetailsClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1044
    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1049
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$1;)V

    return-object v0
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1044
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails$1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/amazon/whisperjoin/protobuf/ProtobufWifiConnectionDetailsClass$ProtobufWifiConnectionDetails;

    move-result-object p1

    return-object p1
.end method
