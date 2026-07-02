.class Lcom/amazon/krf/internal/FrameCallbacks;
.super Ljava/lang/Object;
.source "KRFGLESView.java"


# instance fields
.field private mContentView:Lcom/amazon/krf/internal/KRFGLESView;

.field private mEnabled:Z

.field private mFrameCallback:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method constructor <init>(Lcom/amazon/krf/internal/KRFGLESView;)V
    .locals 1

    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1126
    iput-boolean v0, p0, Lcom/amazon/krf/internal/FrameCallbacks;->mEnabled:Z

    .line 1132
    iput-object p1, p0, Lcom/amazon/krf/internal/FrameCallbacks;->mContentView:Lcom/amazon/krf/internal/KRFGLESView;

    .line 1134
    invoke-static {}, Lcom/amazon/krf/internal/FrameCallbacks;->hasChoreographer()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1135
    new-instance p1, Lcom/amazon/krf/internal/FrameCallbacks$1;

    invoke-direct {p1, p0}, Lcom/amazon/krf/internal/FrameCallbacks$1;-><init>(Lcom/amazon/krf/internal/FrameCallbacks;)V

    iput-object p1, p0, Lcom/amazon/krf/internal/FrameCallbacks;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/krf/internal/FrameCallbacks;)Z
    .locals 0

    .line 1124
    iget-boolean p0, p0, Lcom/amazon/krf/internal/FrameCallbacks;->mEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/krf/internal/FrameCallbacks;)Landroid/view/Choreographer$FrameCallback;
    .locals 0

    .line 1124
    iget-object p0, p0, Lcom/amazon/krf/internal/FrameCallbacks;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/krf/internal/FrameCallbacks;)Lcom/amazon/krf/internal/KRFGLESView;
    .locals 0

    .line 1124
    iget-object p0, p0, Lcom/amazon/krf/internal/FrameCallbacks;->mContentView:Lcom/amazon/krf/internal/KRFGLESView;

    return-object p0
.end method

.method private static hasChoreographer()Z
    .locals 6

    .line 1148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1151
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 1152
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/krf/platform/ThreadUtils;->assertDebug(Ljava/lang/Boolean;)V

    if-nez v3, :cond_3

    const-string v4, "KRF"

    const-string v5, "Looper could not be found so Choreographer will not be used"

    .line 1155
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    return v1
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 1163
    invoke-virtual {p0, v0}, Lcom/amazon/krf/internal/FrameCallbacks;->enableVSyncCallbacks(Z)V

    const/4 v0, 0x0

    .line 1164
    iput-object v0, p0, Lcom/amazon/krf/internal/FrameCallbacks;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 1165
    iput-object v0, p0, Lcom/amazon/krf/internal/FrameCallbacks;->mContentView:Lcom/amazon/krf/internal/KRFGLESView;

    return-void
.end method

.method public enableVSyncCallbacks(Z)V
    .locals 1

    .line 1173
    invoke-static {}, Lcom/amazon/krf/internal/FrameCallbacks;->hasChoreographer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1174
    iput-boolean p1, p0, Lcom/amazon/krf/internal/FrameCallbacks;->mEnabled:Z

    if-eqz p1, :cond_0

    .line 1176
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/krf/internal/FrameCallbacks;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 1178
    :cond_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/krf/internal/FrameCallbacks;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, v0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
