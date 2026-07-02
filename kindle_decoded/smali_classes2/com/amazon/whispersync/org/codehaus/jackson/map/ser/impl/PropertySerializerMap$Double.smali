.class final Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Double"
.end annotation


# instance fields
.field private final _serializer1:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _serializer2:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _type1:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final _type2:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_type1:Ljava/lang/Class;

    .line 159
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_serializer1:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    .line 160
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_type2:Ljava/lang/Class;

    .line 161
    iput-object p4, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_serializer2:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-void
.end method


# virtual methods
.method public newWith(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;"
        }
    .end annotation

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    .line 180
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_type1:Ljava/lang/Class;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_serializer1:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    invoke-direct {p2, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 181
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_type2:Ljava/lang/Class;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_serializer2:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    invoke-direct {p2, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;-><init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 182
    new-instance p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;-><init>([Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;)V

    return-object p2
.end method

.method public serializerFor(Ljava/lang/Class;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_type1:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 168
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_serializer1:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-object p1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_type2:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    .line 171
    iget-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;->_serializer2:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
