.class public Lcom/amazon/android/docviewer/ScrollLockManager;
.super Ljava/lang/Object;
.source "ScrollLockManager.java"


# static fields
.field private static final MAX_ANGLE_FOR_HORIZONTAL_MOVEMENT:F = 70.0f

.field private static final MIN_ANGLE_FOR_VERTICAL_MOVEMENT:F = 20.0f

.field private static final MIN_DISTANCE_FOR_HORIZONTAL_LOCK:F = 10.0f

.field private static final MIN_DISTANCE_FOR_VERTICAL_LOCK:F = 6.0f

.field private static final PI_AS_FLOAT:F = 3.1415927f


# instance fields
.field private allowsScrollLocking:Z

.field private dxTotal:F

.field private dyTotal:F

.field private horizontalScrollLock:Z

.field private verticalScrollLock:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->dxTotal:F

    .line 12
    iput v0, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->dyTotal:F

    .line 19
    invoke-direct {p0}, Lcom/amazon/android/docviewer/ScrollLockManager;->resetScrollLocks()V

    return-void
.end method

.method private final resetScrollLocks()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->horizontalScrollLock:Z

    .line 24
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->verticalScrollLock:Z

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->allowsScrollLocking:Z

    return-void
.end method


# virtual methods
.method public evaluatePositionChange(FF)V
    .locals 3

    .line 52
    iget v0, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->dxTotal:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->dxTotal:F

    .line 53
    iget p1, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->dyTotal:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->dyTotal:F

    const/4 p2, 0x0

    cmpl-float p2, v0, p2

    if-eqz p2, :cond_0

    div-float/2addr p1, v0

    float-to-double p1, p1

    .line 61
    invoke-static {p1, p2}, Ljava/lang/Math;->atan(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x43340000    # 180.0f

    mul-float p1, p1, p2

    const p2, 0x40490fdb    # (float)Math.PI

    div-float/2addr p1, p2

    .line 62
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42b40000    # 90.0f

    :goto_0
    const/high16 p2, 0x41a00000    # 20.0f

    const/4 v0, 0x1

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    .line 69
    iget p2, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->dxTotal:F

    .line 70
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, v1

    if-lez p2, :cond_1

    iget-boolean p2, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->allowsScrollLocking:Z

    if-eqz p2, :cond_1

    .line 71
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->horizontalScrollLock:Z

    goto :goto_1

    :cond_1
    const/high16 p2, 0x428c0000    # 70.0f

    const/high16 v2, 0x40c00000    # 6.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    .line 72
    iget p1, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->dyTotal:F

    .line 73
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    iget-boolean p1, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->allowsScrollLocking:Z

    if-eqz p1, :cond_2

    .line 74
    iput-boolean v0, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->verticalScrollLock:Z

    goto :goto_1

    .line 77
    :cond_2
    iget p1, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->dxTotal:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    iget p1, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->dyTotal:F

    .line 78
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->allowsScrollLocking:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public getHorizontalScrollLock()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->horizontalScrollLock:Z

    return v0
.end method

.method public getVerticalScrollLock()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->verticalScrollLock:Z

    return v0
.end method

.method public locksInChangeableState()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->horizontalScrollLock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->verticalScrollLock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->allowsScrollLocking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFinishPan(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/amazon/android/docviewer/ScrollLockManager;->resetScrollLocks()V

    :cond_0
    return-void
.end method

.method public onStartPan()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->dxTotal:F

    .line 42
    iput v0, p0, Lcom/amazon/android/docviewer/ScrollLockManager;->dyTotal:F

    return-void
.end method
