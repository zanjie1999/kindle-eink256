.class public Lcom/amazon/bookwizard/LaunchBookWizardTask;
.super Landroid/os/AsyncTask;
.source "LaunchBookWizardTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final am:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private final context:Landroid/content/Context;

.field private getCorResponse:Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;

.field private final info:Lcom/amazon/bookwizard/service/LaunchInfo;

.field private isCorSet:Z

.field private isEligibleForMonth:Z

.field private isEligibleForPreview:Z

.field private isViaNotification:Z

.field private final requestQueue:Lcom/android/volley/RequestQueue;

.field private final startTime:J

.field private final weblabmanager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/amazon/bookwizard/LaunchBookWizardTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/android/volley/RequestQueue;Z)V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 69
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->context:Landroid/content/Context;

    .line 70
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->am:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 71
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->weblabmanager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    .line 72
    iput-object p2, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->startTime:J

    .line 74
    iput-boolean p3, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->isViaNotification:Z

    if-eqz p3, :cond_0

    .line 78
    new-instance p1, Lcom/amazon/bookwizard/debug/VanillaLaunchInfo;

    invoke-direct {p1}, Lcom/amazon/bookwizard/debug/VanillaLaunchInfo;-><init>()V

    invoke-static {p1}, Lcom/amazon/bookwizard/BookWizardPlugin;->setLaunchInfo(Lcom/amazon/bookwizard/service/LaunchInfo;)V

    .line 80
    :cond_0
    invoke-static {}, Lcom/amazon/bookwizard/BookWizardPlugin;->getLaunchInfo()Lcom/amazon/bookwizard/service/LaunchInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->info:Lcom/amazon/bookwizard/service/LaunchInfo;

    return-void
.end method

