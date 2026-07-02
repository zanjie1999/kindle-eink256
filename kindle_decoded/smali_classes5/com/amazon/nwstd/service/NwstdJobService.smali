.class public Lcom/amazon/nwstd/service/NwstdJobService;
.super Landroid/app/job/JobService;
.source "NwstdJobService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/service/NwstdJobService$Task;
    }
.end annotation


# static fields
.field private static final NWSTD_JOB_SERVICE_NAME:Ljava/lang/String; = "NwstdJobService"

.field private static TAG:Ljava/lang/String;

.field private static intent:Landroid/content/Intent;

.field private static mIntentHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/nwstd/service/IIntentHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/nwstd/service/NwstdJobService;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/service/NwstdJobService;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/nwstd/service/NwstdJobService;->mIntentHandlers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/nwstd/service/NwstdJobService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/nwstd/service/NwstdJobService;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/amazon/nwstd/service/NwstdJobService;->callIntentHandler()V

    return-void
.end method

.method private callIntentHandler()V
    .locals 5

    .line 52
    sget-object v0, Lcom/amazon/nwstd/service/NwstdJobService;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/amazon/nwstd/service/NwstdJobService;->TAG:Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "Received intent is null. Ignore this handleIntent call"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 56
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    sget-object v1, Lcom/amazon/nwstd/service/NwstdJobService;->mIntentHandlers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/service/IIntentHandler;

    if-nez v1, :cond_1

    .line 59
    sget-object v1, Lcom/amazon/nwstd/service/NwstdJobService;->TAG:Ljava/lang/String;

    const/16 v2, 0x10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such provider for action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Intent will be ignored."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 63
    :cond_1
    sget-object v0, Lcom/amazon/nwstd/service/NwstdJobService;->intent:Landroid/content/Intent;

    invoke-interface {v1, p0, v0}, Lcom/amazon/nwstd/service/IIntentHandler;->onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static clearProviders()V
    .locals 1

    .line 94
    sget-object v0, Lcom/amazon/nwstd/service/NwstdJobService;->mIntentHandlers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static registerIntentHandler(Lcom/amazon/nwstd/service/IIntentHandler;)Z
    .locals 2

    .line 82
    sget-object v0, Lcom/amazon/nwstd/service/NwstdJobService;->mIntentHandlers:Ljava/util/Map;

    invoke-interface {p0}, Lcom/amazon/nwstd/service/IIntentHandler;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 86
    :cond_0
    sget-object v0, Lcom/amazon/nwstd/service/NwstdJobService;->mIntentHandlers:Ljava/util/Map;

    invoke-interface {p0}, Lcom/amazon/nwstd/service/IIntentHandler;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public static setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 73
    sput-object p0, Lcom/amazon/nwstd/service/NwstdJobService;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 39
    new-instance p1, Lcom/amazon/nwstd/service/NwstdJobService$Task;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/amazon/nwstd/service/NwstdJobService$Task;-><init>(Lcom/amazon/nwstd/service/NwstdJobService;Lcom/amazon/nwstd/service/NwstdJobService$1;)V

    const-string p2, "Executing UpsellFull sync from Asyn Task"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 p1, 0x3

    return p1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 33
    new-instance p1, Lcom/amazon/nwstd/service/NwstdJobService$Task;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/amazon/nwstd/service/NwstdJobService$Task;-><init>(Lcom/amazon/nwstd/service/NwstdJobService;Lcom/amazon/nwstd/service/NwstdJobService$1;)V

    const-string v0, "Executing UpsellFull sync from Asyn Task"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
