.class public Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
.source "SqlDateSerializer.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;-><init>(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Boolean;)V
    .locals 2

    .line 31
    const-class v0, Ljava/sql/Date;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;Ljava/text/DateFormat;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic _timestamp(Ljava/lang/Object;)J
    .locals 2

    .line 18
    check-cast p1, Ljava/sql/Date;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;->_timestamp(Ljava/sql/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _timestamp(Ljava/sql/Date;)J
    .locals 2

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p1}, Ljava/sql/Date;->getTime()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    check-cast p1, Ljava/sql/Date;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;->serialize(Ljava/sql/Date;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/sql/Date;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_asTimestamp(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;->_timestamp(Ljava/sql/Date;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic withFormat(Ljava/lang/Boolean;Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;->withFormat(Ljava/lang/Boolean;Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;

    move-result-object p1

    return-object p1
.end method

.method public withFormat(Ljava/lang/Boolean;Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;
    .locals 0

    .line 36
    new-instance p2, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;

    invoke-direct {p2, p1}, Lcom/fasterxml/jackson/databind/ser/std/SqlDateSerializer;-><init>(Ljava/lang/Boolean;)V

    return-object p2
.end method
