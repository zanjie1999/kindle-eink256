.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/ContainerDeserializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;
.source "ContainerDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method
