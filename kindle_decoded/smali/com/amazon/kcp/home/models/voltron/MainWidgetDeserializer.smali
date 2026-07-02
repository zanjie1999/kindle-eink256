.class public final Lcom/amazon/kcp/home/models/voltron/MainWidgetDeserializer;
.super Ljava/lang/Object;
.source "SidekickBlockDeserializers.kt"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lcom/amazon/kcp/home/models/voltron/MainWidget;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSidekickBlockDeserializers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SidekickBlockDeserializers.kt\ncom/amazon/kcp/home/models/voltron/MainWidgetDeserializer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 VoltronDeserializers.kt\ncom/amazon/kcp/home/models/voltron/VoltronDeserializersKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,140:1\n1#2:141\n1#2:157\n69#3:142\n69#3:156\n734#4:143\n825#4,2:144\n1571#4,9:146\n1819#4:155\n1820#4:158\n1580#4:159\n*E\n*S KotlinDebug\n*F\n+ 1 SidekickBlockDeserializers.kt\ncom/amazon/kcp/home/models/voltron/MainWidgetDeserializer\n*L\n51#1:157\n48#1:142\n51#1:156\n50#1:143\n50#1,2:144\n51#1,9:146\n51#1:155\n51#1:158\n51#1:159\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isConfigWidget(Lcom/google/gson/JsonElement;)Z
    .locals 3

    const-string v0, "com.amazon.kcp.home.models.voltron.SidekickBlockDeserializer"

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 82
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 87
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string/jumbo v2, "model"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 88
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "campaignContext"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 94
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "contents"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 100
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string/jumbo v0, "sourceType"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "DEVICE_CONFIG"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1

    :cond_5
    :goto_1
    const-string p1, "Widget \'model\' is null or not object, skipping for config search"

    .line 89
    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_6
    :goto_2
    const-string p1, "Widget is null or not object, skipping for config search"

    .line 83
    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private final isSidekickCard(Lcom/google/gson/JsonElement;)Z
    .locals 3

    const-string v0, "com.amazon.kcp.home.models.voltron.SidekickBlockDeserializer"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 125
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string/jumbo v2, "metadata"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 131
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string/jumbo v0, "vltn:sidekick"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v1

    :cond_3
    :goto_0
    const-string p1, "Widget \'metadata\' is null or not object, skipping for sidekick check"

    .line 132
    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    :goto_1
    const-string p1, "Widget is null or not object, skipping for sidekick check"

    .line 126
    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/amazon/kcp/home/models/voltron/MainWidget;
    .locals 3

    const/4 p2, 0x0

    if-eqz p3, :cond_9

    if-eqz p1, :cond_9

    .line 36
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string/jumbo v0, "widgets"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 41
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    const-string/jumbo v0, "widgetsArray"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-direct {p0, v2}, Lcom/amazon/kcp/home/models/voltron/MainWidgetDeserializer;->isConfigWidget(Lcom/google/gson/JsonElement;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_3
    move-object v1, p2

    :goto_0
    check-cast v1, Lcom/google/gson/JsonElement;

    if-eqz v1, :cond_4

    .line 142
    new-instance p2, Lcom/amazon/kcp/home/models/voltron/MainWidgetDeserializer$$special$$inlined$deserialize$1;

    invoke-direct {p2}, Lcom/amazon/kcp/home/models/voltron/MainWidgetDeserializer$$special$$inlined$deserialize$1;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-interface {p3, v1, p2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/home/models/voltron/ConfigWidget;

    .line 143
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 50
    invoke-direct {p0, v2}, Lcom/amazon/kcp/home/models/voltron/MainWidgetDeserializer;->isSidekickCard(Lcom/google/gson/JsonElement;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 154
    check-cast v1, Lcom/google/gson/JsonElement;

    const-string v2, "it"

    .line 51
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    new-instance v2, Lcom/amazon/kcp/home/models/voltron/MainWidgetDeserializer$$special$$inlined$deserialize$2;

    invoke-direct {v2}, Lcom/amazon/kcp/home/models/voltron/MainWidgetDeserializer$$special$$inlined$deserialize$2;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/home/models/voltron/SidekickCard;

    if-eqz v1, :cond_7

    .line 154
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 52
    :cond_8
    new-instance p3, Lcom/amazon/kcp/home/models/voltron/MainWidget;

    invoke-direct {p3, p2, p1}, Lcom/amazon/kcp/home/models/voltron/MainWidget;-><init>(Lcom/amazon/kcp/home/models/voltron/ConfigWidget;Ljava/util/List;)V

    return-object p3

    :cond_9
    :goto_3
    return-object p2
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/home/models/voltron/MainWidgetDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/amazon/kcp/home/models/voltron/MainWidget;

    move-result-object p1

    return-object p1
.end method
