.class final Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;
.super Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Empty"
.end annotation


# static fields
.field protected static final instance:Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 106
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Empty;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;-><init>()V

    return-void
.end method


# virtual methods
.method public newWith(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Single;

    invoke-direct {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Single;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method

.method public serializerFor(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
