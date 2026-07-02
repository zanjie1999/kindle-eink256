.class public final Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;
.super Ljava/lang/Object;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializerAndMapResult"
.end annotation


# instance fields
.field public final map:Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

.field public final serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;",
            ")V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    .line 76
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;

    return-void
.end method
