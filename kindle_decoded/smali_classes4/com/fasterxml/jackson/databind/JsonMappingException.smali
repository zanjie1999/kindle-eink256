.class public Lcom/fasterxml/jackson/databind/JsonMappingException;
.super Lcom/fasterxml/jackson/core/JsonProcessingException;
.source "JsonMappingException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _path:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;",
            ">;"
        }
    .end annotation
.end field

.field protected _processor:Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 0

    .line 183
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;)V

    .line 184
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_processor:Ljava/io/Closeable;

    .line 185
    instance-of p2, p1, Lcom/fasterxml/jackson/core/JsonParser;

    if-eqz p2, :cond_0

    .line 189
    check-cast p1, Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonProcessingException;->_location:Lcom/fasterxml/jackson/core/JsonLocation;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/Closeable;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V
    .locals 0

    .line 208
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    .line 209
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_processor:Ljava/io/Closeable;

    return-void
.end method

.method public constructor <init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 197
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/core/JsonProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_processor:Ljava/io/Closeable;

    .line 199
    instance-of p2, p1, Lcom/fasterxml/jackson/core/JsonParser;

    if-eqz p2, :cond_0

    .line 200
    check-cast p1, Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonProcessingException;->_location:Lcom/fasterxml/jackson/core/JsonLocation;

    :cond_0
    return-void
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 2

    .line 230
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1

    .line 237
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1

    .line 216
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1

    .line 223
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1

    .line 244
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1

    .line 251
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1

    .line 262
    new-instance p0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object p0
.end method

.method public static from(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1

    .line 273
    new-instance p0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public static fromUnexpectedIOE(Ljava/io/IOException;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 4

    .line 284
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "Unexpected IOException (of type %s): %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static wrapWithPath(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 4

    .line 323
    instance-of v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    if-eqz v0, :cond_0

    .line 324
    check-cast p0, Lcom/fasterxml/jackson/databind/JsonMappingException;

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 329
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 v1, 0x0

    .line 333
    instance-of v2, p0, Lcom/fasterxml/jackson/core/JsonProcessingException;

    if-eqz v2, :cond_3

    .line 334
    move-object v2, p0

    check-cast v2, Lcom/fasterxml/jackson/core/JsonProcessingException;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getProcessor()Ljava/lang/Object;

    move-result-object v2

    .line 335
    instance-of v3, v2, Ljava/io/Closeable;

    if-eqz v3, :cond_3

    .line 336
    move-object v1, v2

    check-cast v1, Ljava/io/Closeable;

    .line 339
    :cond_3
    new-instance v2, Lcom/fasterxml/jackson/databind/JsonMappingException;

    invoke-direct {v2, v1, v0, p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v2

    .line 341
    :goto_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->prependPath(Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)V

    return-object p0
.end method

.method public static wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1

    .line 311
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p0

    return-object p0
.end method

.method public static wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    .locals 1

    .line 299
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected _appendPathDesc(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 466
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    return-void

    .line 469
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 470
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "->"

    .line 473
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected _buildMessage()Ljava/lang/String;
    .locals 2

    .line 436
    invoke-super {p0}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    const-string v1, " (through reference chain: "

    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getPathReference(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->_buildMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->_buildMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPathReference(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    .line 374
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->_appendPathDesc(Ljava/lang/StringBuilder;)V

    return-object p1
.end method

.method public prependPath(Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_1

    .line 407
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/JsonMappingException;->_path:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public prependPath(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 384
    new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->prependPath(Lcom/fasterxml/jackson/databind/JsonMappingException$Reference;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
