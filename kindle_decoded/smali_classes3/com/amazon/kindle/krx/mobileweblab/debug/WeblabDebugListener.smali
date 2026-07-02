.class public final Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDebugListener;
.super Landroid/content/BroadcastReceiver;
.source "WeblabDumpBroadcastListener.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWeblabDumpBroadcastListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WeblabDumpBroadcastListener.kt\ncom/amazon/kindle/krx/mobileweblab/debug/WeblabDebugListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,161:1\n1013#2:162\n1819#2,2:163\n*E\n*S KotlinDebug\n*F\n+ 1 WeblabDumpBroadcastListener.kt\ncom/amazon/kindle/krx/mobileweblab/debug/WeblabDebugListener\n*L\n69#1:162\n70#1,2:163\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private final getWeblabDebugMessage(Lcom/amazon/kindle/krx/mobileweblab/IWeblab;Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;)Ljava/lang/String;
    .locals 6

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-interface {p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "weblab.name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->getOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "messageBuilder.toString()"

    if-eqz v1, :cond_1

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", locally overridden to treatment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-interface {p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->getExpirationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " until "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 128
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 125
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 60
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "Utils.getFactory()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;

    if-nez v1, :cond_2

    move-object p1, v0

    :cond_2
    check-cast p1, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;

    if-eqz p1, :cond_11

    if-eqz p2, :cond_3

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    const/16 v2, 0x2e

    if-nez v1, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x298839e0

    const/4 v5, -0x1

    if-eq v3, v4, :cond_d

    const v4, 0x720d4b0a

    const-string v6, "weblabId"

    if-eq v3, v4, :cond_8

    const v4, 0x7984bf75

    if-eq v3, v4, :cond_5

    goto/16 :goto_5

    :cond_5
    const-string v3, "com.amazon.kindle.weblab.CLEAR_TREATMENT"

    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 91
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 93
    invoke-static {p2, p1}, Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDumpBroadcastListenerKt;->access$isValidWeblabId(Ljava/lang/String;Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 97
    :cond_6
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->getOverride(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 98
    invoke-static {}, Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDumpBroadcastListenerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No local override for weblab id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 102
    :cond_7
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->removeOverride(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDumpBroadcastListenerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removed local override for weblab id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    invoke-virtual {p0, v5}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    goto/16 :goto_6

    :cond_8
    const-string v3, "com.amazon.kindle.weblab.SET_TREATMENT"

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 74
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0, p1}, Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDumpBroadcastListenerKt;->access$isValidWeblabId(Ljava/lang/String;Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;)Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    const-string v1, "treatmentId"

    .line 80
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 81
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_c

    .line 82
    invoke-static {}, Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDumpBroadcastListenerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Please provide a valid treatmentId."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_c
    invoke-virtual {p1, v0, p2}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->addLongOverride(Ljava/lang/String;Ljava/lang/String;)Z

    .line 87
    invoke-static {}, Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDumpBroadcastListenerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Overrode weblab "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to treatment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    invoke-virtual {p0, v5}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    goto :goto_6

    :cond_d
    const-string v3, "com.amazon.kindle.weblab.DUMP_WEBLABS"

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 68
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;->getExistingWeblabs()Ljava/util/List;

    move-result-object p2

    .line 162
    new-instance v0, Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDebugListener$onReceive$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDebugListener$onReceive$$inlined$sortedBy$1;-><init>()V

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p2

    .line 163
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    .line 70
    invoke-static {}, Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDumpBroadcastListenerKt;->access$getTAG$p()Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDebugListener;->getWeblabDebugMessage(Lcom/amazon/kindle/krx/mobileweblab/IWeblab;Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;)Ljava/lang/String;

    goto :goto_4

    .line 71
    :cond_e
    invoke-virtual {p0, v5}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    goto :goto_6

    .line 109
    :cond_f
    :goto_5
    invoke-static {}, Lcom/amazon/kindle/krx/mobileweblab/debug/WeblabDumpBroadcastListenerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find action "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :cond_10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_11
    :goto_6
    return-void
.end method
