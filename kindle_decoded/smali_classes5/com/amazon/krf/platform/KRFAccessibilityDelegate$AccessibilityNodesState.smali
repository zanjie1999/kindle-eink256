.class Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;
.super Ljava/lang/Object;
.source "KRFAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/KRFAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityNodesState"
.end annotation


# instance fields
.field private mAccessibilityNodesReadyConditionVariable:Landroid/os/ConditionVariable;

.field private mIsAccessibilityInformationReady:Z

.field private mIsAccessibilityNodesReady:Z

.field private mIsNavigating:Z

.field final synthetic this$0:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;


# direct methods
.method private constructor <init>(Lcom/amazon/krf/platform/KRFAccessibilityDelegate;)V
    .locals 1

    .line 257
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->this$0:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 258
    iput-boolean p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->mIsNavigating:Z

    const/4 p1, 0x1

    .line 259
    iput-boolean p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->mIsAccessibilityInformationReady:Z

    .line 260
    iput-boolean p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->mIsAccessibilityNodesReady:Z

    .line 261
    new-instance p1, Landroid/os/ConditionVariable;

    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->mIsAccessibilityNodesReady:Z

    invoke-direct {p1, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->mAccessibilityNodesReadyConditionVariable:Landroid/os/ConditionVariable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/krf/platform/KRFAccessibilityDelegate;Lcom/amazon/krf/platform/KRFAccessibilityDelegate$1;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;-><init>(Lcom/amazon/krf/platform/KRFAccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized isAccessibilityInformationReady()Z
    .locals 1

    monitor-enter p0

    .line 280
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->mIsAccessibilityInformationReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAccessibilityNodesReady()Z
    .locals 1

    monitor-enter p0

    .line 284
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->mIsAccessibilityNodesReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNavigating()Z
    .locals 1

    monitor-enter p0

    .line 264
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->mIsNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIsAccessibilityNodesReady(Z)V
    .locals 2

    monitor-enter p0

    .line 288
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIsAccessibilityNodesReady "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    iput-boolean p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->mIsAccessibilityNodesReady:Z

    if-eqz p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->mAccessibilityNodesReadyConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 293
    :cond_0
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->mAccessibilityNodesReadyConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setIsNavigating(Z)V
    .locals 0

    monitor-enter p0

    .line 268
    :try_start_0
    iput-boolean p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->mIsNavigating:Z

    .line 269
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->updateAccessibilityInformationReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateAccessibilityInformationReady()V
    .locals 2

    monitor-enter p0

    .line 273
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->mIsNavigating:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->mIsAccessibilityInformationReady:Z

    if-nez v0, :cond_1

    .line 275
    invoke-virtual {p0, v1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->setIsAccessibilityNodesReady(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitForAccessibilityInformationReady(J)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->mAccessibilityNodesReadyConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0, p1, p2}, Landroid/os/ConditionVariable;->block(J)Z

    return-void
.end method
