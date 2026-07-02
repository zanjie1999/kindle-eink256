.class public Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "FailingSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _msg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 28
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 29
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;->_msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    new-instance p1, Lcom/fasterxml/jackson/core/JsonGenerationException;

    iget-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/FailingSerializer;->_msg:Ljava/lang/String;

    invoke-direct {p1, p3, p2}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    throw p1
.end method
