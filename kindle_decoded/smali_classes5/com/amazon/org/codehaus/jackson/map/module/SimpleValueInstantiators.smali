.class public Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;
.super Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators$Base;
.source "SimpleValueInstantiators.java"


# instance fields
.field protected _classMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators$Base;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;->_classMappings:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addValueInstantiator(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;)Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;->_classMappings:Ljava/util/HashMap;

    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-direct {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public findValueInstantiator(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;)Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 1

    .line 42
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/module/SimpleValueInstantiators;->_classMappings:Ljava/util/HashMap;

    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;

    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/amazon/org/codehaus/jackson/map/type/ClassKey;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    return-object p3
.end method
