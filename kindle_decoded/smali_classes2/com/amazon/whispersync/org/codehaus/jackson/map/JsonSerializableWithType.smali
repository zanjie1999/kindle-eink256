.class public interface abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializableWithType;
.super Ljava/lang/Object;
.source "JsonSerializableWithType.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializable;


# virtual methods
.method public abstract serializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method
