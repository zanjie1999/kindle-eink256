.class public Lcom/amazon/sitb/android/services/ActivityService;
.super Ljava/lang/Object;
.source "ActivityService.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/ui/IReaderUIManager;Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/sitb/android/services/ActivityService;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    .line 26
    iput-object p2, p0, Lcom/amazon/sitb/android/services/ActivityService;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isReaderInForeground()Z
    .locals 5

    .line 31
    iget-object v0, p0, Lcom/amazon/sitb/android/services/ActivityService;->context:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v2, p0, Lcom/amazon/sitb/android/services/ActivityService;->context:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    .line 35
    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    .line 36
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_2

    :cond_2
    :goto_1
    move-object v1, v3

    :goto_2
    if-nez v1, :cond_3

    move-object v1, v3

    goto :goto_3

    .line 37
    :cond_3
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    :goto_3
    if-nez v1, :cond_4

    goto :goto_4

    .line 38
    :cond_4
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 40
    :goto_4
    invoke-static {v0, v3}, Lcom/amazon/sitb/android/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_5
    return v1
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/sitb/android/services/ActivityService;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
