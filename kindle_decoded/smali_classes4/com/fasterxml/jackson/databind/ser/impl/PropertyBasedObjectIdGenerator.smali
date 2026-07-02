.class public Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;
.super Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;
.source "PropertyBasedObjectIdGenerator.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _property:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
    .locals 0

    .line 18
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getScope()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;-><init>(Ljava/lang/Class;)V

    .line 24
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;->_property:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    return-void
.end method


# virtual methods
.method public canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<",
            "*>;)Z"
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 34
    check-cast p1, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    .line 35
    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;->getScope()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;->_scope:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 42
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;->_property:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;->_property:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public forScope(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;->_scope:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;->_property:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    :goto_0
    return-object v0
.end method

.method public generateId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;->_property:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem accessing property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;->_property:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 53
    throw p1
.end method

.method public key(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 77
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;

    const-class v1, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;->_scope:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public newForSerialization(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p0
.end method
