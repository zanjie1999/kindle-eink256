.class public final Lcom/amazon/kcp/application/AppShortcutController;
.super Ljava/lang/Object;
.source "AppShortcutController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/AppShortcutController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppShortcutController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppShortcutController.kt\ncom/amazon/kcp/application/AppShortcutController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,115:1\n1517#2:116\n1588#2,3:117\n787#2:120\n815#2,2:121\n1517#2:123\n1588#2,3:124\n734#2:127\n825#2,2:128\n37#3,2:130\n1#4:132\n*E\n*S KotlinDebug\n*F\n+ 1 AppShortcutController.kt\ncom/amazon/kcp/application/AppShortcutController\n*L\n61#1:116\n61#1,3:117\n69#1:120\n69#1,2:121\n69#1:123\n69#1,3:124\n75#1:127\n75#1,2:128\n88#1,2:130\n*E\n"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final shortcutManager:Landroid/content/pm/ShortcutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/application/AppShortcutController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/AppShortcutController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    const-class v0, Lcom/amazon/kcp/application/AppShortcutController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(AppShortcutController::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/AppShortcutController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "shortcut"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/content/pm/ShortcutManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/content/pm/ShortcutManager;

    iput-object v0, p0, Lcom/amazon/kcp/application/AppShortcutController;->shortcutManager:Landroid/content/pm/ShortcutManager;

    return-void
.end method


# virtual methods
.method public final onAppShortcutChangedEvent(Lcom/amazon/kindle/krx/events/AppShortcutChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AppShortcutController;->updateShortcuts()V

    return-void
.end method

.method public final onLocaleChangedEvent(Lcom/amazon/kindle/event/LocaleChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AppShortcutController;->updateShortcuts()V

    return-void
.end method

.method public final updateShortcuts()V
    .locals 12

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/application/AppShortcutController;->shortcutManager:Landroid/content/pm/ShortcutManager;

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isAppShortcutsEnabled()Z

    move-result v0

    const/16 v1, 0xa

    const-string v2, "it"

    if-nez v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/application/AppShortcutController;->shortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getPinnedShortcuts()Ljava/util/List;

    move-result-object v3

    const-string/jumbo v4, "shortcutManager.pinnedShortcuts"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 118
    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 61
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;)V

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/application/AppShortcutController;->shortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->removeAllDynamicShortcuts()V

    return-void

    .line 66
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v3, "Utils.getFactory()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    const-class v3, Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;

    invoke-static {v3}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v3

    const-string v4, "Discoveries.of(AppShortcut::class.java)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 69
    iget-object v4, p0, Lcom/amazon/kcp/application/AppShortcutController;->shortcutManager:Landroid/content/pm/ShortcutManager;

    .line 120
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;

    .line 69
    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 123
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 125
    check-cast v5, Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;

    .line 69
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v6}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;)V

    .line 71
    iget-object v1, p0, Lcom/amazon/kcp/application/AppShortcutController;->shortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutManager;->getMaxShortcutCountPerActivity()I

    move-result v1

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;

    .line 75
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 76
    :cond_7
    sget-object v2, Lcom/amazon/kcp/application/AppShortcutController$updateShortcuts$sorted$2;->INSTANCE:Lcom/amazon/kcp/application/AppShortcutController$updateShortcuts$sorted$2;

    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .line 77
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v3, :cond_c

    .line 78
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v1, :cond_8

    goto/16 :goto_6

    .line 82
    :cond_8
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;

    .line 83
    invoke-interface {v7, v0}, Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;->getIntents(Landroid/content/Context;)Ljava/util/List;

    move-result-object v8

    const-string v9, "appShortcut.getIntents(context)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    :try_start_0
    new-instance v9, Landroid/content/pm/ShortcutInfo$Builder;

    const-string v10, "appShortcut"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v0, v10}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    invoke-interface {v7, v0}, Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;->getShortLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v9

    .line 87
    invoke-interface {v7, v0}, Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v9

    new-array v10, v5, [Landroid/content/Intent;

    .line 131
    invoke-interface {v8, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_b

    check-cast v8, [Landroid/content/Intent;

    .line 88
    invoke-virtual {v9, v8}, Landroid/content/pm/ShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v8

    .line 89
    invoke-virtual {v8, v6}, Landroid/content/pm/ShortcutInfo$Builder;->setRank(I)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v8

    const-string v9, "ShortcutInfo.Builder(con\u2026              .setRank(i)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-interface {v7}, Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;->getBundle()Landroid/os/PersistableBundle;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v8, v9}, Landroid/content/pm/ShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 91
    :cond_9
    invoke-interface {v7, v0}, Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;->getLongLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v8, v9}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 93
    :cond_a
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v8

    const-string v9, "builder.build()"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 131
    :cond_b
    new-instance v8, Ljava/lang/NullPointerException;

    const-string/jumbo v9, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v8

    .line 95
    sget-object v9, Lcom/amazon/kcp/application/AppShortcutController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to create "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v8}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 100
    :cond_c
    :goto_6
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/application/AppShortcutController;->shortcutManager:Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/ShortcutManager;->setDynamicShortcuts(Ljava/util/List;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 102
    sget-object v1, Lcom/amazon/kcp/application/AppShortcutController;->TAG:Ljava/lang/String;

    const-string v2, "Unable to set shortcuts"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method
