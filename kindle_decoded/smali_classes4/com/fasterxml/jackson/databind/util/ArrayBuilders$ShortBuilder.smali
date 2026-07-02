.class public final Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;
.super Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/ArrayBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShortBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder<",
        "[S>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic _constructArray(I)Ljava/lang/Object;
    .locals 0

    .line 104
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;->_constructArray(I)[S

    move-result-object p1

    return-object p1
.end method

.method public final _constructArray(I)[S
    .locals 0

    .line 109
    new-array p1, p1, [S

    return-object p1
.end method
