.class public final Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer;
.super Ljava/lang/Object;
.source "SidekickCardDeserializer.kt"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lcom/amazon/kcp/home/models/voltron/SidekickCard;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSidekickCardDeserializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SidekickCardDeserializer.kt\ncom/amazon/kcp/home/models/voltron/SidekickCardDeserializer\n+ 2 VoltronDeserializers.kt\ncom/amazon/kcp/home/models/voltron/VoltronDeserializersKt\n*L\n1#1,120:1\n69#2:121\n69#2:122\n69#2:123\n69#2:124\n69#2:125\n69#2:126\n69#2:127\n69#2:128\n69#2:129\n69#2:130\n69#2:131\n69#2:132\n69#2:133\n*E\n*S KotlinDebug\n*F\n+ 1 SidekickCardDeserializer.kt\ncom/amazon/kcp/home/models/voltron/SidekickCardDeserializer\n*L\n44#1:121\n65#1:122\n70#1:123\n74#1:124\n78#1:125\n82#1:126\n86#1:127\n90#1:128\n94#1:129\n98#1:130\n102#1:131\n106#1:132\n110#1:133\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/amazon/kcp/home/models/voltron/SidekickCard;
    .locals 11

    const/4 p2, 0x0

    if-eqz p3, :cond_14

    if-eqz p1, :cond_14

    .line 35
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string/jumbo v1, "model"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 40
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 121
    :cond_1
    new-instance v2, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$1;

    invoke-direct {v2}, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p3, v0, v2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/home/models/voltron/SidekickModel;

    if-eqz v0, :cond_14

    .line 45
    sget-object v2, Lcom/amazon/kcp/home/models/CardType;->Companion:Lcom/amazon/kcp/home/models/CardType$Companion;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/models/voltron/SidekickModel;->getTemplateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/home/models/CardType$Companion;->typeForId(Ljava/lang/String;)Lcom/amazon/kcp/home/models/CardType;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 46
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string/jumbo v3, "widgets"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 47
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    goto/16 :goto_3

    .line 52
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonElement;

    if-eqz v5, :cond_3

    .line 54
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    .line 58
    :cond_4
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 59
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 60
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_0

    .line 64
    :cond_5
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v5

    const-string/jumbo v7, "zoneWidgets.asJsonArray"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonElement;

    if-eqz v5, :cond_3

    .line 65
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    const-string v8, "actions"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    const-string/jumbo v8, "zoneData.asJsonObject[KEY_ACTIONS]"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$2;

    invoke-direct {v8}, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$2;-><init>()V

    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {p3, v7, v8}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_6

    goto :goto_1

    .line 65
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 66
    :goto_1
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    const-string/jumbo v8, "zone"

    invoke-virtual {v6, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 68
    invoke-virtual {v2}, Lcom/amazon/kcp/home/models/CardType;->getZoneMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Type;

    .line 69
    const-class v9, Lcom/amazon/kindle/home/model/TextZone;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const-string/jumbo v10, "zoneData.asJsonObject[KEY_MODEL]"

    if-eqz v9, :cond_7

    .line 70
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$3;

    invoke-direct {v8}, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$3;-><init>()V

    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {p3, v5, v8}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/home/models/voltron/SidekickTextModel;

    if-eqz v5, :cond_3

    .line 71
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickTextZone;

    invoke-direct {v8, v6, v7, v5}, Lcom/amazon/kcp/home/models/voltron/SidekickTextZone;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickTextModel;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 73
    :cond_7
    const-class v9, Lcom/amazon/kindle/home/model/ImageZone;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 74
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$4;

    invoke-direct {v8}, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$4;-><init>()V

    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {p3, v5, v8}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/home/models/voltron/SidekickImageModel;

    if-eqz v5, :cond_3

    .line 75
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickImageZone;

    invoke-direct {v8, v6, v7, v5}, Lcom/amazon/kcp/home/models/voltron/SidekickImageZone;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickImageModel;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 77
    :cond_8
    const-class v9, Lcom/amazon/kindle/home/model/ButtonZone;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 78
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$5;

    invoke-direct {v8}, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$5;-><init>()V

    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {p3, v5, v8}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/home/models/voltron/SidekickButtonModel;

    if-eqz v5, :cond_3

    .line 79
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickButtonZone;

    invoke-direct {v8, v6, v7, v5}, Lcom/amazon/kcp/home/models/voltron/SidekickButtonZone;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickButtonModel;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 81
    :cond_9
    const-class v9, Lcom/amazon/kindle/home/model/TwoStateButtonZone;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 82
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$6;

    invoke-direct {v8}, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$6;-><init>()V

    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {p3, v5, v8}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonModel;

    if-eqz v5, :cond_3

    .line 83
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonZone;

    invoke-direct {v8, v6, v7, v5}, Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonZone;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickTwoStateButtonModel;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 85
    :cond_a
    const-class v9, Lcom/amazon/kindle/home/model/ThemedImageZone;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 86
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$7;

    invoke-direct {v8}, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$7;-><init>()V

    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {p3, v5, v8}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageModel;

    if-eqz v5, :cond_3

    .line 87
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageZone;

    invoke-direct {v8, v6, v7, v5}, Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageZone;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickThemedImageModel;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 89
    :cond_b
    const-class v9, Lcom/amazon/kindle/home/model/ColorZone;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 90
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$8;

    invoke-direct {v8}, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$8;-><init>()V

    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {p3, v5, v8}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/home/models/voltron/SidekickColorModel;

    if-eqz v5, :cond_3

    .line 91
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickColorZone;

    invoke-direct {v8, v6, v7, v5}, Lcom/amazon/kcp/home/models/voltron/SidekickColorZone;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickColorModel;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 93
    :cond_c
    const-class v9, Lcom/amazon/kindle/home/model/WebViewZone;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 94
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$9;

    invoke-direct {v8}, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$9;-><init>()V

    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {p3, v5, v8}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/home/models/voltron/SidekickWebViewModel;

    if-eqz v5, :cond_3

    .line 95
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickWebViewZone;

    invoke-direct {v8, v6, v7, v5}, Lcom/amazon/kcp/home/models/voltron/SidekickWebViewZone;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickWebViewModel;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 97
    :cond_d
    const-class v9, Lcom/amazon/kindle/home/model/ArticleZone;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 98
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$10;

    invoke-direct {v8}, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$10;-><init>()V

    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {p3, v5, v8}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/home/models/voltron/SidekickArticleModel;

    if-eqz v5, :cond_3

    .line 99
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickArticleZone;

    invoke-direct {v8, v6, v7, v5}, Lcom/amazon/kcp/home/models/voltron/SidekickArticleZone;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickArticleModel;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 101
    :cond_e
    const-class v9, Lcom/amazon/kindle/home/model/WaysToReadBlock;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 102
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$11;

    invoke-direct {v8}, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$11;-><init>()V

    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {p3, v5, v8}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/home/models/voltron/SidekickWaysToReadModel;

    if-eqz v5, :cond_3

    .line 103
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickWaysToRead;

    invoke-direct {v8, v6, v7, v5}, Lcom/amazon/kcp/home/models/voltron/SidekickWaysToRead;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickWaysToReadModel;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 105
    :cond_f
    const-class v9, Lcom/amazon/kindle/home/model/BookEntityListZone;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 106
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$12;

    invoke-direct {v8}, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$12;-><init>()V

    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {p3, v5, v8}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/home/models/voltron/SidekickBookEntityModel;

    if-eqz v5, :cond_3

    .line 107
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickBookEntityZone;

    invoke-direct {v8, v6, v7, v5}, Lcom/amazon/kcp/home/models/voltron/SidekickBookEntityZone;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickBookEntityModel;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 109
    :cond_10
    const-class v9, Lcom/amazon/kindle/home/model/DescriptionImageZone;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 110
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$13;

    invoke-direct {v8}, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer$deserialize$$inlined$deserialize$13;-><init>()V

    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {p3, v5, v8}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;

    if-eqz v5, :cond_3

    .line 111
    new-instance v8, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageZone;

    invoke-direct {v8, v6, v7, v5}, Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageZone;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickDescriptionImageModel;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 113
    :cond_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized zone type="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amazon/kcp/home/models/CardType;->getZoneMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Type;

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_12
    move-object v6, p2

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.amazon.kcp.home.models.voltron.SidekickCardDeserializer"

    invoke-static {v6, v5}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    :cond_13
    new-instance p1, Lcom/amazon/kcp/home/models/voltron/SidekickCard;

    invoke-direct {p1, v4, v0}, Lcom/amazon/kcp/home/models/voltron/SidekickCard;-><init>(Ljava/util/List;Lcom/amazon/kcp/home/models/voltron/SidekickModel;)V

    return-object p1

    :cond_14
    :goto_3
    return-object p2
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/amazon/kcp/home/models/voltron/SidekickCard;

    move-result-object p1

    return-object p1
.end method
