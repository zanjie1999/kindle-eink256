.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;
.source "StdKeyDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$UuidKD;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$CalendarKD;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$DateKD;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringFactoryKeyDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringCtorKeyDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$FloatKD;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$DoubleKD;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$LongKD;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$IntKD;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$CharKD;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$ShortKD;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$ByteKD;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$BoolKD;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;
    }
.end annotation


# instance fields
.field protected final _keyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected abstract _parse(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected _parseDouble(Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 67
    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/NumberInput;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method protected _parseInt(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected _parseLong(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 62
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final deserializeKey(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;->_parse(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    return-object v0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string v1, "not a valid representation"

    invoke-virtual {p2, v0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :catch_0
    move-exception v0

    .line 40
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a valid representation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public getKeyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    return-object v0
.end method
