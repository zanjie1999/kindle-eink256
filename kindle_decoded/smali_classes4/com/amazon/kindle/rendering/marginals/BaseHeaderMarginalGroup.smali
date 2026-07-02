.class public abstract Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;
.super Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;
.source "MarginalGroupImplementations.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMarginalGroupImplementations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MarginalGroupImplementations.kt\ncom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n*L\n1#1,380:1\n33#2,3:381\n33#2,3:384\n33#2,3:387\n33#2,3:390\n*E\n*S KotlinDebug\n*F\n+ 1 MarginalGroupImplementations.kt\ncom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup\n*L\n199#1,3:381\n200#1,3:384\n201#1,3:387\n206#1,3:390\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final centerMarginal$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final centerSettings:Lcom/amazon/krf/platform/ViewSettings;

.field private final data:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

.field private final factory:Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;

.field private final hasTitle:Z

.field private final isRtl:Z

.field private leftMarginValue:Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

.field private final leftMarginal$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final leftSettings:Lcom/amazon/krf/platform/ViewSettings;

.field private rightMarginValue:Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

.field private final rightMarginal$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final rightSettings:Lcom/amazon/krf/platform/ViewSettings;

.field private final showClock$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;

    const/4 v1, 0x4

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const/4 v3, 0x0

    const-string v4, "leftMarginal"

    const-string v5, "getLeftMarginal()Lcom/amazon/krf/platform/Marginal;"

    invoke-direct {v2, v0, v4, v5, v3}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v4, "centerMarginal"

    const-string v5, "getCenterMarginal()Lcom/amazon/krf/platform/Marginal;"

    invoke-direct {v2, v0, v4, v5, v3}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v4, "rightMarginal"

    const-string v5, "getRightMarginal()Lcom/amazon/krf/platform/Marginal;"

    invoke-direct {v2, v0, v4, v5, v3}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v4, "showClock"

    const-string v5, "getShowClock()Z"

    invoke-direct {v2, v0, v4, v5, v3}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    const/4 v0, 0x3

    aput-object v2, v1, v0

    sput-object v1, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method private constructor <init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;ZZZLcom/amazon/kindle/rendering/marginals/NativeObjectFactory;)V
    .locals 1

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->data:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    iput-boolean p2, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->isRtl:Z

    iput-boolean p3, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->hasTitle:Z

    iput-object p5, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->factory:Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;

    .line 195
    invoke-interface {p5}, Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;->createViewOptions()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->leftSettings:Lcom/amazon/krf/platform/ViewSettings;

    .line 196
    iget-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->factory:Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;

    invoke-interface {p1}, Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;->createViewOptions()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->centerSettings:Lcom/amazon/krf/platform/ViewSettings;

    .line 197
    iget-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->factory:Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;

    invoke-interface {p1}, Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;->createViewOptions()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->rightSettings:Lcom/amazon/krf/platform/ViewSettings;

    .line 199
    sget-object p1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 381
    new-instance p1, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$1;

    invoke-direct {p1, v0, v0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 383
    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->leftMarginal$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 200
    sget-object p1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 384
    new-instance p1, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$2;

    invoke-direct {p1, v0, v0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->centerMarginal$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 201
    sget-object p1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 387
    new-instance p1, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$3;

    invoke-direct {p1, v0, v0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 389
    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->rightMarginal$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 206
    sget-object p1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 390
    new-instance p2, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$4;

    invoke-direct {p2, p1, p1, p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup$$special$$inlined$observable$4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;)V

    .line 392
    iput-object p2, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->showClock$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 217
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->getAllViewSettings()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->leftSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->getAllViewSettings()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->centerSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->getAllViewSettings()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->rightSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->leftSettings:Lcom/amazon/krf/platform/ViewSettings;

    sget-object p2, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->LEFT_ALIGNED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/ViewSettings;->setTextAlignment(Lcom/amazon/krf/platform/ViewSettings$TextAlignment;)V

    .line 221
    iget-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->centerSettings:Lcom/amazon/krf/platform/ViewSettings;

    sget-object p2, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->CENTERED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/ViewSettings;->setTextAlignment(Lcom/amazon/krf/platform/ViewSettings$TextAlignment;)V

    .line 222
    iget-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->rightSettings:Lcom/amazon/krf/platform/ViewSettings;

    sget-object p2, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->RIGHT_ALIGNED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/ViewSettings;->setTextAlignment(Lcom/amazon/krf/platform/ViewSettings$TextAlignment;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;ZZZLcom/amazon/kindle/rendering/marginals/NativeObjectFactory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 188
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;-><init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;ZZZLcom/amazon/kindle/rendering/marginals/NativeObjectFactory;)V

    return-void
.end method

.method public static final synthetic access$getCenterSettings$p(Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;)Lcom/amazon/krf/platform/ViewSettings;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->centerSettings:Lcom/amazon/krf/platform/ViewSettings;

    return-object p0
.end method


# virtual methods
.method public createMarginals(Lcom/amazon/krf/platform/PositionRange;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/krf/platform/PositionRange;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/Marginal;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "range"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    const-string v2, "range.firstPosition"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 248
    :cond_0
    iget-object v1, v0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->data:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getHeaderTextOnly()Ljava/util/List;

    move-result-object v1

    .line 249
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v5, ""

    if-eqz v2, :cond_2

    .line 250
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v1, v5

    .line 252
    :goto_1
    iget-boolean v2, v0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->isRtl:Z

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->getShowClock()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v10, v1

    goto :goto_3

    :cond_4
    :goto_2
    move-object v10, v5

    .line 253
    :goto_3
    iget-boolean v2, v0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->isRtl:Z

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->getShowClock()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v15, v1

    goto :goto_4

    :cond_5
    move-object v15, v5

    .line 256
    :goto_4
    iget-boolean v1, v0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->hasTitle:Z

    if-nez v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->getShowClock()Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    goto :goto_5

    .line 257
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->getShowClock()Z

    move-result v1

    if-nez v1, :cond_7

    const-wide/16 v1, 0x0

    goto :goto_5

    .line 258
    :cond_7
    iget-object v1, v0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->data:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getClockWidthPercentageOfScreenWidth()D

    move-result-wide v1

    :goto_5
    move-wide/from16 v16, v1

    int-to-double v1, v4

    const/4 v14, 0x2

    int-to-double v6, v14

    mul-double v6, v6, v16

    sub-double v23, v1, v6

    .line 262
    iget-boolean v1, v0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->hasTitle:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->data:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 264
    :cond_8
    iget-object v6, v0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->factory:Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;

    sget-object v7, Lcom/amazon/krf/platform/Marginal$MarginalType;->HEADER:Lcom/amazon/krf/platform/Marginal$MarginalType;

    sget-object v8, Lcom/amazon/krf/platform/Marginal$LayoutPosition;->LEFT:Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    iget-object v9, v0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->leftSettings:Lcom/amazon/krf/platform/ViewSettings;

    const-string v1, "leftText"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide/from16 v11, v16

    invoke-interface/range {v6 .. v12}, Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;->createMarginal(Lcom/amazon/krf/platform/Marginal$MarginalType;Lcom/amazon/krf/platform/Marginal$LayoutPosition;Lcom/amazon/krf/platform/ViewSettings;Ljava/lang/String;D)Lcom/amazon/krf/platform/Marginal;

    move-result-object v1

    .line 265
    iget-object v2, v0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->factory:Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;

    sget-object v19, Lcom/amazon/krf/platform/Marginal$MarginalType;->HEADER:Lcom/amazon/krf/platform/Marginal$MarginalType;

    sget-object v20, Lcom/amazon/krf/platform/Marginal$LayoutPosition;->MIDDLE:Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    iget-object v6, v0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->centerSettings:Lcom/amazon/krf/platform/ViewSettings;

    const-string v7, "titleText"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v18, v2

    move-object/from16 v21, v6

    move-object/from16 v22, v5

    invoke-interface/range {v18 .. v24}, Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;->createMarginal(Lcom/amazon/krf/platform/Marginal$MarginalType;Lcom/amazon/krf/platform/Marginal$LayoutPosition;Lcom/amazon/krf/platform/ViewSettings;Ljava/lang/String;D)Lcom/amazon/krf/platform/Marginal;

    move-result-object v2

    .line 266
    iget-object v11, v0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->factory:Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;

    sget-object v12, Lcom/amazon/krf/platform/Marginal$MarginalType;->HEADER:Lcom/amazon/krf/platform/Marginal$MarginalType;

    sget-object v13, Lcom/amazon/krf/platform/Marginal$LayoutPosition;->RIGHT:Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    iget-object v5, v0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->rightSettings:Lcom/amazon/krf/platform/ViewSettings;

    const-string v6, "rightText"

    invoke-static {v15, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    move-object v14, v5

    invoke-interface/range {v11 .. v17}, Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;->createMarginal(Lcom/amazon/krf/platform/Marginal$MarginalType;Lcom/amazon/krf/platform/Marginal$LayoutPosition;Lcom/amazon/krf/platform/ViewSettings;Ljava/lang/String;D)Lcom/amazon/krf/platform/Marginal;

    move-result-object v5

    .line 268
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->setLeftMarginal(Lcom/amazon/krf/platform/Marginal;)V

    .line 269
    invoke-virtual {v0, v2}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->setCenterMarginal(Lcom/amazon/krf/platform/Marginal;)V

    .line 270
    invoke-virtual {v0, v5}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->setRightMarginal(Lcom/amazon/krf/platform/Marginal;)V

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/amazon/krf/platform/Marginal;

    aput-object v1, v7, v3

    aput-object v2, v7, v4

    aput-object v5, v7, v6

    .line 272
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 245
    :cond_9
    :goto_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public destroyMarginals()V
    .locals 1

    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->setLeftMarginal(Lcom/amazon/krf/platform/Marginal;)V

    .line 277
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->setCenterMarginal(Lcom/amazon/krf/platform/Marginal;)V

    .line 278
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->setRightMarginal(Lcom/amazon/krf/platform/Marginal;)V

    return-void
.end method

.method protected final getData()Lcom/amazon/android/docviewer/mobi/BookPageMarginal;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->data:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    return-object v0
.end method

.method protected final getFactory()Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->factory:Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;

    return-object v0
.end method

.method protected final getHasTitle()Z
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->hasTitle:Z

    return v0
.end method

.method protected final getLeftMarginValue()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->leftMarginValue:Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    return-object v0
.end method

.method protected final getRightMarginValue()Lcom/amazon/krf/platform/ViewSettings$MeasureValue;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->rightMarginValue:Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    return-object v0
.end method

.method public final getShowClock()Z
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->showClock$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected final isRtl()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->isRtl:Z

    return v0
.end method

.method protected final setCenterMarginal(Lcom/amazon/krf/platform/Marginal;)V
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->centerMarginal$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    const-string v0, "leftMargin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->leftMarginValue:Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    .line 227
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->leftSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 229
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->getShowClock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->centerSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    :cond_0
    return-void
.end method

.method protected final setLeftMarginal(Lcom/amazon/krf/platform/Marginal;)V
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->leftMarginal$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    const-string v0, "rightMargin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->rightMarginValue:Lcom/amazon/krf/platform/ViewSettings$MeasureValue;

    .line 236
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->rightSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    .line 238
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->getShowClock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->centerSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    :cond_0
    return-void
.end method

.method protected final setRightMarginal(Lcom/amazon/krf/platform/Marginal;)V
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->rightMarginal$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setShowClock(Z)V
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->showClock$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/amazon/kindle/rendering/marginals/BaseHeaderMarginalGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
