.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$PatternDeserializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer;
.source "FromStringDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PatternDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer<",
        "Ljava/util/regex/Pattern;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 176
    const-class v0, Ljava/util/regex/Pattern;

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

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$PatternDeserializer;->_deserialize(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1
.end method

.method protected _deserialize(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/regex/Pattern;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 183
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1
.end method
