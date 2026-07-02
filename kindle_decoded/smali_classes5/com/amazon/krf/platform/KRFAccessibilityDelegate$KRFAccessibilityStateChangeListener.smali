.class public Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;
.super Ljava/lang/Object;
.source "KRFAccessibilityDelegate.java"

# interfaces
.implements Lcom/amazon/krf/platform/Disposable;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/KRFAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KRFAccessibilityStateChangeListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected mAccessibilityEnabled:Z

.field private volatile mDisposed:Z

.field protected final mManager:Landroid/view/accessibility/AccessibilityManager;

.field protected mTouchExploreEnabled:Z

.field private mTouchListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

.field final synthetic this$0:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/krf/platform/KRFAccessibilityDelegate;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 2

    .line 142
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->this$0:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->mAccessibilityEnabled:Z

    .line 138
    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->mTouchExploreEnabled:Z

    .line 139
    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->mDisposed:Z

    .line 143
    iput-object p2, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 144
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 147
    new-instance v0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener$1;-><init>(Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;Lcom/amazon/krf/platform/KRFAccessibilityDelegate;)V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->mTouchListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 154
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    goto :goto_0

    :cond_0
    const-string p1, "AccessibilityDelegate"

    const-string p2, "No longer support Android less than KITKAT. Touch explore state will not be updated unless accessibility state changes."

    .line 156
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->updateAccessibilityState()V

    return-void
.end method

.method private changeAccessibilityStateInSettings()V
    .locals 4

    const-string v0, "AccessibilityDelegate"

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->this$0:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    invoke-static {v1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->access$100(Lcom/amazon/krf/platform/KRFAccessibilityDelegate;)Lcom/amazon/krf/platform/KRFView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/krf/platform/KRFView;->getSettings()Lcom/amazon/krf/platform/ViewSettings;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 228
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/krf/platform/ViewSettings;->isAccessibilityEnabled()Z

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->isTouchExploreEnabled()Z

    move-result v3

    if-ne v2, v3, :cond_1

    return-void

    .line 241
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->isTouchExploreEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/krf/platform/ViewSettings;->setAccessibilityEnabled(Z)V

    .line 243
    :try_start_1
    iget-object v2, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->this$0:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    invoke-static {v2}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->access$100(Lcom/amazon/krf/platform/KRFAccessibilityDelegate;)Lcom/amazon/krf/platform/KRFView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazon/krf/platform/KRFView;->setSettings(Lcom/amazon/krf/platform/ViewSettings;)V
    :try_end_1
    .catch Lcom/amazon/krf/exception/InvalidSettingsException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 247
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    const-string v1, "Invalid settings is set when accessibility is changed"

    .line 245
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method protected checkValid()V
    .locals 0

    return-void
.end method

.method public dispose()V
    .locals 2

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->mDisposed:Z

    .line 199
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->mManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->mTouchListener:Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    return-void
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->checkValid()V

    .line 212
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->mAccessibilityEnabled:Z

    return v0
.end method

.method public isTouchExploreEnabled()Z
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->checkValid()V

    .line 218
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->mTouchExploreEnabled:Z

    return v0
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 0

    .line 171
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->updateAccessibilityState()V

    return-void
.end method

.method public setAccessibilityState(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->mAccessibilityEnabled:Z

    .line 182
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->changeAccessibilityStateInSettings()V

    return-void
.end method

.method public setTouchExploreEnabled(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->mTouchExploreEnabled:Z

    .line 193
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->changeAccessibilityStateInSettings()V

    return-void
.end method

.method protected updateAccessibilityState()V
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->checkValid()V

    .line 164
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->mAccessibilityEnabled:Z

    .line 165
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->mTouchExploreEnabled:Z

    .line 166
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->changeAccessibilityStateInSettings()V

    return-void
.end method
