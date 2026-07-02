.class public Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;
.super Ljava/lang/Object;
.source "SimpleKeyDeserializers.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;


# instance fields
.field protected _classMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;",
            "Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;->_classMappings:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addDeserializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;)Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;->_classMappings:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;->_classMappings:Ljava/util/HashMap;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;->_classMappings:Ljava/util/HashMap;

    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public findKeyDeserializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;
    .locals 0

    .line 54
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleKeyDeserializers;->_classMappings:Ljava/util/HashMap;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 57
    :cond_0
    new-instance p3, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/KeyDeserializer;

    return-object p1
.end method
