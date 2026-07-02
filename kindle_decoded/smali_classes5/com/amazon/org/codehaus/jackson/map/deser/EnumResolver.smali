.class public final Lcom/amazon/org/codehaus/jackson/map/deser/EnumResolver;
.super Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;
.source "EnumResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;[TT;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;)V

    return-void
.end method
