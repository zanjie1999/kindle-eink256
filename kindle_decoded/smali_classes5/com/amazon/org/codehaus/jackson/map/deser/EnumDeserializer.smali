.class public Lcom/amazon/org/codehaus/jackson/map/deser/EnumDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer;
.source "EnumDeserializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver<",
            "*>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;)V

    return-void
.end method
