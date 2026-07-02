.class final Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;
.super Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;
.source "FilteredBeanPropertyWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleView"
.end annotation


# instance fields
.field protected final _delegate:Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

.field protected final _view:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;-><init>(Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V

    .line 40
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;->_delegate:Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    .line 41
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;->_view:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public serializeAsField(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->getSerializationView()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;->_view:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;->_delegate:Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    :cond_1
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

    .line 46
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;->_delegate:Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->withSerializer(Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;->_view:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/ser/FilteredBeanPropertyWriter$SingleView;-><init>(Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;Ljava/lang/Class;)V

    return-object v0
.end method
