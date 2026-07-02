.class public Lcom/amazon/startactions/ui/layout/GroupLayout;
.super Lcom/amazon/startactions/ui/layout/LayoutBase;
.source "GroupLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/ui/layout/GroupLayout$Group;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.layout.GroupLayout"


# instance fields
.field private final bodyGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/startactions/ui/layout/GroupLayout$Group;",
            ">;"
        }
    .end annotation
.end field

.field private final footerGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/startactions/ui/layout/GroupLayout$Group;",
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

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/startactions/ui/layout/GroupLayout$Group;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/startactions/ui/layout/GroupLayout$Group;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1, p4}, Lcom/amazon/startactions/ui/layout/LayoutBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iput-object p2, p0, Lcom/amazon/startactions/ui/layout/GroupLayout;->bodyGroups:Ljava/util/List;

    .line 135
    iput-object p3, p0, Lcom/amazon/startactions/ui/layout/GroupLayout;->footerGroups:Ljava/util/List;

    .line 136
    iput-boolean p5, p0, Lcom/amazon/startactions/ui/layout/GroupLayout;->providesHeaderInfo:Z

    .line 139
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    add-int/2addr p1, p4

    int-to-double p4, p1

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    mul-double p4, p4, v0

    double-to-int p1, p4

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

    check-cast p2, Lcom/amazon/startactions/ui/layout/GroupLayout$Group;

    .line 141
    iget-object p4, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->widgets:Ljava/util/List;

    iget-object p2, p2, Lcom/amazon/startactions/ui/layout/GroupLayout$Group;->widgets:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 143
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/startactions/ui/layout/GroupLayout$Group;

    .line 144
    iget-object p3, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->widgets:Ljava/util/List;

    iget-object p2, p2, Lcom/amazon/startactions/ui/layout/GroupLayout$Group;->widgets:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
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
            "Lcom/amazon/startactions/ui/layout/GroupLayout$Group;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-static {}, Lcom/amazon/ea/guava/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 103
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

    .line 104
    iget-object v2, v1, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;->slots:Ljava/util/List;

    invoke-static {v2, p1}, Lcom/amazon/startactions/ui/layout/LayoutBase;->filterWidgetsForSlots(Ljava/util/List;Lcom/amazon/startactions/ui/layout/IWidgetProvider;)Ljava/util/List;

    move-result-object v2

    .line 105
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    sget-object v2, Lcom/amazon/startactions/ui/layout/GroupLayout;->TAG:Ljava/lang/String;

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

    .line 111
    :cond_1
    new-instance v3, Lcom/amazon/startactions/ui/layout/GroupLayout$Group;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;->title:Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Lcom/amazon/startactions/ui/layout/GroupLayout$Group;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/layouts/GroupLayoutDef;Lcom/amazon/startactions/ui/layout/IWidgetProvider;Ljava/lang/String;)Lcom/amazon/startactions/ui/layout/GroupLayout;
    .locals 8

    .line 68
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->requiredWidgets:Ljava/util/Set;

    invoke-interface {p1, v0}, Lcom/amazon/startactions/ui/layout/IWidgetProvider;->hasWidgets(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 69
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 70
    sget-object p0, Lcom/amazon/startactions/ui/layout/GroupLayout;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "required widgets not present in list of available widgets, invalidating layout."

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/layouts/GroupLayoutDef;->bodyGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/amazon/startactions/ui/layout/GroupLayout;->resolveGroups(Ljava/util/List;Lcom/amazon/startactions/ui/layout/IWidgetProvider;)Ljava/util/List;

    move-result-object v4

    .line 79
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 81
    sget-object p0, Lcom/amazon/startactions/ui/layout/GroupLayout;->TAG:Ljava/lang/String;

    const-string p1, "No groups resolved for layout; layout is invalid."

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/layouts/GroupLayoutDef;->footerGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/amazon/startactions/ui/layout/GroupLayout;->resolveGroups(Ljava/util/List;Lcom/amazon/startactions/ui/layout/IWidgetProvider;)Ljava/util/List;

    move-result-object v5

    .line 89
    new-instance p1, Lcom/amazon/startactions/ui/layout/GroupLayout;

    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->metricsTag:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/amazon/ea/sidecar/def/layouts/GroupLayoutDef;->providesHeaderInfo:Z

    move-object v2, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/amazon/startactions/ui/layout/GroupLayout;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)V

    return-object p1
.end method


