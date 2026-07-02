.class public Lcom/amazon/kindle/cms/api/CallbackService;
.super Landroid/app/IntentService;
.source "CallbackService.java"


# static fields
.field private static final ACTION_START_TIME:Ljava/lang/String; = "com.amazon.firelauncher.ACTION_START_TIME"

.field private static final CMS_VERB_INTENT_ACTION:Ljava/lang/String; = "com.amazon.kindle.cms.intent.ACTION_VERB"

.field private static final FIRELAUNCHER_PKG:Ljava/lang/String; = "com.amazon.firelauncher"

.field private static final SERVICE_NAME:Ljava/lang/String; = "CMS_CALLBACK_SERVICE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_binder:Lcom/amazon/kindle/cms/ipc/AppCallback$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kindle/cms/api/CallbackService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/cms/api/CallbackService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "CMS_CALLBACK_SERVICE"

    .line 26
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/amazon/kindle/cms/api/CallbackService$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/cms/api/CallbackService$1;-><init>(Lcom/amazon/kindle/cms/api/CallbackService;)V

    iput-object v0, p0, Lcom/amazon/kindle/cms/api/CallbackService;->m_binder:Lcom/amazon/kindle/cms/ipc/AppCallback$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/CallbackService;->m_binder:Lcom/amazon/kindle/cms/ipc/AppCallback$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 32
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 39
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14

    .line 51
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "com.amazon.kindle.cms.intent.ACTION_VERB"

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "verb"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "library"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "source_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    .line 67
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-static {p0}, Lcom/amazon/kindle/cms/api/CMSApi;->instance(Landroid/content/Context;)Lcom/amazon/kindle/cms/api/CMSApi;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/amazon/kindle/cms/api/CMSApi;->getCallback(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback;

    move-result-object v5

    if-nez v5, :cond_2

    .line 71
    sget-object p1, Lcom/amazon/kindle/cms/api/CallbackService;->TAG:Ljava/lang/String;

    const-string v0, "No callback found to execute verb... perhaps registering callbacks not in Application.onCreate()?"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 78
    invoke-static {v0}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v9}, Lcom/amazon/ebook/util/text/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 83
    :cond_3
    new-instance v11, Lcom/amazon/kindle/cms/api/CMSServerWrapper;

    invoke-direct {v11, p0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;-><init>(Landroid/content/Context;)V

    .line 86
    :try_start_0
    instance-of v2, v5, Lcom/amazon/kindle/cms/api/CallbackEx;

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    const-string v4, "com.amazon.firelauncher.ACTION_START_TIME"

    .line 89
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long p1, v6, v12

    if-lez p1, :cond_4

    .line 92
    new-instance p1, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;

    const-string v2, "com.amazon.firelauncher"

    invoke-direct {p1, v6, v7, v2}, Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;-><init>(JLjava/lang/String;)V

    move-object v7, p1

    goto :goto_0

    :cond_4
    move-object v7, v2

    .line 95
    :goto_0
    move-object p1, v5

    check-cast p1, Lcom/amazon/kindle/cms/api/CallbackEx;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object v1, p1

    move-object v2, v11

    move-object v5, v9

    move-object v6, v0

    invoke-interface/range {v1 .. v7}, Lcom/amazon/kindle/cms/api/CallbackEx;->execute(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/api/VerbExtrasInterface;)Lcom/amazon/kindle/cms/api/Callback$Result;

    goto :goto_1

    .line 99
    :cond_5
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    move-object v6, v11

    move-object v10, v0

    invoke-interface/range {v5 .. v10}, Lcom/amazon/kindle/cms/api/Callback;->execute(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :goto_1
    invoke-virtual {v11}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->disconnect()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v11}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->disconnect()V

    throw p1

    :cond_6
    :goto_2
    return-void
.end method
