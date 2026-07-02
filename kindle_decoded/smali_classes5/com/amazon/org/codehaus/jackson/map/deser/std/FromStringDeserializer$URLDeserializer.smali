.class public Lcom/amazon/org/codehaus/jackson/map/deser/std/FromStringDeserializer$URLDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/FromStringDeserializer;
.source "FromStringDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/deser/std/FromStringDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URLDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/deser/std/FromStringDeserializer<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 136
    const-class v0, Ljava/net/URL;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic _deserialize(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/FromStringDeserializer$URLDeserializer;->_deserialize(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method protected _deserialize(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/net/URL;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
