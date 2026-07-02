.class public Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;
.super Lcom/amazon/startactions/ui/layout/LayoutBase;
.source "ReadingActionsGroupLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$Group;
    }
.end annotation


# static fields
.field private static final AUTHOR_BIO_WIDGET_REORDERING_POSITION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "com.amazon.readingactions.ui.layout.ReadingActionsGroupLayout"


# instance fields
.field private final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$Group;",
            ">;"
        }
    .end annotation
.end field

.field private final providesHeaderInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$Group;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p3}, Lcom/amazon/startactions/ui/layout/LayoutBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iput-object p2, p0, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;->groups:Ljava/util/List;

    .line 136
    iput-boolean p4, p0, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;->providesHeaderInfo:Z

    .line 139
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    int-to-double p3, p1

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    mul-double p3, p3, v0

    double-to-int p1, p3

    invoke-static {p1}, Lcom/amazon/ea/guava/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->widgets:Ljava/util/List;

    .line 140
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$Group;

    .line 141
    iget-object p3, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->widgets:Ljava/util/List;

    iget-object p2, p2, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$Group;->widgets:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reorderWidgets(Ljava/lang/Class;I)V
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;->groups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$Group;

    .line 237
    iget-object v3, v2, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$Group;->widgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/startactions/ui/widget/Widget;

    .line 238
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne p1, v4, :cond_1

    move-object v1, v2

    :cond_2
    if-eqz v1, :cond_0

    :cond_3
    if-eqz v1, :cond_4

    .line 248
    iget-object p1, p0, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;->groups:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 249
    iget-object p1, p0, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;->groups:Ljava/util/List;

    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private static resolveGroups(Ljava/util/List;Lcom/amazon/startactions/ui/layout/IWidgetProvider;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/layouts/GroupDef;",
            ">;",
            "Lcom/amazon/startactions/ui/layout/IWidgetProvider;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$Group;",
            ">;"
        }
    .end annotation

    .line 105
    invoke-static {}, Lcom/amazon/ea/guava/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 106
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;

    .line 107
    iget-object v2, v1, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;->slots:Ljava/util/List;

    invoke-static {v2, p1}, Lcom/amazon/startactions/ui/layout/LayoutBase;->filterWidgetsForSlots(Ljava/util/List;Lcom/amazon/startactions/ui/layout/IWidgetProvider;)Ljava/util/List;

    move-result-object v2

    .line 108
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    sget-object v2, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No widgets resolved for group "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;->title:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; skipping group."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_1
    new-instance v3, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$Group;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;->title:Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$Group;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static setOrientationListener(Landroid/content/Context;Landroid/view/View;)V
    .locals 9

    if-eqz p0, :cond_1

    .line 259
    new-instance v8, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;-><init>(Landroid/content/Context;Landroid/view/View;ZZZZLcom/amazon/readingactions/helpers/AlignmentChangeDelegate;)V

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 261
    :goto_0
    invoke-virtual {v8, p1}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->setSymmetricPadding(Z)V

    .line 262
    invoke-virtual {v8}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    return-void
.end method

