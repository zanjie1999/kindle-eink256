.class public final Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;
.super Lcom/amazon/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DoubleBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/util/PrimitiveArrayBuilder<",
        "[D>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/util/PrimitiveArrayBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic _constructArray(I)Ljava/lang/Object;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;->_constructArray(I)[D

    move-result-object p1

    return-object p1
.end method

.method public final _constructArray(I)[D
    .locals 0

    .line 136
    new-array p1, p1, [D

    return-object p1
.end method
