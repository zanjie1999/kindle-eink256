.class public abstract Lcom/amazon/org/codehaus/jackson/map/ser/SerializerBase;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "SerializerBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method