.method private suppressKuEligibleCheck()Z
    .locals 5

    .line 149
    iget-object v0, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->weblabmanager:Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    const-string v1, "BW_ANDROID_ISKUELIGIBLE_GRUPA_DEPRECATION_377323"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 151
    sget-object v0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->TAG:Ljava/lang/String;

    const-string v1, "KU eligible check suppression weblab is null"

    invoke-static {v0, v1}, Lcom/amazon/bookwizard/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 154
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object v0

    .line 155
    sget-object v3, Lcom/amazon/bookwizard/LaunchBookWizardTask;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string v1, "Treatement for %s is %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "T1"

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/LaunchBookWizardTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    .line 88
    invoke-direct {p0}, Lcom/amazon/bookwizard/LaunchBookWizardTask;->suppressKuEligibleCheck()Z

    move-result p1

    .line 89
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v0

    if-nez p1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v2, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest;

    iget-object v3, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->am:Lcom/amazon/kindle/krx/application/IApplicationManager;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v3

    sget-object v4, Lcom/amazon/bookwizard/ku/service/PlanType;->MONTHLY:Lcom/amazon/bookwizard/ku/service/PlanType;

    invoke-direct {v2, v3, v4, v0}, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/ku/service/PlanType;Lcom/android/volley/toolbox/RequestFuture;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 93
    :cond_0
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v3, Lcom/amazon/bookwizard/service/GetCorRequest;

    iget-object v4, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->am:Lcom/amazon/kindle/krx/application/IApplicationManager;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/amazon/bookwizard/service/GetCorRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/android/volley/toolbox/RequestFuture;)V

    invoke-virtual {v2, v3}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 98
    :try_start_0
    invoke-virtual {v0}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object p1, v2

    .line 100
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;

    iput-object v0, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->getCorResponse:Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    .line 102
    :goto_1
    sget-object v1, Lcom/amazon/bookwizard/LaunchBookWizardTask;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get KU eligibility/cor"

    invoke-static {v1, v3, p1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p1}, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;->isEligible()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->isEligibleForMonth:Z

    .line 105
    iget-object p1, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->getCorResponse:Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;->getCor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->getCorResponse:Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;->isInferred()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_4

    :cond_3
    const/4 p1, 0x0

    :goto_4
    iput-boolean p1, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->isCorSet:Z

    if-eqz p1, :cond_5

    .line 109
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->newFuture()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object p1

    .line 110
    iget-object v3, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->requestQueue:Lcom/android/volley/RequestQueue;

    new-instance v4, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest;

    iget-object v5, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->am:Lcom/amazon/kindle/krx/application/IApplicationManager;

    invoke-interface {v5}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v5

    sget-object v6, Lcom/amazon/bookwizard/ku/service/PlanType;->PREVIEW:Lcom/amazon/bookwizard/ku/service/PlanType;

    invoke-direct {v4, v5, v6, p1}, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest;-><init>(Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/bookwizard/ku/service/PlanType;Lcom/android/volley/toolbox/RequestFuture;)V

    invoke-virtual {v3, v4}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 113
    :try_start_2
    invoke-virtual {p1}, Lcom/android/volley/toolbox/RequestFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    .line 115
    sget-object v3, Lcom/amazon/bookwizard/LaunchBookWizardTask;->TAG:Ljava/lang/String;

    const-string v4, "Failed to get KU preview eligibility"

    invoke-static {v3, v4, p1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v2

    :goto_5
    if-eqz p1, :cond_4

    .line 117
    invoke-virtual {p1}, Lcom/amazon/bookwizard/ku/service/KuEligibilityRequest$KuEligibilityResponse;->isEligible()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_6

    :cond_4
    const/4 v0, 0x0

    :goto_6
    iput-boolean v0, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->isEligibleForPreview:Z

    :cond_5
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/LaunchBookWizardTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 5

    .line 127
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->context:Landroid/content/Context;

    const-class v1, Lcom/amazon/bookwizard/ui/BookWizardActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 128
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    iget-boolean v0, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->isEligibleForMonth:Z

    const-string v1, "eligible_for_month"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    iget-boolean v0, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->isEligibleForPreview:Z

    const-string v1, "eligible_for_preview"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    iget-boolean v0, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->isViaNotification:Z

    const-string v1, "is_via_notification"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    iget-object v0, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->getCorResponse:Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;->getCor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->getCorResponse:Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;->getCor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cor"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->getCorResponse:Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;

    invoke-virtual {v0}, Lcom/amazon/bookwizard/service/GetCorRequest$GetCorResponse;->isInferred()Z

    move-result v0

    const-string v1, "cor_inferred"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 138
    iget-object p1, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->info:Lcom/amazon/bookwizard/service/LaunchInfo;

    const-string v0, "BookWizardLaunchTask"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flow."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->info:Lcom/amazon/bookwizard/service/LaunchInfo;

    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/bookwizard/service/Flow;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/bookwizard/util/M;->action(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_1
    iget-object p1, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->info:Lcom/amazon/bookwizard/service/LaunchInfo;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object p1

    if-nez p1, :cond_4

    .line 142
    :cond_2
    sget-object p1, Lcom/amazon/bookwizard/LaunchBookWizardTask;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->info:Lcom/amazon/bookwizard/service/LaunchInfo;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/amazon/bookwizard/service/LaunchInfo;->getFlow()Lcom/amazon/bookwizard/service/Flow;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    aput-object v3, v1, v2

    const-string v2, "[fluent] LaunchError: LaunchInfo=%s; Flow=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance p1, Lcom/amazon/bookwizard/service/FallbackLaunchInfo;

    invoke-direct {p1}, Lcom/amazon/bookwizard/service/FallbackLaunchInfo;-><init>()V

    invoke-static {p1}, Lcom/amazon/bookwizard/BookWizardPlugin;->setLaunchInfo(Lcom/amazon/bookwizard/service/LaunchInfo;)V

    .line 145
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/amazon/bookwizard/LaunchBookWizardTask;->startTime:J

    sub-long/2addr v1, v3

    const-string p1, "BookWizardLaunchTime"

    invoke-static {v0, p1, v1, v2}, Lcom/amazon/bookwizard/util/M;->timer(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
