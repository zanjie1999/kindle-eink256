.class final Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$ExtensionDescriptorRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/google/protobuf/GeneratedMessage;->newMessageScopedGeneratedExtension(Lcom/amazon/whispersync/google/protobuf/Message;ILjava/lang/Class;Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$GeneratedExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$descriptorIndex:I

.field final synthetic val$scope:Lcom/amazon/whispersync/google/protobuf/Message;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/google/protobuf/Message;I)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$1;->val$scope:Lcom/amazon/whispersync/google/protobuf/Message;

    iput p2, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$1;->val$descriptorIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescriptor()Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;
    .locals 2

    iget-object v0, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$1;->val$scope:Lcom/amazon/whispersync/google/protobuf/Message;

    invoke-interface {v0}, Lcom/amazon/whispersync/google/protobuf/MessageOrBuilder;->getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/google/protobuf/Descriptors$Descriptor;->getExtensions()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/amazon/whispersync/google/protobuf/GeneratedMessage$1;->val$descriptorIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/google/protobuf/Descriptors$FieldDescriptor;

    return-object v0
.end method
