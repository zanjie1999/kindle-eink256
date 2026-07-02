.class Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;
.super Ljava/lang/Object;
.source "AbstractScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/sitb/android/updater/AbstractScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTask"
.end annotation


# instance fields
.field private asin:Ljava/lang/String;

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private paused:Z

.field private reftagIdPrefix:I

.field final synthetic this$0:Lcom/amazon/sitb/android/updater/AbstractScheduler;


# direct methods
.method private constructor <init>(Lcom/amazon/sitb/android/updater/AbstractScheduler;Ljava/lang/String;I)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->this$0:Lcom/amazon/sitb/android/updater/AbstractScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->asin:Ljava/lang/String;

    .line 146
    iput p3, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->reftagIdPrefix:I

    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->paused:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/sitb/android/updater/AbstractScheduler;Ljava/lang/String;ILcom/amazon/sitb/android/updater/AbstractScheduler$1;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;-><init>(Lcom/amazon/sitb/android/updater/AbstractScheduler;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 169
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 170
    iput-object v0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->future:Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public ensureRecent()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->this$0:Lcom/amazon/sitb/android/updater/AbstractScheduler;

    invoke-static {v0}, Lcom/amazon/sitb/android/updater/AbstractScheduler;->access$500(Lcom/amazon/sitb/android/updater/AbstractScheduler;)Lcom/amazon/sitb/android/updater/Updater;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->asin:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->reftagIdPrefix:I

    invoke-virtual {v0, v1, v2}, Lcom/amazon/sitb/android/updater/Updater;->ensureRecent(Ljava/lang/String;I)V

    return-void
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->paused:Z

    return v0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 176
    iput-boolean v0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->paused:Z

    .line 177
    invoke-virtual {p0}, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->cancel()V

    return-void
.end method

.method public resume()V
    .locals 2

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->paused:Z

    .line 188
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->this$0:Lcom/amazon/sitb/android/updater/AbstractScheduler;

    invoke-static {v0}, Lcom/amazon/sitb/android/updater/AbstractScheduler;->access$100(Lcom/amazon/sitb/android/updater/AbstractScheduler;)Lcom/amazon/sitb/android/cache/Cache;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/cache/Cache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/sitb/android/HasExpiration;

    if-eqz v0, :cond_1

    .line 189
    invoke-interface {v0}, Lcom/amazon/sitb/android/HasExpiration;->shouldUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0, v0}, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->scheduleTaskWhenExpiring(Lcom/amazon/sitb/android/HasExpiration;)V

    goto :goto_1

    .line 191
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->ensureRecent()V

    :goto_1
    return-void
.end method

.method public run()V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->this$0:Lcom/amazon/sitb/android/updater/AbstractScheduler;

    invoke-static {v0}, Lcom/amazon/sitb/android/updater/AbstractScheduler;->access$300(Lcom/amazon/sitb/android/updater/AbstractScheduler;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->this$0:Lcom/amazon/sitb/android/updater/AbstractScheduler;

    invoke-static {v2}, Lcom/amazon/sitb/android/updater/AbstractScheduler;->access$200(Lcom/amazon/sitb/android/updater/AbstractScheduler;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->asin:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Making automatic %s update for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->ensureRecent()V

    return-void
.end method

.method public scheduleTaskWhenExpiring(Lcom/amazon/sitb/android/HasExpiration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->this$0:Lcom/amazon/sitb/android/updater/AbstractScheduler;

    invoke-static {v0}, Lcom/amazon/sitb/android/updater/AbstractScheduler;->access$300(Lcom/amazon/sitb/android/updater/AbstractScheduler;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->this$0:Lcom/amazon/sitb/android/updater/AbstractScheduler;

    .line 202
    invoke-static {v2}, Lcom/amazon/sitb/android/updater/AbstractScheduler;->access$200(Lcom/amazon/sitb/android/updater/AbstractScheduler;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->asin:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 204
    invoke-interface {p1}, Lcom/amazon/sitb/android/HasExpiration;->getTimeToExpiring()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amazon/sitb/android/utils/StringUtils;->toMinuteString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p1, v1, v2

    const-string v2, "Scheduling automatic %s update for %s in %s, for %s"

    .line 201
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->info(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->this$0:Lcom/amazon/sitb/android/updater/AbstractScheduler;

    invoke-static {v0}, Lcom/amazon/sitb/android/updater/AbstractScheduler;->access$400(Lcom/amazon/sitb/android/updater/AbstractScheduler;)Lcom/amazon/sitb/android/ITaskRunner;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/sitb/android/HasExpiration;->getTimeToExpiring()J

    move-result-wide v1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, p1}, Lcom/amazon/sitb/android/ITaskRunner;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->setFuture(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/amazon/sitb/android/updater/AbstractScheduler$UpdateTask;->future:Ljava/util/concurrent/Future;

    return-void
.end method
