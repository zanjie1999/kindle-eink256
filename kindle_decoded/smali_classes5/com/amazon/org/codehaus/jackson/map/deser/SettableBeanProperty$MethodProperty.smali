.class public final Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;
.super Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;
.source "SettableBeanProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MethodProperty"
.end annotation


# instance fields
.field protected final _annotated:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

.field protected final _setter:Ljava/lang/reflect/Method;


# direct methods
.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 380
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 381
    iget-object p2, p1, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_annotated:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_annotated:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 382
    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_setter:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_setter:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 0

    .line 374
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/org/codehaus/jackson/map/util/Annotations;)V

    .line 375
    iput-object p5, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_annotated:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    .line 376
    invoke-virtual {p5}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_setter:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public deserializeAndSet(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 414
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

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

    .line 398
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_annotated:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedWithParams;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getMember()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_annotated:Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->_setter:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 424
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public withValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;"
        }
    .end annotation

    .line 387
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0
.end method

.method public bridge synthetic withValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 0

    .line 360
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;->withValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$MethodProperty;

    move-result-object p1

    return-object p1
.end method
