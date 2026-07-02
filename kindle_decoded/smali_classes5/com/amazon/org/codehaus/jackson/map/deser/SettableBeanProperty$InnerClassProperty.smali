.class public final Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;
.super Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;
.source "SettableBeanProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InnerClassProperty"
.end annotation


# instance fields
.field protected final _creator:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _delegate:Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;


# direct methods
.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 740
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 741
    iget-object v0, p1, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_delegate:Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->withValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_delegate:Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 742
    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 733
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    .line 734
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_delegate:Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 735
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public deserializeAndSet(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 767
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 769
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NULL:Lcom/amazon/org/codehaus/jackson/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 770
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->_nullProvider:Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$NullProvider;->nullValue(Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueTypeDeserializer:Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;

    if-eqz v0, :cond_2

    .line 772
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v1, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserializeWithType(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 775
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to instantiate class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_creator:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", problem: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->unwrapAndThrowAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 780
    :goto_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->_valueDeserializer:Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;

    invoke-virtual {v0, p1, p2, v2}, Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    :goto_1
    invoke-virtual {p0, p3, v2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

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

    .line 754
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_delegate:Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getMember()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_delegate:Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getMember()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object v0

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 788
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->_delegate:Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public withValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;"
        }
    .end annotation

    .line 747
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;

    invoke-direct {v0, p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0
.end method

.method public bridge synthetic withValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 0

    .line 717
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;->withValueDeserializer(Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty$InnerClassProperty;

    move-result-object p1

    return-object p1
.end method
