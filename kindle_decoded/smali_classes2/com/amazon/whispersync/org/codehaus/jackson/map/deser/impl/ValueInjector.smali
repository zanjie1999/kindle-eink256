.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/ValueInjector;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;
.source "ValueInjector.java"


# instance fields
.field protected final _valueId:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;Ljava/lang/Object;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Annotations;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)V

    .line 32
    iput-object p5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/ValueInjector;->_valueId:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public findValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/ValueInjector;->_valueId:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->findInjectableValue(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public inject(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;->_member:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/ValueInjector;->findValue(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
