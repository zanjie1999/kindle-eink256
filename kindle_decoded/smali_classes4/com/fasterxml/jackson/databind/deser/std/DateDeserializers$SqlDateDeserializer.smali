.class public Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
.source "DateDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SqlDateDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 272
    const-class v0, Ljava/sql/Date;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;Ljava/text/DateFormat;Ljava/lang/String;)V
    .locals 0

    .line 274
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;Ljava/text/DateFormat;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/sql/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_parseDate(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 285
    :cond_0
    new-instance p2, Ljava/sql/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/sql/Date;-><init>(J)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
    .locals 0

    .line 269
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;->withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;

    move-result-object p1

    return-object p1
.end method

.method protected withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;
    .locals 1

    .line 279
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer;Ljava/text/DateFormat;Ljava/lang/String;)V

    return-object v0
.end method
