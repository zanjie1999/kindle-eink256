.class public final Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDumpBroadcastListenerKt;
.super Ljava/lang/Object;
.source "WeblabDumpBroadcastListener.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWeblabDumpBroadcastListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WeblabDumpBroadcastListener.kt\ncom/amazon/kindle/krx/mobileweblab/debug/WeblabDumpBroadcastListenerKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,161:1\n1711#2,3:162\n*E\n*S KotlinDebug\n*F\n+ 1 WeblabDumpBroadcastListener.kt\ncom/amazon/kindle/krx/mobileweblab/debug/WeblabDumpBroadcastListenerKt\n*L\n154#1,3:162\n*E\n"
.end annotation


# static fields
.field private static final ACTION_CLEAR_TREATMENT:Ljava/lang/String; = "com.amazon.kindle.weblab.CLEAR_TREATMENT"

.field private static final ACTION_DUMP_WEBLAB_DATA:Ljava/lang/String; = "com.amazon.kindle.weblab.DUMP_WEBLABS"

.field private static final ACTION_SET_TREATMENT:Ljava/lang/String; = "com.amazon.kindle.weblab.SET_TREATMENT"

.field private static final TAG:Ljava/lang/String;

.field private static final TREATMENT_ID:Ljava/lang/String; = "treatmentId"

.field private static final WEBLAB_ID:Ljava/lang/String; = "weblabId"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-class v0, Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDebugListener;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(WeblabDebugListener::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDumpBroadcastListenerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDumpBroadcastListenerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isValidWeblabId(Ljava/lang/String;Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDumpBroadcastListenerKt;->isValidWeblabId(Ljava/lang/String;Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;)Z

    move-result p0

    return p0
.end method

.method private static final isValidWeblabId(Ljava/lang/String;Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 149
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 150
    sget-object p0, Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDumpBroadcastListenerKt;->TAG:Ljava/lang/String;

    const-string p1, "Please provide a valid weblabId"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 154
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->getExistingWeblabs()Ljava/util/List;

    move-result-object p1

    .line 162
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    .line 163
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    .line 154
    invoke-interface {v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 p1, 0x1

    :goto_2
    if-nez p1, :cond_6

    .line 155
    sget-object p1, Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDumpBroadcastListenerKt;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No weblab with weblab id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is currently registered."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_6
    return v0
.end method
