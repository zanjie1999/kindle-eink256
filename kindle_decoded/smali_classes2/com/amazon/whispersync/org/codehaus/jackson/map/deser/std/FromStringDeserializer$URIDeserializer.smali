.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$URIDeserializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer;
.source "FromStringDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URIDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 149
    const-class v0, Ljava/net/URI;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic _deserialize(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$URIDeserializer;->_deserialize(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method

.method protected _deserialize(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/net/URI;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 155
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1
.end method
