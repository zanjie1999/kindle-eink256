.class public final Lcom/amazon/kcp/home/models/voltron/VoltronActionDeserializer;
.super Ljava/lang/Object;
.source "VoltronDeserializers.kt"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lcom/amazon/kcp/home/models/voltron/VoltronAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoltronDeserializers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoltronDeserializers.kt\ncom/amazon/kcp/home/models/voltron/VoltronActionDeserializer\n+ 2 VoltronDeserializers.kt\ncom/amazon/kcp/home/models/voltron/VoltronDeserializersKt\n*L\n1#1,70:1\n69#2:71\n*E\n*S KotlinDebug\n*F\n+ 1 VoltronDeserializers.kt\ncom/amazon/kcp/home/models/voltron/VoltronActionDeserializer\n*L\n59#1:71\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/amazon/kcp/home/models/voltron/VoltronAction;
    .locals 3

    const/4 p2, 0x0

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "event"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "action"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string p2, "args"

    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    const-string p2, "json.asJsonObject[KEY_ARGS]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance p2, Lcom/amazon/kcp/home/models/voltron/VoltronActionDeserializer$deserialize$$inlined$deserialize$1;

    invoke-direct {p2}, Lcom/amazon/kcp/home/models/voltron/VoltronActionDeserializer$deserialize$$inlined$deserialize$1;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 60
    :goto_0
    new-instance p2, Lcom/amazon/kcp/home/models/voltron/VoltronAction;

    invoke-direct {p2, v0, v1, p1}, Lcom/amazon/kcp/home/models/voltron/VoltronAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-object p2
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/home/models/voltron/VoltronActionDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/amazon/kcp/home/models/voltron/VoltronAction;

    move-result-object p1

    return-object p1
.end method
