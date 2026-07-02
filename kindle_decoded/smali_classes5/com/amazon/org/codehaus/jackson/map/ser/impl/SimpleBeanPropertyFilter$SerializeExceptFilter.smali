.class public Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;
.super Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;
.source "SimpleBeanPropertyFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializeExceptFilter"
.end annotation


# instance fields
.field protected final _propertiesToExclude:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;->_propertiesToExclude:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public serializeAsField(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SimpleBeanPropertyFilter$SerializeExceptFilter;->_propertiesToExclude:Ljava/util/Set;

    invoke-virtual {p4}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p4, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    :cond_0
    return-void
.end method
