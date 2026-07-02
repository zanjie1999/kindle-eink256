.class abstract Lcom/amazon/bookwizard/BookWizardBaseListener;
.super Ljava/lang/Object;
.source "BookWizardBaseListener.java"

# interfaces
.implements Lcom/amazon/kindle/krx/startup/IStartupListener;


# static fields
.field private static final GET_LAUNCH_INFO_TIMEOUT_SEC:J = 0xaL

.field private static final TAG:Ljava/lang/String; = "com.amazon.bookwizard.BookWizardBaseListener"


# instance fields
.field protected final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/amazon/bookwizard/BookWizardBaseListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method declared-synchronized tryToLaunchBookWizard(Z)Z
    .locals 9

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/amazon/bookwizard/BookWizardBaseListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->isAuthenticated()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 74
    sget-object p1, Lcom/amazon/bookwizard/BookWizardBaseListener;->TAG:Ljava/lang/String;

    const-string v0, "Not showing bookwizard as user is not authenticated!"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    monitor-exit p0

    return v2

    .line 79
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    sget-object p1, Lcom/amazon/bookwizard/BookWizardBaseListener;->TAG:Ljava/lang/String;

    const-string v0, "Not showing bookwizard as it is currently being shown"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    monitor-exit p0

    return v2

    .line 84
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/amazon/bookwizard/BookWizardBaseListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "BookWizardPreferences"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez p1, :cond_3

    const-string v3, "BookWizardUserId"

    const-string v4, ""

    .line 88
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "BookWizardAttemptingLaunch"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 90
    :cond_2
    sget-object p1, Lcom/amazon/bookwizard/BookWizardBaseListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not showing bookwizard as saveUserId :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and currentUserId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " are same!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    monitor-exit p0

    return v2

    .line 96
    :cond_3
    :try_start_3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "BookWizardAttemptingLaunch"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    :try_start_4
    iget-object v3, p0, Lcom/amazon/bookwizard/BookWizardBaseListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseBlocked()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p1, "BookWizardLaunchTask"

    const-string v0, "ParentalOrDeviceControls"

    .line 100
    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object p1, Lcom/amazon/bookwizard/BookWizardBaseListener;->TAG:Ljava/lang/String;

    const-string v0, "Not showing bookwizard as book purchase is blocked!"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 169
    :try_start_5
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "BookWizardAttemptingLaunch"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 102
    monitor-exit p0

    return v2

    :cond_4
    if-nez p1, :cond_9

    .line 107
    :try_start_6
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/bookwizard/BookWizardPlugin;->getRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v3

    .line 108
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v4

    .line 109
    new-instance v6, Lcom/amazon/bookwizard/service/GetLaunchInfoRequest;

    iget-object v7, p0, Lcom/amazon/bookwizard/BookWizardBaseListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v7}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v7

    sget-object v8, Lcom/amazon/bookwizard/service/LaunchInfoContext;->FTUE:Lcom/amazon/bookwizard/service/LaunchInfoContext;

    invoke-direct {v6, v7, v8, v4}, Lcom/amazon/bookwizard/service/GetLaunchInfoRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/service/LaunchInfoContext;Lcom/android/volley/toolbox/RequestFuture;)V

    invoke-virtual {v3, v6}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v3, 0x0

    const-wide/16 v6, 0xa

    .line 112
    :try_start_7
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/volley/toolbox/RequestFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/bookwizard/service/LaunchInfo;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_8
    const-string v6, "BookWizardLaunchTask"

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BookWizardLaunchInfoError."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v6, Lcom/amazon/bookwizard/BookWizardBaseListener;->TAG:Ljava/lang/String;

    const-string v7, "Exception occurred while calling GetLaunchInfo api"

    invoke-static {v6, v7, v4}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v3, :cond_5

    const-string v4, "INACTIVE"

    .line 118
    invoke-virtual {v3}, Lcom/amazon/bookwizard/service/LaunchInfo;->getStartupState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string p1, "BookWizardLaunchTask"

    const-string v0, "Inactive"

    .line 119
    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 169
    :try_start_9
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "BookWizardAttemptingLaunch"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 120
    monitor-exit p0

    return v2

    :cond_5
    if-nez v3, :cond_6

    :try_start_a
    const-string v3, "BookWizardLaunchTask"

    const-string v4, "NullLaunchInfo"

    .line 124
    invoke-static {v3, v4}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v3, Lcom/amazon/bookwizard/service/FallbackLaunchInfo;

    invoke-direct {v3}, Lcom/amazon/bookwizard/service/FallbackLaunchInfo;-><init>()V

    goto :goto_1

    .line 126
    :cond_6
    invoke-static {v3}, Lcom/amazon/bookwizard/service/LaunchInfoValidator;->isNotValid(Lcom/amazon/bookwizard/service/LaunchInfo;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v3, "BookWizardLaunchTask"

    const-string v4, "BookWizardLaunchInfoInvalid"

    .line 127
    invoke-static {v3, v4}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v3, Lcom/amazon/bookwizard/service/FallbackLaunchInfo;

    invoke-direct {v3}, Lcom/amazon/bookwizard/service/FallbackLaunchInfo;-><init>()V

    .line 130
    :cond_7
    :goto_1
    invoke-static {v3}, Lcom/amazon/bookwizard/BookWizardPlugin;->setLaunchInfo(Lcom/amazon/bookwizard/service/LaunchInfo;)V

    .line 132
    invoke-virtual {v3}, Lcom/amazon/bookwizard/service/LaunchInfo;->getStartupState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CLIENT"

    .line 133
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 134
    :cond_8
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->hasOnlySamples()Z

    move-result v3

    if-nez v3, :cond_9

    const-string p1, "BookWizardLaunchTask"

    const-string v0, "Client"

    .line 135
    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 169
    :try_start_b
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "BookWizardAttemptingLaunch"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 136
    monitor-exit p0

    return v2

    :cond_9
    :try_start_c
    const-string v3, "BookWizardLaunchTask"

    const-string v4, "LaunchAttempt"

    .line 142
    invoke-static {v3, v4}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {v5}, Lcom/amazon/bookwizard/BookWizardPlugin;->setShowing(Z)V

    .line 144
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/bookwizard/BookWizardPlugin;->getRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v3

    .line 147
    iget-object v4, p0, Lcom/amazon/bookwizard/BookWizardBaseListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserName()Ljava/lang/String;

    if-eqz p1, :cond_a

    const-string p1, "BookWizardLaunchTask"

    const-string v3, "LaunchViaNotification"

    .line 151
    invoke-static {p1, v3}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object p1, Lcom/amazon/bookwizard/service/LaunchInfoContext;->NOTIFICATION:Lcom/amazon/bookwizard/service/LaunchInfoContext;

    invoke-static {p1, v2}, Lcom/amazon/bookwizard/BookWizardPlugin;->launch(Lcom/amazon/bookwizard/service/LaunchInfoContext;Z)V

    goto :goto_2

    :cond_a
    const-string p1, "BookWizardLaunchTask"

    const-string v4, "Launch"

    .line 154
    invoke-static {p1, v4}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance p1, Lcom/amazon/bookwizard/LaunchBookWizardTask;

    iget-object v4, p0, Lcom/amazon/bookwizard/BookWizardBaseListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {p1, v4, v3, v2}, Lcom/amazon/bookwizard/LaunchBookWizardTask;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/android/volley/RequestQueue;Z)V

    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getTaskExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Void;

    invoke-virtual {p1, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    .line 156
    invoke-virtual {p1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    .line 160
    :goto_2
    invoke-static {}, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;->getInstance()Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;->recordBookWizardShown()V

    .line 161
    sget-object p1, Lcom/amazon/bookwizard/BookWizardBaseListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launched BookWizard activity for user : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 169
    :try_start_d
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "BookWizardAttemptingLaunch"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 162
    monitor-exit p0

    return v5

    :catch_1
    move-exception p1

    :try_start_e
    const-string v0, "BookWizardLaunchTask"

    const-string v3, "Exception"

    .line 164
    invoke-static {v0, v3}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v0, Lcom/amazon/bookwizard/BookWizardBaseListener;->TAG:Ljava/lang/String;

    const-string v3, "Error while attempting to launch Book Wizard"

    invoke-static {v0, v3, p1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 169
    :try_start_f
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "BookWizardAttemptingLaunch"

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 166
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 169
    :try_start_10
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BookWizardAttemptingLaunch"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
