.class public abstract Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;
.source "StdDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializer$StringDeserializer;,
        Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializer$CalendarDeserializer;,
        Lcom/amazon/org/codehaus/jackson/map/deser/StdDeserializer$ClassDeserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method
