.class public interface abstract Lcom/amazon/whispersync/google/protobuf/BlockingService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract callBlockingMethod(Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;Lcom/amazon/whispersync/google/protobuf/RpcController;Lcom/amazon/whispersync/google/protobuf/Message;)Lcom/amazon/whispersync/google/protobuf/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/google/protobuf/ServiceException;
        }
    .end annotation
.end method

.method public abstract getDescriptorForType()Lcom/amazon/whispersync/google/protobuf/Descriptors$ServiceDescriptor;
.end method

.method public abstract getRequestPrototype(Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;)Lcom/amazon/whispersync/google/protobuf/Message;
.end method

.method public abstract getResponsePrototype(Lcom/amazon/whispersync/google/protobuf/Descriptors$MethodDescriptor;)Lcom/amazon/whispersync/google/protobuf/Message;
.end method
