.class final Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;
.super Ljava/lang/Object;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeAndSerializer"
.end annotation


# instance fields
.field public final serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;->type:Ljava/lang/Class;

    .line 90
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;->serializer:Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-void
.end method
