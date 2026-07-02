.class public final Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;
.super Lcom/amazon/ea/ui/layout/LayoutController;
.source "EndActionsGroupLayout.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;,
        Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEndActionsGroupLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EndActionsGroupLayout.kt\ncom/amazon/readingactions/ui/layout/EndActionsGroupLayout\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,220:1\n1137#2,12:221\n*E\n*S KotlinDebug\n*F\n+ 1 EndActionsGroupLayout.kt\ncom/amazon/readingactions/ui/layout/EndActionsGroupLayout\n*L\n36#1,12:221\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final endActionsActivity:Landroid/app/Activity;

.field private final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;",
            ">;"
        }
    .end annotation
.end field

.field private final widgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/ui/widget/WidgetController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->Companion:Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Companion;

    .line 39
    const-class v0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;",
            ">;)V"
        }
    .end annotation

    const-string v0, "endActionsActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groups"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/amazon/ea/ui/layout/LayoutController;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->endActionsActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->groups:Ljava/util/List;

    .line 221
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 229
    check-cast v0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;

    .line 36
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;->getWidgets()Ljava/util/List;

    move-result-object v0

    .line 230
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 232
    :cond_0
    iput-object p1, p0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->widgets:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final setOrientationListener(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 9

    if-eqz p1, :cond_2

    .line 170
    new-instance v8, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;-><init>(Landroid/content/Context;Landroid/view/View;ZZZZLcom/amazon/readingactions/helpers/AlignmentChangeDelegate;)V

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "activityContext.resources"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 173
    :goto_0
    invoke-virtual {v8, p2}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->setSymmetricPadding(Z)V

    .line 175
    :cond_1
    invoke-virtual {v8}, Landroid/view/OrientationEventListener;->enable()V

    :cond_2
    return-void
.end method

.method private final setScrollListener(Landroidx/core/widget/NestedScrollView;)V
    .locals 2

    .line 149
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$setScrollListener$1;

    invoke-direct {v1, p1}, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$setScrollListener$1;-><init>(Landroidx/core/widget/NestedScrollView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method


# virtual methods
.method public getViewImplementation(Landroid/os/Bundle;)Landroid/view/View;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "state"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v2, v0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/ea/R$layout;->readingactions_layout_vertical_list:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 77
    sget v3, Lcom/amazon/kindle/ea/R$id;->readingactions_widget_container:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_9

    check-cast v3, Landroid/widget/LinearLayout;

    .line 78
    sget v4, Lcom/amazon/kindle/ea/R$array;->readingactions_bg_container:I

    invoke-static {v4}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 80
    sget v4, Lcom/amazon/kindle/ea/R$id;->nested_scroll_view:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_8

    check-cast v4, Landroidx/core/widget/NestedScrollView;

    .line 81
    invoke-direct {v0, v4}, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->setScrollListener(Landroidx/core/widget/NestedScrollView;)V

    .line 82
    new-instance v5, Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v6, v0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->endActionsActivity:Landroid/app/Activity;

    invoke-direct {v5, v6, v4}, Lcom/amazon/ea/ui/AnimationCoordinator;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 88
    sget-object v4, Lcom/amazon/readingactions/ui/helpers/Display;->Companion:Lcom/amazon/readingactions/ui/helpers/Display$Companion;

    invoke-virtual {v4}, Lcom/amazon/readingactions/ui/helpers/Display$Companion;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 91
    iget-object v4, v0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/amazon/kindle/ea/R$dimen;->readingactions_layout_group_padding_horizontal:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 92
    iget-object v6, v0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/amazon/kindle/ea/R$dimen;->startactions_layout_group_padding_vertical:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v12, v6

    .line 94
    iget-object v6, v0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/amazon/kindle/ea/R$dimen;->readingactions_widget_padding_horizontal:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v13, v6

    .line 95
    iget-object v6, v0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/amazon/kindle/ea/R$dimen;->readingactions_widget_padding_bottom:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v14, v6

    .line 98
    iget-object v6, v0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->groups:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v16, v6

    check-cast v16, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;

    .line 99
    iget-object v6, v0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 100
    sget v7, Lcom/amazon/kindle/ea/R$layout;->readingactions_layout_group:I

    const/4 v11, 0x0

    invoke-virtual {v6, v7, v3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_6

    move-object v10, v6

    check-cast v10, Landroid/view/ViewGroup;

    .line 103
    sget v6, Lcom/amazon/kindle/ea/R$array;->readingactions_bg_group:I

    invoke-static {v6}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 104
    new-instance v9, Landroid/graphics/drawable/InsetDrawable;

    const/16 v17, 0x0

    move-object v6, v9

    move v8, v4

    move/from16 v18, v13

    move-object v13, v9

    move/from16 v9, v17

    move-object/from16 v19, v10

    move v10, v4

    move/from16 v17, v4

    const/4 v4, 0x0

    move v11, v12

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object/from16 v6, v19

    .line 106
    invoke-static {v6, v13}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 109
    sget v7, Lcom/amazon/kindle/ea/R$id;->readingactions_layout_group_header:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_5

    check-cast v7, Landroid/widget/TextView;

    .line 110
    invoke-virtual/range {v16 .. v16}, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 111
    invoke-virtual/range {v16 .. v16}, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    sget v8, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v8}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_0
    const/16 v8, 0x8

    .line 114
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;->getFullWidth()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v11, 0x0

    goto :goto_2

    :cond_1
    move/from16 v11, v18

    .line 118
    :goto_2
    invoke-virtual {v6, v11, v4, v11, v14}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 121
    sget-object v7, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v8, "EndActionsPlugin.sdk"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v7

    const-string v8, "EndActionsPlugin.sdk.readerUIManager"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v7

    .line 122
    invoke-virtual/range {v16 .. v16}, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;->getFullWidth()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->setOrientationListener(Landroid/content/Context;Landroid/view/View;Z)V

    .line 126
    invoke-virtual/range {v16 .. v16}, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;->getWidgets()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v11, 0x0

    :cond_2
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 128
    sget-object v8, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FULL_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    invoke-virtual {v4, v3, v8, v5, v1}, Lcom/amazon/ea/ui/widget/WidgetController;->getView(Landroid/view/ViewGroup;Lcom/amazon/ea/model/widget/WidgetDisplayFormat;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    add-int/lit8 v11, v11, 0x1

    .line 132
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_3
    if-lez v11, :cond_4

    .line 137
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    move/from16 v4, v17

    move/from16 v13, v18

    goto/16 :goto_0

    .line 109
    :cond_5
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_6
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    return-object v2

    .line 80
    :cond_8
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.support.v4.widget.NestedScrollView"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_9
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 181
    invoke-virtual {v1, p1, p2, p3}, Lcom/amazon/ea/ui/widget/WidgetController;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 193
    invoke-virtual {v1}, Lcom/amazon/ea/ui/widget/WidgetController;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 199
    invoke-virtual {v1}, Lcom/amazon/ea/ui/widget/WidgetController;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRender()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 211
    invoke-virtual {v1}, Lcom/amazon/ea/ui/widget/WidgetController;->onRender()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 205
    invoke-virtual {v1}, Lcom/amazon/ea/ui/widget/WidgetController;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 187
    invoke-virtual {v1, p1}, Lcom/amazon/ea/ui/widget/WidgetController;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method
