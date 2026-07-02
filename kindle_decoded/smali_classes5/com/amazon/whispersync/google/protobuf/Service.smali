.class public interface abstract Lcom/amazon/whispersync/google/protobuf/Service;
.super Ljava/lang/Object;


# virtual methods
.method public abstract callMethod(Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;Lcom/amazon/whispersync/google/protobuf/RpcController;Lcom/amazon/whispersync/google/protobuf/Message;Lcom/amazon/whispersync/google/protobuf/RpcCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;",
            "Lcom/amazon/whispersync/google/protobuf/RpcController;",
            "Lcom/amazon/whispersync/google/protobuf/Message;",
            "Lcom/amazon/whispersync/google/protobuf/RpcCallback<",
            "Lcom/amazon/whispersync/google/protobuf/Message;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;
.end method

.method public abstract getRequestPrototype(Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;)Lcom/amazon/whispersync/google/protobuf/Message;
.end method

.method public abstract getResponsePrototype(Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;)Lcom/amazon/whispersync/google/protobuf/Message;
.end method
