.class public Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
.super Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
.source "JsonMappingException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;
    }
.end annotation


# static fields
.field static final MAX_REFS_TO_LIST:I = 0x3e8

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected _path:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 143
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/JsonProcessingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static from(Lcom/amazon/org/codehaus/jackson/JsonParser;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
    .locals 1

    .line 163
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/amazon/org/codehaus/jackson/JsonLocation;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;)V

    return-object v0
.end method

.method public static from(Lcom/amazon/org/codehaus/jackson/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
    .locals 1

    .line 169
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getTokenLocation()Lcom/amazon/org/codehaus/jackson/JsonLocation;

    move-result-object p0

    invoke-direct {v0, p1, p0, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static wrapWithPath(Ljava/lang/Throwable;Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
    .locals 3

    .line 208
    instance-of v0, p0, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    if-eqz v0, :cond_0

    .line 209
    check-cast p0, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 216
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

    .line 218
    :cond_2
    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/JsonLocation;Ljava/lang/Throwable;)V

    move-object p0, v1

    .line 220
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->prependPath(Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;)V

    return-object p0
.end method

.method public static wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
    .locals 1

    .line 197
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p0

    return-object p0
.end method

.method public static wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
    .locals 1

    .line 183
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected _appendPathDesc(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 322
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "->"

    .line 325
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 287
    invoke-super {p0}, Lcom/amazon/org/codehaus/jackson/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    const-string v1, " (through reference chain: "

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->_appendPathDesc(Ljava/lang/StringBuilder;)V

    const/16 v1, 0x29

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 233
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 235
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public prependPath(Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;)V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->_path:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public prependPath(Ljava/lang/Object;I)V
    .locals 1

    .line 253
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;I)V

    .line 254
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->prependPath(Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;)V

    return-void
.end method

.method public prependPath(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 244
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;

    invoke-direct {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->prependPath(Lcom/amazon/org/codehaus/jackson/map/JsonMappingException$Reference;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
