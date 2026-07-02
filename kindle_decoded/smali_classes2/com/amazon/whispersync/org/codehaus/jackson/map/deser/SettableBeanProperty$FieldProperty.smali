.class public final Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;
.source "SettableBeanProperty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldProperty"
.end annotation


# instance fields
.field protected final _annotated:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;

.field protected final _field:Ljava/lang/reflect/Field;


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 545
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 546
    iget-object p2, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_annotated:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;

    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_annotated:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;

    .line 547
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_field:Ljava/lang/reflect/Field;

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_field:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;)V
    .locals 0

    .line 539
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;)V

    .line 540
    iput-object p5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_annotated:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;

    .line 541
    invoke-virtual {p5}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotated()Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_field:Ljava/lang/reflect/Field;

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

    .line 579
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->deserialize(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

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

    .line 563
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_annotated:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getMember()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_annotated:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;

    return-object v0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->_field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 589
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;->_throwAsIOE(Ljava/lang/Exception;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public withValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;"
        }
    .end annotation

    .line 552
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;

    invoke-direct {v0, p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    return-object v0
.end method

.method public bridge synthetic withValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 0

    .line 526
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;->withValueDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty$FieldProperty;

    move-result-object p1

    return-object p1
.end method
