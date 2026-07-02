.class public final Lcom/amazon/kcp/util/device/NotchDetectorImpl;
.super Ljava/lang/Object;
.source "NotchDetector.kt"

# interfaces
.implements Lcom/amazon/kcp/util/device/NotchDetector;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotchDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotchDetector.kt\ncom/amazon/kcp/util/device/NotchDetectorImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,147:1\n1819#2:148\n1819#2,2:149\n1820#2:151\n*E\n*S KotlinDebug\n*F\n+ 1 NotchDetector.kt\ncom/amazon/kcp/util/device/NotchDetectorImpl\n*L\n106#1:148\n108#1,2:149\n106#1:151\n*E\n"
.end annotation


# instance fields
.field private hasCenterNotch:Z

.field private hasCornerNotch:Z

.field private final userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/UserSettingsController;)V
    .locals 1

    const-string/jumbo v0, "userSettingsController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/util/device/NotchDetectorImpl;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    .line 30
    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getHasCenterNotch()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/util/device/NotchDetectorImpl;->hasCenterNotch:Z

    .line 39
    iget-object p1, p0, Lcom/amazon/kcp/util/device/NotchDetectorImpl;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getHasCornerNotch()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/util/device/NotchDetectorImpl;->hasCornerNotch:Z

    return-void
.end method

.method private final doesNotchExist(Landroid/view/DisplayCutout;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DisplayCutout;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kcp/util/device/InternalPoint;",
            ">;)Z"
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 148
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 149
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/util/device/InternalPoint;

    .line 110
    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Lcom/amazon/kcp/util/device/InternalPoint;->getX()I

    move-result v4

    if-gt v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kcp/util/device/InternalPoint;->getX()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    if-gt v3, v4, :cond_1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Lcom/amazon/kcp/util/device/InternalPoint;->getY()I

    move-result v4

    if-gt v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kcp/util/device/InternalPoint;->getY()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final setHasCenterNotch(Z)V
    .locals 1

    .line 32
    iput-boolean p1, p0, Lcom/amazon/kcp/util/device/NotchDetectorImpl;->hasCenterNotch:Z

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/util/device/NotchDetectorImpl;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setHasCenterNotch(Z)V

    return-void
.end method

.method private final setHasCornerNotch(Z)V
    .locals 1

    .line 41
    iput-boolean p1, p0, Lcom/amazon/kcp/util/device/NotchDetectorImpl;->hasCornerNotch:Z

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/util/device/NotchDetectorImpl;->userSettingsController:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setHasCornerNotch(Z)V

    return-void
.end method


# virtual methods
.method public detectNotches(Landroid/view/DisplayCutout;Landroid/graphics/Point;)V
    .locals 8

    const-string v0, "displayCutout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "screenSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/amazon/kcp/util/device/InternalPoint;

    .line 74
    new-instance v2, Lcom/amazon/kcp/util/device/InternalPoint;

    iget v3, p2, Landroid/graphics/Point;->y:I

    const/4 v4, 0x2

    div-int/2addr v3, v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3}, Lcom/amazon/kcp/util/device/InternalPoint;-><init>(II)V

    aput-object v2, v1, v5

    .line 75
    new-instance v2, Lcom/amazon/kcp/util/device/InternalPoint;

    iget v3, p2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iget v6, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, v6}, Lcom/amazon/kcp/util/device/InternalPoint;-><init>(II)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 76
    new-instance v2, Lcom/amazon/kcp/util/device/InternalPoint;

    iget v6, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    div-int/2addr v7, v4

    invoke-direct {v2, v6, v7}, Lcom/amazon/kcp/util/device/InternalPoint;-><init>(II)V

    aput-object v2, v1, v4

    .line 77
    new-instance v2, Lcom/amazon/kcp/util/device/InternalPoint;

    iget v6, p2, Landroid/graphics/Point;->x:I

    div-int/2addr v6, v4

    invoke-direct {v2, v6, v5}, Lcom/amazon/kcp/util/device/InternalPoint;-><init>(II)V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 74
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    new-array v0, v0, [Lcom/amazon/kcp/util/device/InternalPoint;

    .line 95
    new-instance v2, Lcom/amazon/kcp/util/device/InternalPoint;

    invoke-direct {v2, v5, v5}, Lcom/amazon/kcp/util/device/InternalPoint;-><init>(II)V

    aput-object v2, v0, v5

    .line 96
    new-instance v2, Lcom/amazon/kcp/util/device/InternalPoint;

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v5, v7}, Lcom/amazon/kcp/util/device/InternalPoint;-><init>(II)V

    aput-object v2, v0, v3

    .line 97
    new-instance v2, Lcom/amazon/kcp/util/device/InternalPoint;

    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, v7}, Lcom/amazon/kcp/util/device/InternalPoint;-><init>(II)V

    aput-object v2, v0, v4

    .line 98
    new-instance v2, Lcom/amazon/kcp/util/device/InternalPoint;

    iget p2, p2, Landroid/graphics/Point;->x:I

    invoke-direct {v2, p2, v5}, Lcom/amazon/kcp/util/device/InternalPoint;-><init>(II)V

    aput-object v2, v0, v6

    .line 95
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p2

    .line 100
    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/util/device/NotchDetectorImpl;->doesNotchExist(Landroid/view/DisplayCutout;Ljava/util/ArrayList;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/util/device/NotchDetectorImpl;->setHasCenterNotch(Z)V

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/util/device/NotchDetectorImpl;->doesNotchExist(Landroid/view/DisplayCutout;Ljava/util/ArrayList;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/util/device/NotchDetectorImpl;->setHasCornerNotch(Z)V

    return-void
.end method

.method public hasCenterNotch()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/amazon/kcp/util/device/NotchDetectorImpl;->hasCenterNotch:Z

    return v0
.end method

.method public hasCornerNotch()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/amazon/kcp/util/device/NotchDetectorImpl;->hasCornerNotch:Z

    return v0
.end method
