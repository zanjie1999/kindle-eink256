.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;
.super Ljava/lang/Object;
.source "BeanSerializerBuilder.java"


# static fields
.field private static final NO_PROPERTIES:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;


# instance fields
.field protected _anyGetter:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/AnyGetterWriter;

.field protected final _beanDesc:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

.field protected _filterId:Ljava/lang/Object;

.field protected _filteredProperties:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

.field protected _properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 19
    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->NO_PROPERTIES:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_beanDesc:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_beanDesc:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_beanDesc:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 71
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    .line 72
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filteredProperties:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filteredProperties:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 73
    iget-object v0, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_anyGetter:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/AnyGetterWriter;

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_anyGetter:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/AnyGetterWriter;

    .line 74
    iget-object p1, p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filterId:Ljava/lang/Object;

    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filterId:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    goto :goto_1

    .line 120
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_anyGetter:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/AnyGetterWriter;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_2
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->NO_PROPERTIES:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    :goto_1
    move-object v3, v0

    .line 128
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializer;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_beanDesc:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;->getType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filteredProperties:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    iget-object v5, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_anyGetter:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/AnyGetterWriter;

    iget-object v6, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filterId:Ljava/lang/Object;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializer;-><init>(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/AnyGetterWriter;Ljava/lang/Object;)V

    return-object v0
.end method

.method public createDummy()Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializer;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_beanDesc:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    invoke-virtual {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializer;->createDummy(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializer;

    move-result-object v0

    return-object v0
.end method

.method public getBeanDescription()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_beanDesc:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    return-object v0
.end method

.method public getFilteredProperties()[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filteredProperties:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    return-object v0
.end method

.method public hasProperties()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAnyGetter(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/AnyGetterWriter;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_anyGetter:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/AnyGetterWriter;

    return-void
.end method

.method public setFilterId(Ljava/lang/Object;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filterId:Ljava/lang/Object;

    return-void
.end method

.method public setFilteredProperties([Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_filteredProperties:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    return-void
.end method

.method public setProperties(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            ">;)V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerBuilder;->_properties:Ljava/util/List;

    return-void
.end method
