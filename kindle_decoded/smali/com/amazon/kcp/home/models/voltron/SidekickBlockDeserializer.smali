.class public final Lcom/amazon/kcp/home/models/voltron/SidekickBlockDeserializer;
.super Lcom/amazon/kcp/home/models/voltron/BlockDeserializer;
.source "SidekickBlockDeserializers.kt"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 24
    new-instance v0, Lcom/amazon/kcp/home/models/voltron/LayoutType;

    invoke-direct {v0}, Lcom/amazon/kcp/home/models/voltron/LayoutType;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "LayoutType().type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/amazon/kcp/home/models/voltron/MetadataType;

    invoke-direct {v1}, Lcom/amazon/kcp/home/models/voltron/MetadataType;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "MetadataType().type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/amazon/kcp/home/models/voltron/DataType;

    invoke-direct {v2}, Lcom/amazon/kcp/home/models/voltron/DataType;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    const-string v3, "DataType().type"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/home/models/voltron/BlockDeserializer;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-void
.end method