.method private setScrollListener(Landroidx/core/widget/NestedScrollView;)V
    .locals 2

    .line 271
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$1;-><init>(Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;Landroidx/core/widget/NestedScrollView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method public static tryCreate(Lcom/amazon/readingactions/sidecar/def/layout/GroupLayoutDef;Lcom/amazon/startactions/ui/layout/IWidgetProvider;Ljava/lang/String;)Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->requiredWidgets:Ljava/util/Set;

    invoke-interface {p1, v0}, Lcom/amazon/startactions/ui/layout/IWidgetProvider;->hasWidgets(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 75
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 76
    sget-object p0, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "required widgets not present in list of available widgets, invalidating layout."

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/amazon/readingactions/sidecar/def/layout/GroupLayoutDef;->groups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;->resolveGroups(Ljava/util/List;Lcom/amazon/startactions/ui/layout/IWidgetProvider;)Ljava/util/List;

    move-result-object p1

    .line 85
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 87
    sget-object p0, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;->TAG:Ljava/lang/String;

    const-string p1, "No groups resolved for layout; layout is invalid."

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1

    .line 92
    :cond_3
    new-instance v0, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->metricsTag:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/amazon/readingactions/sidecar/def/layout/GroupLayoutDef;->providesHeaderInfo:Z

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method protected createViewImpl(Lcom/amazon/startactions/ui/IAnyActionsUIController;Landroid/os/Bundle;)Landroid/view/View;
    .locals 21

    move-object/from16 v0, p0

    .line 147
    invoke-interface/range {p1 .. p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 148
    invoke-interface/range {p1 .. p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 150
    sget v3, Lcom/amazon/kindle/ea/R$layout;->readingactions_layout_vertical_list:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 151
    sget v4, Lcom/amazon/kindle/ea/R$id;->readingactions_widget_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 152
    sget v5, Lcom/amazon/kindle/ea/R$array;->readingactions_bg_container:I

    invoke-static {v5}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 154
    sget v5, Lcom/amazon/kindle/ea/R$id;->nested_scroll_view:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/core/widget/NestedScrollView;

    .line 155
    invoke-direct {v0, v5}, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;->setScrollListener(Landroidx/core/widget/NestedScrollView;)V

    .line 156
    new-instance v12, Lcom/amazon/ea/ui/AnimationCoordinator;

    sget-object v6, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 157
    invoke-interface {v6}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    invoke-direct {v12, v6, v5}, Lcom/amazon/ea/ui/AnimationCoordinator;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 163
    sget-object v5, Lcom/amazon/readingactions/ui/helpers/Display;->Companion:Lcom/amazon/readingactions/ui/helpers/Display$Companion;

    invoke-virtual {v5}, Lcom/amazon/readingactions/ui/helpers/Display$Companion;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 166
    sget v5, Lcom/amazon/kindle/ea/R$dimen;->readingactions_layout_group_padding_horizontal:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 167
    sget v6, Lcom/amazon/kindle/ea/R$dimen;->startactions_layout_group_padding_vertical:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v13, v6

    .line 169
    sget v6, Lcom/amazon/kindle/ea/R$dimen;->readingactions_widget_padding_horizontal:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v14, v6

    .line 170
    sget v6, Lcom/amazon/kindle/ea/R$dimen;->readingactions_widget_padding_bottom:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 175
    invoke-static {}, Lcom/amazon/readingactions/helpers/WeblabManager;->shouldSAAuthorBioWidgetBeFirstWidget()Z

    move-result v6

    const/4 v15, 0x1

    if-eqz v6, :cond_0

    .line 176
    const-class v6, Lcom/amazon/readingactions/ui/widget/AuthorBioWidget;

    invoke-direct {v0, v6, v15}, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;->reorderWidgets(Ljava/lang/Class;I)V

    .line 178
    :cond_0
    iget-object v6, v0, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;->groups:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$Group;

    .line 179
    sget v6, Lcom/amazon/kindle/ea/R$layout;->readingactions_layout_group:I

    .line 180
    invoke-virtual {v1, v6, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroid/view/ViewGroup;

    .line 183
    sget v6, Lcom/amazon/kindle/ea/R$array;->readingactions_bg_group:I

    invoke-static {v6}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 184
    new-instance v8, Landroid/graphics/drawable/InsetDrawable;

    const/16 v19, 0x0

    move-object v6, v8

    move-object v15, v8

    move v8, v5

    move-object v0, v9

    move/from16 v9, v19

    move-object/from16 v20, v10

    move v10, v5

    move-object/from16 v19, v1

    const/4 v1, 0x0

    move v11, v13

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 186
    invoke-static {v0, v15}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 189
    sget v6, Lcom/amazon/kindle/ea/R$id;->readingactions_layout_group_header:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v7, v20

    .line 190
    iget-object v8, v7, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$Group;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 191
    iget-object v8, v7, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$Group;->title:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    sget v8, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v8}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    const/16 v8, 0x8

    .line 194
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    :goto_1
    invoke-virtual {v0, v14, v1, v14, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 199
    sget-object v6, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v6}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v6

    .line 200
    invoke-static {v6, v0}, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;->setOrientationListener(Landroid/content/Context;Landroid/view/View;)V

    .line 204
    iget-object v6, v7, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout$Group;->widgets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move/from16 v6, v17

    const/16 v17, 0x0

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lcom/amazon/startactions/ui/widget/Widget;

    add-int/lit8 v20, v6, 0x1

    const-string v7, "b"

    .line 205
    invoke-static {v7, v6}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->reftagForPositionInLayout(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object v6, v11

    move-object/from16 v7, p1

    move-object v8, v0

    move-object v10, v12

    move-object v1, v11

    move-object/from16 v11, p2

    .line 206
    invoke-interface/range {v6 .. v11}, Lcom/amazon/startactions/ui/widget/Widget;->bindToUi(Lcom/amazon/startactions/ui/IAnyActionsUIController;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_2

    move/from16 v6, v20

    const/4 v1, 0x0

    goto :goto_2

    .line 213
    :cond_2
    instance-of v7, v1, Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    if-eqz v7, :cond_3

    if-nez v18, :cond_3

    invoke-static {}, Lcom/amazon/readingactions/helpers/WeblabManager;->shouldSABSEExpandFirstBookInExperiment()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 214
    move-object v11, v1

    check-cast v11, Lcom/amazon/readingactions/ui/widget/BookGridWidget;

    .line 215
    invoke-virtual {v11}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    .line 216
    invoke-virtual {v11, v1}, Lcom/amazon/readingactions/ui/widget/BookGridWidget;->setSelectedCover(I)V

    const/16 v18, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/lit8 v17, v17, 0x1

    .line 222
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move/from16 v6, v20

    goto :goto_2

    :cond_4
    if-lez v17, :cond_5

    .line 227
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    const/4 v11, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move/from16 v17, v6

    move-object/from16 v1, v19

    goto/16 :goto_0

    :cond_6
    return-object v3
.end method

.method public providesHeaderInfo()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/amazon/readingactions/ui/layout/ReadingActionsGroupLayout;->providesHeaderInfo:Z

    return v0
.end method
