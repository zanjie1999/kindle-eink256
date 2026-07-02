.class Lcom/amazon/kcp/application/SharedPreferenceHook$SharedPreferenceCleaner;
.super Ljava/lang/Object;
.source "SharedPreferenceHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/SharedPreferenceHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SharedPreferenceCleaner"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SharedPreferenceCleaner"

.field private static init:Z = false

.field private static sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static clearPendingTask(Ljava/lang/String;)V
    .locals 2

    .line 97
    sget-boolean v0, Lcom/amazon/kcp/application/SharedPreferenceHook$SharedPreferenceCleaner;->init:Z

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/amazon/kcp/application/SharedPreferenceHook$SharedPreferenceCleaner;->setPendingWorkFinishers()V

    const/4 v0, 0x1

    .line 99
    sput-boolean v0, Lcom/amazon/kcp/application/SharedPreferenceHook$SharedPreferenceCleaner;->init:Z

    .line 101
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/SharedPreferenceHook$SharedPreferenceCleaner;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clear pending SharedPreference tasks on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SharedPreferenceCleaner"

    invoke-static {v0, p0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sget-object p0, Lcom/amazon/kcp/application/SharedPreferenceHook$SharedPreferenceCleaner;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_1
    return-void
.end method

.method private static setPendingWorkFinishers()V
    .locals 3

    const-string v0, "SharedPreferenceCleaner"

    const-string v1, "getPendingWorkFinishers now"

    .line 108
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "android.app.QueuedWork"

    .line 110
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "sPendingWorkFinishers"

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    sput-object v1, Lcom/amazon/kcp/application/SharedPreferenceHook$SharedPreferenceCleaner;->sPendingWorkFinishers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-string v1, "getPendingWorkFinishers success"

    .line 114
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Failed to get getPendingWorkFinishers"

    .line 116
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
