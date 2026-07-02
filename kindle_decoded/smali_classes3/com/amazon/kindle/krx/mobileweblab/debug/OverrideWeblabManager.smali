.class public final Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;
.super Ljava/lang/Object;
.source "OverrideWeblabManager.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOverrideWeblabManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OverrideWeblabManager.kt\ncom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n1819#2,2:166\n*E\n*S KotlinDebug\n*F\n+ 1 OverrideWeblabManager.kt\ncom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager\n*L\n46#1,2:166\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager$Companion;

.field private static final dateFormat:Ljava/text/SimpleDateFormat;

.field public static final dateFormatString:Ljava/lang/String; = "MMM d, yyyy h:mm:ss a"


# instance fields
.field private final baseWeblabManager:Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;

.field private final context:Landroid/content/Context;

.field private final editor:Landroid/content/SharedPreferences$Editor;

.field private final existingWeblabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/mobileweblab/IWeblab;",
            ">;"
        }
    .end annotation
.end field

.field private final key:Ljava/lang/String;

.field private final knownOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;",
            ">;"
        }
    .end annotation
.end field

.field private final preferences:Landroid/content/SharedPreferences;

.field private final sharedPreferenceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->Companion:Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager$Companion;

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "MMM d, yyyy h:mm:ss a"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseWeblabManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->baseWeblabManager:Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;

    .line 32
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->getExistingWeblabs()Ljava/util/List;

    move-result-object p1

    const-string p2, "baseWeblabManager.existingWeblabs"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->existingWeblabs:Ljava/util/List;

    .line 33
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->knownOverrides:Ljava/util/Map;

    const-string p1, "OverriddenWeblabs"

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->sharedPreferenceName:Ljava/lang/String;

    const-string p2, "weblabs"

    .line 35
    iput-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->key:Ljava/lang/String;

    .line 40
    iget-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "context.getSharedPrefere\u2026me, Context.MODE_PRIVATE)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->preferences:Landroid/content/SharedPreferences;

    .line 41
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "preferences.edit()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->editor:Landroid/content/SharedPreferences$Editor;

    .line 42
    iget-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->preferences:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->key:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_5

    .line 44
    new-instance p2, Lcom/google/gson/JsonParser;

    invoke-direct {p2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {p2, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lcom/google/gson/JsonObject;

    .line 45
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p2

    const-string v0, "Calendar.getInstance(Locale.ENGLISH)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    .line 46
    invoke-virtual {p1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object p1

    const-string v0, "json.entrySet()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 48
    sget-object v1, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "it.value"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v4, "expirationDate"

    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    const-string v5, "it.value.asJsonObject.get(\"expirationDate\")"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 49
    invoke-virtual {p2, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v5, "it.key"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v3, "overrideValue"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    const-string v3, "it.value.asJsonObject.get(\"overrideValue\")"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "it.value.asJsonObject.ge\u2026\"overrideValue\").asString"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, v2, v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->addOverrideInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z

    goto :goto_0

    .line 54
    :cond_3
    invoke-direct {p0}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->save()V

    goto :goto_1

    .line 44
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.google.gson.JsonObject"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method

.method public static final synthetic access$getDateFormat$cp()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->dateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private final addOverrideInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->baseWeblabManager:Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "baseWeblabManager.getWeb\u2026blabName) ?: return false"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblab;)V

    .line 84
    invoke-virtual {v1, p2}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->setOverrideValue(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1, p3}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->setExpirationDate(Ljava/util/Date;)V

    .line 86
    iget-object p2, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->knownOverrides:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final save()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 74
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-string v1, "MMM d, yyyy h:mm:ss a"

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->knownOverrides:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->editor:Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->key:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public final addLongOverride(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "weblabName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overrideValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "Calendar.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x5

    const/16 v2, 0x1e

    .line 119
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 120
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const-string v1, "calendar.time"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->addOverrideInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z

    move-result p1

    .line 121
    invoke-direct {p0}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->save()V

    return p1
.end method

.method public final addOverride(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z
    .locals 2

    const-string v0, "weblabName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overrideValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "creationDate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "Calendar.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p3, 0x5

    const/4 v1, 0x2

    .line 102
    invoke-virtual {v0, p3, v1}, Ljava/util/Calendar;->add(II)V

    .line 103
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    const-string v0, "calendar.time"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->addOverrideInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z

    move-result p1

    .line 104
    invoke-direct {p0}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->save()V

    return p1
.end method

.method public addWeblab(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->baseWeblabManager:Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->addWeblab(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final getExistingWeblabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/mobileweblab/IWeblab;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->existingWeblabs:Ljava/util/List;

    return-object v0
.end method

.method public final getExpirationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    const-string v0, "weblabName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->knownOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->getExpirationDate()Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getKnownOverrides()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->knownOverrides:Ljava/util/Map;

    return-object v0
.end method

.method public final getOverride(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "weblabName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->knownOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->getOverrideValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->knownOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->baseWeblabManager:Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/mobileweblab/WeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final removeAllOverrides()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->knownOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;

    .line 160
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->removeOverride()V

    goto :goto_0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->knownOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 163
    invoke-direct {p0}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->save()V

    return-void
.end method

.method public final removeOverride(Ljava/lang/String;)V
    .locals 1

    const-string v0, "weblabName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->knownOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverridableWeblab;->removeOverride()V

    .line 150
    iget-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->knownOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-direct {p0}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->save()V

    :cond_0
    return-void
.end method
