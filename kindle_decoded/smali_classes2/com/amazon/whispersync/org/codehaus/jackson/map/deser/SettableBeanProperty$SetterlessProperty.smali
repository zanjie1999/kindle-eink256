.class public final Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;
.source "SettableBeanProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetterlessProperty"
.end annotation


# instance fields
.field protected final _annotated:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

.field protected final _getter:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 453
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 454
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_annotated:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_annotated:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 455
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_getter:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_getter:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 0

    .line 447
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;)V

    .line 448
    iput-object p5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_annotated:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 449
    invoke-virtual {p5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_getter:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final deserializeAndSet(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 487
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 488
    sget-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/whispersync/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    return-void

    .line 498
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_getter:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_1

    .line 511
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 509
    :cond_1
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Problem deserializing \'setterless\' property \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\': get method returned null"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 500
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_throwAsIOE(Ljava/lang/Exception;)Ljava/io/IOException;

    return-void
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

    .line 471
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_annotated:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getMember()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->_annotated:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 518
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Should never call \'set\' on setterless property"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;"
        }
    .end annotation

    .line 460
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0
.end method

.method public bridge synthetic withValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;->withValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$SetterlessProperty;

    move-result-object p1

    return-object p1
.end method
