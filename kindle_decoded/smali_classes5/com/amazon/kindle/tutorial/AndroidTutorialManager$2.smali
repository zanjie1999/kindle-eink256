.class Lcom/amazon/kindle/tutorial/AndroidTutorialManager$2;
.super Landroid/content/BroadcastReceiver;
.source "AndroidTutorialManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->installLocaleChangeBroadcastReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/AndroidTutorialManager;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$2;->this$0:Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 355
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->access$100()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ACTION_LOCALE_CHANGED received, locale: %s"

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    .line 358
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p2

    new-instance v0, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$2$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager$2$1;-><init>(Lcom/amazon/kindle/tutorial/AndroidTutorialManager$2;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
