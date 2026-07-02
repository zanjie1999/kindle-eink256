.class public Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;
.super Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;
.source "SimpleFilterProvider.java"


# instance fields
.field protected _cfgFailOnUnknownId:Z

.field protected _defaultFilter:Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyFilter;

.field protected final _filtersById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyFilter;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/ser/FilterProvider;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_cfgFailOnUnknownId:Z

    .line 49
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyFilter;)Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public findFilter(Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyFilter;
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyFilter;

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_defaultFilter:Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyFilter;

    if-nez v0, :cond_1

    .line 107
    iget-boolean v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_cfgFailOnUnknownId:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No filter configured with id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\' (type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getDefaultFilter()Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyFilter;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_defaultFilter:Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyFilter;

    return-object v0
.end method

.method public removeFilter(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyFilter;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_filtersById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyFilter;

    return-object p1
.end method

.method public setDefaultFilter(Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyFilter;)Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_defaultFilter:Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyFilter;

    return-object p0
.end method

.method public setFailOnUnknownId(Z)Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_cfgFailOnUnknownId:Z

    return-object p0
.end method

.method public willFailOnUnknownId()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleFilterProvider;->_cfgFailOnUnknownId:Z

    return v0
.end method
