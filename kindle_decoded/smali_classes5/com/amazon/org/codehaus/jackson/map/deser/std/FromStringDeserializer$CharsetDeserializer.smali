.class public Lcom/amazon/org/codehaus/jackson/map/deser/std/FromStringDeserializer$CharsetDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/FromStringDeserializer;
.source "FromStringDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/deser/std/FromStringDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CharsetDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/deser/std/FromStringDeserializer<",
        "Ljava/nio/charset/Charset;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 238
    const-class v0, Ljava/nio/charset/Charset;

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

    .line 235
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/FromStringDeserializer$CharsetDeserializer;->_deserialize(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1
.end method

.method protected _deserialize(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/nio/charset/Charset;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1
.end method
