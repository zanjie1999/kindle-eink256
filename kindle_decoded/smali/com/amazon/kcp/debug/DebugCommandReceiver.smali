.class public Lcom/amazon/kcp/debug/DebugCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DebugCommandReceiver.java"


# static fields
.field private static final CLEAR_DEBUG_MENU:Ljava/lang/String; = "com.amazon.kindle.debug.action.CLEAR_NOTIFICATION"

.field private static final DEREGISTER_USER:Ljava/lang/String; = "com.amazon.kindle.debug.action.DEREGISTER_USER"

.field private static final DISABLE_TUTORIALS:Ljava/lang/String; = "com.amazon.kindle.debug.action.DISABLE_TUTORIALS"

.field private static final ENABLE_TUTORIALS:Ljava/lang/String; = "com.amazon.kindle.debug.action.ENABLE_TUTORIALS"

.field private static final FLIP_ORIENTATION:Ljava/lang/String; = "com.amazon.kindle.debug.action.FLIP_ORIENTATION"

.field private static final TAG:Ljava/lang/String;

.field private static final TRACE_START:Ljava/lang/String; = "com.amazon.kindle.debug.action.TRACE_START"

.field private static final TRACE_STOP:Ljava/lang/String; = "com.amazon.kindle.debug.action.TRACE_STOP"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/kcp/debug/DebugCommandReceiver;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/DebugCommandReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private deregisterUser()V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazon/kcp/debug/DebugCommandReceiver$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/debug/DebugCommandReceiver$1;-><init>(Lcom/amazon/kcp/debug/DebugCommandReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private flipOrientation()V
    .locals 3

    .line 75
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 76
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v1

    .line 77
    instance-of v2, v0, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getOrientation()Lcom/amazon/kindle/model/content/BookOrientation;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/model/content/BookOrientation;->UNDEFINED:Lcom/amazon/kindle/model/content/BookOrientation;

    if-ne v1, v2, :cond_1

    .line 78
    check-cast v0, Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 80
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getOrientation()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 86
    :goto_0
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/redding/ReddingActivity;->setContentOrientation(I)V

    :cond_1
    return-void
.end method

.method private startTrace()V
    .locals 1

    const-string/jumbo v0, "testing"

    .line 110
    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    return-void
.end method

.method private stopTrace()V
    .locals 0

    .line 114
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 49
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.kindle.debug.action.FLIP_ORIENTATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugCommandReceiver;->flipOrientation()V

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.kindle.debug.action.CLEAR_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p2, "notification"

    .line 55
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.kindle.debug.action.DEREGISTER_USER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugCommandReceiver;->deregisterUser()V

    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.kindle.debug.action.TRACE_START"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugCommandReceiver;->startTrace()V

    goto :goto_0

    .line 60
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.kindle.debug.action.TRACE_STOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugCommandReceiver;->stopTrace()V

    goto :goto_0

    .line 62
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.kindle.debug.action.DISABLE_TUTORIALS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p2, 0x1

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/debug/DebugCommandReceiver;->setSkipTutorials(Landroid/content/Context;Z)V

    goto :goto_0

    .line 64
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.amazon.kindle.debug.action.ENABLE_TUTORIALS"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 p2, 0x0

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/debug/DebugCommandReceiver;->setSkipTutorials(Landroid/content/Context;Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public setSkipTutorials(Landroid/content/Context;Z)V
    .locals 1

    .line 119
    invoke-static {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/application/UserSettingsController;->setShouldSkipTutorials(Z)V

    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setting skip tutorials to: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->shouldSkipLegacyTutorials()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 120
    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
