.class public Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "StdKeySerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 26
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 27
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    check-cast p1, Ljava/lang/Enum;

    .line 33
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 38
    :cond_2
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_3

    .line 39
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeDateKey(Ljava/util/Date;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void

    .line 41
    :cond_3
    const-class p3, Ljava/lang/Class;

    if-ne v0, p3, :cond_4

    .line 42
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 44
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    :goto_0
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    return-void
.end method
