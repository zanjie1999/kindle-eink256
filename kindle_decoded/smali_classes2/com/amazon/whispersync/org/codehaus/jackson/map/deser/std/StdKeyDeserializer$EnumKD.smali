.class final Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.source "StdKeyDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EnumKD"
.end annotation


# instance fields
.field protected final _factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

.field protected final _resolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ")V"
        }
    .end annotation

    .line 232
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    .line 233
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;->_resolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;

    .line 234
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    return-void
.end method


# virtual methods
.method public _parse(Ljava/lang/String;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;->_factory:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    if-eqz v0, :cond_0

    .line 242
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;->call1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 244
    invoke-static {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->unwrapAndThrowAsIAE(Ljava/lang/Throwable;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$EnumKD;->_resolver:Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumResolver;->findEnum(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string v1, "not one of values for Enum class"

    invoke-virtual {p2, v0, p1, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method
