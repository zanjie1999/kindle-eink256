.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;
.source "FromStringDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$TimeZoneDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$CharsetDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$InetAddressDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$LocaleDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$PatternDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$CurrencyDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$URIDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$URLDeserializer;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$UUIDDeserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdScalarDeserializer<",
        "TT;>;"
    }
.end annotation


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

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static all()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer<",
            "*>;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$UUIDDeserializer;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$UUIDDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$URLDeserializer;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$URLDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$URIDeserializer;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$URIDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$CurrencyDeserializer;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$CurrencyDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$PatternDeserializer;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$PatternDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$LocaleDeserializer;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$LocaleDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$InetAddressDeserializer;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$InetAddressDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$TimeZoneDeserializer;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$TimeZoneDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$CharsetDeserializer;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer$CharsetDeserializer;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected abstract _deserialize(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method protected _deserializeEmbedded(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Don\'t know how to convert embedded Object of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " into "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public final deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 55
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    .line 61
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer;->_deserialize(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return-object p1

    .line 68
    :catch_0
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    const-string v0, "not a valid textual representation"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 70
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_5

    .line 72
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v2

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object p1

    .line 79
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/FromStringDeserializer;->_deserializeEmbedded(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 81
    :cond_5
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method
