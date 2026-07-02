.class public Lcom/amazon/kcp/home/models/voltron/BlockDeserializer;
.super Ljava/lang/Object;
.source "VoltronDeserializers.kt"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lcom/amazon/kcp/home/models/voltron/VoltronBlock;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataType:Ljava/lang/reflect/Type;

.field private final layoutType:Ljava/lang/reflect/Type;

.field private final metadataType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 1

    const-string v0, "layoutType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "metadataType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/models/voltron/BlockDeserializer;->layoutType:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lcom/amazon/kcp/home/models/voltron/BlockDeserializer;->metadataType:Ljava/lang/reflect/Type;

    iput-object p3, p0, Lcom/amazon/kcp/home/models/voltron/BlockDeserializer;->dataType:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/amazon/kcp/home/models/voltron/VoltronBlock;
    .locals 3

    const/4 p2, 0x0

    if-eqz p3, :cond_6

    if-eqz p1, :cond_6

    .line 33
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "block"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x422504d6

    if-eq v1, v2, :cond_5

    const v2, -0x1ad284d1

    if-eq v1, v2, :cond_4

    const v2, 0x2eefaa

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "data"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p2, p0, Lcom/amazon/kcp/home/models/voltron/BlockDeserializer;->dataType:Ljava/lang/reflect/Type;

    invoke-interface {p3, p1, p2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/amazon/kcp/home/models/voltron/VoltronBlock;

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "metadata"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p2, p0, Lcom/amazon/kcp/home/models/voltron/BlockDeserializer;->metadataType:Ljava/lang/reflect/Type;

    invoke-interface {p3, p1, p2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/amazon/kcp/home/models/voltron/VoltronBlock;

    goto :goto_1

    :cond_5
    const-string v1, "layout"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p2, p0, Lcom/amazon/kcp/home/models/voltron/BlockDeserializer;->layoutType:Ljava/lang/reflect/Type;

    invoke-interface {p3, p1, p2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/amazon/kcp/home/models/voltron/VoltronBlock;

    :cond_6
    :goto_1
    return-object p2
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/home/models/voltron/BlockDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/amazon/kcp/home/models/voltron/VoltronBlock;

    move-result-object p1

    return-object p1
.end method
