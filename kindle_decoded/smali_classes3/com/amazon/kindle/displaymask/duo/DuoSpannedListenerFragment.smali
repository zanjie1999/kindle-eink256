.class public final Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;
.super Landroidx/fragment/app/Fragment;
.source "DuoFoldable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDuoFoldable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DuoFoldable.kt\ncom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,161:1\n1819#2,2:162\n*E\n*S KotlinDebug\n*F\n+ 1 DuoFoldable.kt\ncom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment\n*L\n124#1,2:162\n*E\n"
.end annotation


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private currentState:Lcom/amazon/kindle/displaymask/duo/SpannedState;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;->listeners:Ljava/util/List;

    return-void
.end method

.method private final getCurrentSpannedState(Landroid/content/Context;)Lcom/amazon/kindle/displaymask/duo/SpannedState;
    .locals 1

    .line 144
    invoke-static {p1}, Lcom/microsoft/device/display/DisplayMask;->fromResourcesRect(Landroid/content/Context;)Lcom/microsoft/device/display/DisplayMask;

    move-result-object p1

    const-string v0, "DisplayMask.fromResourcesRect(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/microsoft/device/display/DisplayMask;->getBoundingRects()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 146
    sget-object p1, Lcom/amazon/kindle/displaymask/duo/SpannedState;->DUAL_SCREEN_MODE:Lcom/amazon/kindle/displaymask/duo/SpannedState;

    goto :goto_0

    .line 147
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unrecognized number of display masks"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_1
    sget-object p1, Lcom/amazon/kindle/displaymask/duo/SpannedState;->SINGLE_SCREEN_MODE:Lcom/amazon/kindle/displaymask/duo/SpannedState;

    :goto_0
    return-object p1
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final addListener(Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;)Z
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "requireContext()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;->getCurrentSpannedState(Landroid/content/Context;)Lcom/amazon/kindle/displaymask/duo/SpannedState;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;->currentState:Lcom/amazon/kindle/displaymask/duo/SpannedState;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "requireContext()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;->getCurrentSpannedState(Landroid/content/Context;)Lcom/amazon/kindle/displaymask/duo/SpannedState;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;->currentState:Lcom/amazon/kindle/displaymask/duo/SpannedState;

    if-eqz v0, :cond_4

    if-eq p1, v0, :cond_3

    .line 118
    sget-object v0, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 120
    sget-object v0, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment$onConfigurationChanged$listenerMethod$2;->INSTANCE:Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment$onConfigurationChanged$listenerMethod$2;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 119
    :cond_1
    sget-object v0, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment$onConfigurationChanged$listenerMethod$1;->INSTANCE:Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment$onConfigurationChanged$listenerMethod$1;

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;->listeners:Ljava/util/List;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;->listeners:Ljava/util/List;

    .line 162
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 125
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit v1

    .line 127
    iput-object p1, p0, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;->currentState:Lcom/amazon/kindle/displaymask/duo/SpannedState;

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 123
    monitor-exit v1

    throw p1

    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string p1, "currentState"

    .line 117
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final removeListener(Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;)Z
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;->listeners:Ljava/util/List;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/displaymask/duo/DuoSpannedListenerFragment;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
