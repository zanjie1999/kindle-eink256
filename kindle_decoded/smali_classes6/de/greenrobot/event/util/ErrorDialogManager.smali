.class public Lde/greenrobot/event/util/ErrorDialogManager;
.super Ljava/lang/Object;
.source "ErrorDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/event/util/ErrorDialogManager$SupportManagerFragment;
    }
.end annotation


# static fields
.field public static factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/event/util/ErrorDialogFragmentFactory<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic access$000(Ljava/lang/Object;Lde/greenrobot/event/util/ThrowableFailureEvent;)Z
    .locals 0

    .line 29
    invoke-static {p0, p1}, Lde/greenrobot/event/util/ErrorDialogManager;->isInExecutionScope(Ljava/lang/Object;Lde/greenrobot/event/util/ThrowableFailureEvent;)Z

    move-result p0

    return p0
.end method

.method protected static checkLogException(Lde/greenrobot/event/util/ThrowableFailureEvent;)V
    .locals 2

    .line 225
    sget-object v0, Lde/greenrobot/event/util/ErrorDialogManager;->factory:Lde/greenrobot/event/util/ErrorDialogFragmentFactory;

    iget-object v0, v0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget-boolean v1, v0, Lde/greenrobot/event/util/ErrorDialogConfig;->logExceptions:Z

    if-eqz v1, :cond_1

    .line 226
    iget-object v0, v0, Lde/greenrobot/event/util/ErrorDialogConfig;->tagForLoggingExceptions:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 228
    sget-object v0, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;

    .line 230
    :cond_0
    iget-object p0, p0, Lde/greenrobot/event/util/ThrowableFailureEvent;->throwable:Ljava/lang/Throwable;

    const-string v1, "Error dialog manager received exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method private static isInExecutionScope(Ljava/lang/Object;Lde/greenrobot/event/util/ThrowableFailureEvent;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p1}, Lde/greenrobot/event/util/ThrowableFailureEvent;->getExecutionScope()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 237
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
