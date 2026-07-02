.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;
.source "CreatorProperty.java"


# instance fields
.field protected final _annotated:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

.field protected final _injectableValueId:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 73
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_annotated:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_annotated:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    .line 74
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_injectableValueId:Ljava/lang/Object;

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_injectableValueId:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;ILjava/lang/Object;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;)V

    .line 66
    iput-object p5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_annotated:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    .line 67
    iput p6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_propertyIndex:I

    .line 68
    iput-object p7, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_injectableValueId:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public deserializeAndSet(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public findInjectableValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_injectableValueId:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1, v0, p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->findInjectableValue(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Property \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' (type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") has no injectable value id configured"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_annotated:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 119
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getInjectableValueId()Ljava/lang/Object;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_injectableValueId:Ljava/lang/Object;

    return-object v0
.end method

.method public getMember()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;->_annotated:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;

    return-object v0
.end method

.method public inject(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;->findInjectableValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic withValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;->withValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    move-result-object p1

    return-object p1
.end method

.method public withValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/CreatorProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0
.end method
