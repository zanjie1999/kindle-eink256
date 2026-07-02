.class final Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;
.super Ljava/lang/Object;
.source "JsonSerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Bucket"
.end annotation


# instance fields
.field public final key:Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

.field public final next:Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

.field public final value:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;",
            "Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->next:Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;

    .line 89
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->key:Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    .line 90
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/JsonSerializerMap$Bucket;->value:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    return-void
.end method
