.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/StdScalarDeserializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;
.source "StdScalarDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer<",
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

    .line 11
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method
