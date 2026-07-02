.class public final Lcom/amazon/kcp/oob/LandingScreenActionController;
.super Ljava/lang/Object;
.source "LandingScreenActionController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLandingScreenActionController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LandingScreenActionController.kt\ncom/amazon/kcp/oob/LandingScreenActionController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,143:1\n1819#2,2:144\n1517#2:146\n1588#2,3:147\n*E\n*S KotlinDebug\n*F\n+ 1 LandingScreenActionController.kt\ncom/amazon/kcp/oob/LandingScreenActionController\n*L\n69#1,2:144\n85#1:146\n85#1,3:147\n*E\n"
.end annotation


# instance fields
.field private final actionContext:Lcom/amazon/kindle/krx/ui/LandingScreenActionContext;

.field private final actionDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;",
            ">;"
        }
    .end annotation
.end field

.field private final activity:Landroid/app/Activity;

.field private final inflater$delegate:Lkotlin/Lazy;

.field private final libraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

.field private final menu:Landroid/view/Menu;

.field private final pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/Menu;Lcom/amazon/kindle/krx/ui/ILibraryUIManager;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryUIManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pubSubEventsManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->menu:Landroid/view/Menu;

    iput-object p3, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->libraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    iput-object p4, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    .line 39
    new-instance p1, Lcom/amazon/kcp/oob/LandingScreenActionController$inflater$2;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/oob/LandingScreenActionController$inflater$2;-><init>(Lcom/amazon/kcp/oob/LandingScreenActionController;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->inflater$delegate:Lkotlin/Lazy;

    .line 40
    new-instance p1, Lcom/amazon/kindle/krx/ui/LandingScreenActionContext;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/ui/LandingScreenActionContext;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->actionContext:Lcom/amazon/kindle/krx/ui/LandingScreenActionContext;

    .line 41
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->actionDataMap:Ljava/util/Map;

    .line 44
    iget-object p1, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0}, Lcom/amazon/kcp/oob/LandingScreenActionController;->refreshAllActions()V

    return-void
.end method

.method public static final synthetic access$getActionContext$p(Lcom/amazon/kcp/oob/LandingScreenActionController;)Lcom/amazon/kindle/krx/ui/LandingScreenActionContext;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->actionContext:Lcom/amazon/kindle/krx/ui/LandingScreenActionContext;

    return-object p0
.end method

.method public static final synthetic access$getActivity$p(Lcom/amazon/kcp/oob/LandingScreenActionController;)Landroid/app/Activity;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$refreshAction(Lcom/amazon/kcp/oob/LandingScreenActionController;Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kcp/oob/LandingScreenActionController;->refreshAction(Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;)V

    return-void
.end method

.method public static final synthetic access$refreshAllActions(Lcom/amazon/kcp/oob/LandingScreenActionController;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/kcp/oob/LandingScreenActionController;->refreshAllActions()V

    return-void
.end method

.method private final getInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->inflater$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private final inflateActionView(Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;)Landroid/view/View;
    .locals 4

    .line 49
    invoke-direct {p0}, Lcom/amazon/kcp/oob/LandingScreenActionController;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->landing_screen_action:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->landing_screen_action_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Landroid/widget/ImageView;

    .line 51
    invoke-virtual {p1}, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->landing_screen_action_badge:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Landroid/widget/TextView;

    .line 53
    invoke-virtual {p1}, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->getBadgeText()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    if-nez v2, :cond_0

    .line 54
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->getBadgeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p1}, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    invoke-virtual {p1}, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string p1, "parentView"

    .line 63
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final recreateAllActions()V
    .locals 7

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->menu:Landroid/view/Menu;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeGroup(I)V

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->actionDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;

    .line 70
    iget-object v3, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->menu:Landroid/view/Menu;

    .line 72
    invoke-virtual {v2}, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->getId()I

    move-result v4

    .line 73
    invoke-virtual {v2}, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->getPriority()I

    move-result v5

    .line 74
    invoke-virtual {v2}, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 70
    invoke-interface {v3, v1, v4, v5, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    .line 75
    invoke-direct {p0, v2}, Lcom/amazon/kcp/oob/LandingScreenActionController;->inflateActionView(Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;)Landroid/view/View;

    move-result-object v2

    .line 76
    iget-object v4, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/librarymodule/R$dimen;->landing_screen_action_margin_horizontal:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const-string v5, "menuItem"

    .line 77
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v5, 0x0

    .line 78
    invoke-virtual {v2, v5, v5, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    const/4 v2, 0x2

    .line 79
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final refreshAction(Lcom/amazon/kindle/krx/providers/ILandingScreenActionProvider;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->actionContext:Lcom/amazon/kindle/krx/ui/LandingScreenActionContext;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/providers/IProvider;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    .line 93
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->menu:Landroid/view/Menu;

    const-string v1, "action"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->actionDataMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;-><init>(Lcom/amazon/kcp/oob/LandingScreenActionController;Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-direct {p0}, Lcom/amazon/kcp/oob/LandingScreenActionController;->recreateAllActions()V

    return-void
.end method

.method private final refreshAllActions()V
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->actionDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->actionDataMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->libraryUIManager:Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    iget-object v2, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->actionContext:Lcom/amazon/kindle/krx/ui/LandingScreenActionContext;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->getLandingScreenActions(Lcom/amazon/kindle/krx/ui/ILandingScreenActionContext;)Ljava/util/Collection;

    move-result-object v1

    const-string v2, "libraryUIManager.getLand\u2026eenActions(actionContext)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 148
    check-cast v3, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    const-string v4, "it"

    .line 86
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;

    invoke-direct {v5, p0, v3}, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;-><init>(Lcom/amazon/kcp/oob/LandingScreenActionController;Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;)V

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {v2}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    .line 85
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 88
    invoke-direct {p0}, Lcom/amazon/kcp/oob/LandingScreenActionController;->recreateAllActions()V

    return-void
.end method


# virtual methods
.method public final onChangedEventReceived(Lcom/amazon/kindle/krx/ui/LandingScreenActionChangedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/amazon/kcp/oob/LandingScreenActionController$onChangedEventReceived$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/oob/LandingScreenActionController$onChangedEventReceived$1;-><init>(Lcom/amazon/kcp/oob/LandingScreenActionController;Lcom/amazon/kindle/krx/ui/LandingScreenActionChangedEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->actionDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingScreenActionController;->actionDataMap:Ljava/util/Map;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/amazon/kcp/oob/LandingScreenActionController$LandingScreenActionData;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