# virtual methods
.method protected createViewImpl(Lcom/amazon/startactions/ui/IAnyActionsUIController;Landroid/os/Bundle;)Landroid/view/View;
    .locals 23

    move-object/from16 v0, p0

    .line 150
    invoke-interface/range {p1 .. p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 151
    invoke-interface/range {p1 .. p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 153
    sget v3, Lcom/amazon/kindle/ea/R$layout;->startactions_layout_vertical_list:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 154
    sget v4, Lcom/amazon/kindle/ea/R$id;->startactions_widget_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 156
    sget v5, Lcom/amazon/kindle/ea/R$id;->startactions_widget_scroller:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/widget/ScrollView;

    .line 157
    new-instance v12, Lcom/amazon/ea/ui/AnimationCoordinator;

    sget-object v5, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 158
    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-direct {v12, v5, v11}, Lcom/amazon/ea/ui/AnimationCoordinator;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 161
    sget v5, Lcom/amazon/kindle/ea/R$dimen;->startactions_layout_group_padding_horizontal:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v10, v5

    .line 162
    sget v5, Lcom/amazon/kindle/ea/R$dimen;->startactions_layout_group_padding_vertical:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v9, v5

    .line 165
    sget v5, Lcom/amazon/kindle/ea/R$array;->startactions_divider_line:I

    invoke-static {v5}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 166
    sget v5, Lcom/amazon/kindle/ea/R$dimen;->startactions_widget_padding_horizontal:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 170
    iget-object v5, v0, Lcom/amazon/startactions/ui/layout/GroupLayout;->bodyGroups:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    const/4 v8, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/startactions/ui/layout/GroupLayout$Group;

    .line 171
    sget v7, Lcom/amazon/kindle/ea/R$layout;->startactions_layout_group:I

    .line 172
    invoke-virtual {v1, v7, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 175
    sget v13, Lcom/amazon/kindle/ea/R$array;->startactions_bg_group:I

    invoke-static {v13}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 176
    new-instance v15, Landroid/graphics/drawable/InsetDrawable;

    const/16 v18, 0x0

    move-object v13, v15

    move-object v8, v15

    move v15, v10

    move/from16 v16, v9

    move/from16 v17, v10

    invoke-direct/range {v13 .. v18}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 178
    invoke-static {v7, v8}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 181
    sget v8, Lcom/amazon/kindle/ea/R$id;->startactions_layout_group_header:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 182
    sget v13, Lcom/amazon/kindle/ea/R$id;->startactions_divider:I

    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 183
    iget-object v13, v6, Lcom/amazon/startactions/ui/layout/GroupLayout$Group;->title:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 184
    iget-object v13, v6, Lcom/amazon/startactions/ui/layout/GroupLayout$Group;->title:Ljava/lang/String;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    sget v13, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v13}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    new-instance v8, Landroid/graphics/drawable/InsetDrawable;

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v13, v8

    move-object/from16 v14, v19

    move-object/from16 v22, v1

    move-object v1, v15

    move/from16 v15, v20

    move/from16 v17, v20

    invoke-direct/range {v13 .. v18}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 189
    invoke-static {v1, v8}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    move-object/from16 v22, v1

    move-object v1, v15

    const/16 v13, 0x8

    .line 191
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 197
    :goto_1
    iget-object v1, v6, Lcom/amazon/startactions/ui/layout/GroupLayout$Group;->widgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v13, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/startactions/ui/widget/Widget;

    add-int/lit8 v14, v5, 0x1

    const-string v8, "b"

    .line 198
    invoke-static {v8, v5}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->reftagForPositionInLayout(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v6

    move-object/from16 v6, p1

    move-object v15, v7

    move-object/from16 v16, v1

    const/4 v1, 0x0

    move/from16 v17, v9

    move-object v9, v12

    move/from16 v18, v10

    move-object/from16 v10, p2

    .line 199
    invoke-interface/range {v5 .. v10}, Lcom/amazon/startactions/ui/widget/Widget;->bindToUi(Lcom/amazon/startactions/ui/IAnyActionsUIController;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v13, v13, 0x1

    .line 207
    invoke-virtual {v15, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_3
    move v5, v14

    move-object v7, v15

    move-object/from16 v1, v16

    move/from16 v9, v17

    move/from16 v10, v18

    goto :goto_2

    :cond_2
    move-object v15, v7

    move/from16 v17, v9

    move/from16 v18, v10

    const/4 v1, 0x0

    if-lez v13, :cond_3

    .line 212
    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    move/from16 v9, v17

    move/from16 v10, v18

    move-object/from16 v1, v22

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 217
    sget v5, Lcom/amazon/kindle/ea/R$dimen;->startactions_layout_group_padding_vertical:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v13, v5

    .line 218
    sget v5, Lcom/amazon/kindle/ea/R$dimen;->startactions_footer_padding_horizontal:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 220
    iget-object v5, v0, Lcom/amazon/startactions/ui/layout/GroupLayout;->footerGroups:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v8, 0x0

    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/startactions/ui/layout/GroupLayout$Group;

    .line 222
    iget-object v5, v5, Lcom/amazon/startactions/ui/layout/GroupLayout$Group;->widgets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v5, 0x1

    const/16 v16, 0x1

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/startactions/ui/widget/Widget;

    add-int/lit8 v17, v8, 0x1

    const-string v6, "f"

    .line 223
    invoke-static {v6, v8}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->reftagForPositionInLayout(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v6, p1

    move-object v7, v4

    move-object v9, v12

    move-object/from16 v10, p2

    .line 224
    invoke-interface/range {v5 .. v10}, Lcom/amazon/startactions/ui/widget/Widget;->bindToUi(Lcom/amazon/startactions/ui/IAnyActionsUIController;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_6

    move/from16 v8, v17

    goto :goto_4

    :cond_6
    if-eqz v16, :cond_7

    move v8, v13

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    .line 231
    :goto_5
    invoke-virtual {v5, v2, v8, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 234
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move/from16 v8, v17

    const/16 v16, 0x0

    goto :goto_4

    .line 239
    :cond_8
    invoke-virtual {v11}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/amazon/startactions/ui/layout/GroupLayout$1;

    invoke-direct {v2, v0, v11}, Lcom/amazon/startactions/ui/layout/GroupLayout$1;-><init>(Lcom/amazon/startactions/ui/layout/GroupLayout;Landroid/widget/ScrollView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-object v3
.end method

.method public providesHeaderInfo()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/amazon/startactions/ui/layout/GroupLayout;->providesHeaderInfo:Z

    return v0
.end method
