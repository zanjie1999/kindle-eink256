.class final Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;
.super Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;
.source "FilteredBeanPropertyWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultiView"
.end annotation


# instance fields
.field protected final _delegate:Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

.field protected final _views:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    .line 69
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_delegate:Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 70
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public serializeAsField(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->getSerializationView()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 84
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    array-length v2, v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 86
    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v1, v2, :cond_2

    return-void

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_delegate:Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public withSerializer(Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_delegate:Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->withSerializer(Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$MultiView;-><init>(Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;[Ljava/lang/Class;)V

    return-object v0
.end method
