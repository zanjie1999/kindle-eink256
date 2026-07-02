.class public Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;
.super Ljava/lang/Object;
.source "PostAuthScriptPageListener.java"

# interfaces
.implements Lcom/amazon/kcp/store/listener/IPageListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener$FTUEPageListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activity:Lcom/amazon/kcp/store/listener/StoreInterface;

.field private hasPageRedirect:Z

.field private scriptPostAuthentication:Ljava/lang/String;

.field private targetPage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/store/listener/StoreInterface;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->hasPageRedirect:Z

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->activity:Lcom/amazon/kcp/store/listener/StoreInterface;

    .line 31
    iput-boolean p2, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->hasPageRedirect:Z

    .line 32
    iput-object p4, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->scriptPostAuthentication:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->targetPage:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 35
    invoke-interface {p1}, Lcom/amazon/kcp/store/listener/StoreInterface;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/redding/ReddingActivity;

    const/4 p2, 0x1

    invoke-static {p1, v0, p2}, Lcom/amazon/kcp/util/LibraryActivityUtils;->showLoadingScreenIfNeeded(Landroid/app/Activity;ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->hasPageRedirect:Z

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->targetPage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;)Lcom/amazon/kcp/store/listener/StoreInterface;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->activity:Lcom/amazon/kcp/store/listener/StoreInterface;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->forceCloseLoadingActivityWithDelay()V

    return-void
.end method

.method private executeScript()V
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private forceCloseLoadingActivityWithDelay()V
    .locals 5

    .line 90
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener$2;-><init>(Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    .line 95
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 90
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method public getFireType()Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;
    .locals 1

    .line 100
    sget-object v0, Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;->RUN_ONCE:Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;

    return-object v0
.end method

.method public onPageLoaded(Ljava/lang/String;)Z
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->scriptPostAuthentication:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->targetPage:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->activity:Lcom/amazon/kcp/store/listener/StoreInterface;

    invoke-interface {v0}, Lcom/amazon/kcp/store/listener/StoreInterface;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->targetPage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    invoke-direct {p0}, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->executeScript()V

    :cond_1
    :goto_0
    return v1
.end method

.method public run()V
    .locals 3

    const-wide/16 v0, 0x1f4

    .line 68
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    sget-object v1, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->activity:Lcom/amazon/kcp/store/listener/StoreInterface;

    iget-object v1, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->scriptPostAuthentication:Ljava/lang/String;

    new-instance v2, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener$1;-><init>(Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;)V

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/store/listener/StoreInterface;->executeJavascript(Ljava/lang/String;Lcom/amazon/foundation/IStringCallback;)V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;->scriptPostAuthentication:Ljava/lang/String;

    return-void
.end method
