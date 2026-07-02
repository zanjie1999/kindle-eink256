.class public final Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;
.super Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;
.source "MarginalGroupImplementations.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMarginalGroupImplementations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MarginalGroupImplementations.kt\ncom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n*L\n1#1,380:1\n33#2,3:381\n33#2,3:384\n*E\n*S KotlinDebug\n*F\n+ 1 MarginalGroupImplementations.kt\ncom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup\n*L\n302#1,3:381\n303#1,3:384\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final data:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

.field private final factory:Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;

.field private final leftMarginal$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final leftSettings:Lcom/amazon/krf/platform/ViewSettings;

.field private final rightMarginal$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final rightSettings:Lcom/amazon/krf/platform/ViewSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const/4 v3, 0x0

    const-string v4, "leftMarginal"

    const-string v5, "getLeftMarginal()Lcom/amazon/krf/platform/Marginal;"

    invoke-direct {v2, v0, v4, v5, v3}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v4, "rightMarginal"

    const-string v5, "getRightMarginal()Lcom/amazon/krf/platform/Marginal;"

    invoke-direct {v2, v0, v4, v5, v3}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    const/4 v0, 0x1

    aput-object v2, v1, v0

    sput-object v1, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 298
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->data:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    iput-object p2, p0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->factory:Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;

    .line 299
    invoke-interface {p2}, Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;->createViewOptions()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->leftSettings:Lcom/amazon/krf/platform/ViewSettings;

    .line 300
    iget-object p1, p0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->factory:Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;

    invoke-interface {p1}, Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;->createViewOptions()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->rightSettings:Lcom/amazon/krf/platform/ViewSettings;

    .line 302
    sget-object p1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 381
    new-instance p1, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup$$special$$inlined$observable$1;

    invoke-direct {p1, v0, v0}, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup$$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 383
    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->leftMarginal$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 303
    sget-object p1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 384
    new-instance p1, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup$$special$$inlined$observable$2;

    invoke-direct {p1, v0, v0}, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup$$special$$inlined$observable$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->rightMarginal$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 306
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->getAllViewSettings()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->leftSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->getAllViewSettings()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->rightSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object p1, p0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->leftSettings:Lcom/amazon/krf/platform/ViewSettings;

    sget-object p2, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->LEFT_ALIGNED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/ViewSettings;->setTextAlignment(Lcom/amazon/krf/platform/ViewSettings$TextAlignment;)V

    .line 309
    iget-object p1, p0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->rightSettings:Lcom/amazon/krf/platform/ViewSettings;

    sget-object p2, Lcom/amazon/krf/platform/ViewSettings$TextAlignment;->RIGHT_ALIGNED:Lcom/amazon/krf/platform/ViewSettings$TextAlignment;

    invoke-virtual {p1, p2}, Lcom/amazon/krf/platform/ViewSettings;->setTextAlignment(Lcom/amazon/krf/platform/ViewSettings$TextAlignment;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 298
    new-instance p2, Lcom/amazon/kindle/rendering/marginals/RealNativeObjectFactory;

    invoke-direct {p2}, Lcom/amazon/kindle/rendering/marginals/RealNativeObjectFactory;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;-><init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;)V

    return-void
.end method

.method private final setLeftMarginal(Lcom/amazon/krf/platform/Marginal;)V
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->leftMarginal$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setRightMarginal(Lcom/amazon/krf/platform/Marginal;)V
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->rightMarginal$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createMarginals(Lcom/amazon/krf/platform/PositionRange;)Ljava/util/List;
    .locals 18
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

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/rendering/marginals/BaseMarginalGroup;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v1

    const-string v3, "range.firstPosition"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/krf/platform/Position;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 325
    :cond_0
    iget-object v1, v0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->data:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/krf/platform/PositionRange;->getFirstPosition()Lcom/amazon/krf/platform/Position;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getFooterTextOnly(I)Ljava/util/List;

    move-result-object v1

    .line 326
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 329
    invoke-direct {v0, v1}, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->setLeftMarginal(Lcom/amazon/krf/platform/Marginal;)V

    .line 330
    invoke-direct {v0, v1}, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->setRightMarginal(Lcom/amazon/krf/platform/Marginal;)V

    .line 331
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 334
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 335
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/lang/String;

    .line 337
    iget-object v6, v0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->factory:Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;

    sget-object v7, Lcom/amazon/krf/platform/Marginal$MarginalType;->FOOTER:Lcom/amazon/krf/platform/Marginal$MarginalType;

    sget-object v8, Lcom/amazon/krf/platform/Marginal$LayoutPosition;->LEFT:Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    iget-object v9, v0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->leftSettings:Lcom/amazon/krf/platform/ViewSettings;

    const-string v1, "leftText"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    invoke-interface/range {v6 .. v12}, Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;->createMarginal(Lcom/amazon/krf/platform/Marginal$MarginalType;Lcom/amazon/krf/platform/Marginal$LayoutPosition;Lcom/amazon/krf/platform/ViewSettings;Ljava/lang/String;D)Lcom/amazon/krf/platform/Marginal;

    move-result-object v1

    .line 338
    iget-object v11, v0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->factory:Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;

    sget-object v12, Lcom/amazon/krf/platform/Marginal$MarginalType;->FOOTER:Lcom/amazon/krf/platform/Marginal$MarginalType;

    sget-object v13, Lcom/amazon/krf/platform/Marginal$LayoutPosition;->RIGHT:Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    iget-object v14, v0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->rightSettings:Lcom/amazon/krf/platform/ViewSettings;

    const-string v2, "rightText"

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    invoke-interface/range {v11 .. v17}, Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;->createMarginal(Lcom/amazon/krf/platform/Marginal$MarginalType;Lcom/amazon/krf/platform/Marginal$LayoutPosition;Lcom/amazon/krf/platform/ViewSettings;Ljava/lang/String;D)Lcom/amazon/krf/platform/Marginal;

    move-result-object v2

    .line 340
    invoke-direct {v0, v1}, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->setLeftMarginal(Lcom/amazon/krf/platform/Marginal;)V

    .line 341
    invoke-direct {v0, v2}, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->setRightMarginal(Lcom/amazon/krf/platform/Marginal;)V

    new-array v3, v3, [Lcom/amazon/krf/platform/Marginal;

    aput-object v1, v3, v5

    aput-object v2, v3, v4

    .line 343
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 322
    :cond_3
    :goto_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public destroyMarginals()V
    .locals 1

    const/4 v0, 0x0

    .line 347
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->setLeftMarginal(Lcom/amazon/krf/platform/Marginal;)V

    .line 348
    invoke-direct {p0, v0}, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->setRightMarginal(Lcom/amazon/krf/platform/Marginal;)V

    return-void
.end method

.method public setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    const-string v0, "leftMargin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->leftSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setLeftMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    return-void
.end method

.method public setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V
    .locals 1

    const-string v0, "rightMargin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;->rightSettings:Lcom/amazon/krf/platform/ViewSettings;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/ViewSettings;->setRightMargin(Lcom/amazon/krf/platform/ViewSettings$MeasureValue;)V

    return-void
.end method
