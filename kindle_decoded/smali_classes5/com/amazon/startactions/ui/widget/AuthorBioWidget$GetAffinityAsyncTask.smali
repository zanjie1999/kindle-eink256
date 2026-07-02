.class Lcom/amazon/startactions/ui/widget/AuthorBioWidget$GetAffinityAsyncTask;
.super Landroid/os/AsyncTask;
.source "AuthorBioWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/AuthorBioWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetAffinityAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final asin:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/AuthorBioWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/ui/widget/AuthorBioWidget;Ljava/lang/String;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$GetAffinityAsyncTask;->this$0:Lcom/amazon/startactions/ui/widget/AuthorBioWidget;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 517
    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$GetAffinityAsyncTask;->asin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 524
    :try_start_0
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$GetAffinityAsyncTask;->asin:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$GetAffinityAsyncTask;->this$0:Lcom/amazon/startactions/ui/widget/AuthorBioWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/AuthorBioListWidgetDef;->refTagFeatureIdPartial:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->getFollowStatus(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Lcom/amazon/ea/affinity/AuthorFollowServiceFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 526
    invoke-static {}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Subscription get failed."

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 512
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$GetAffinityAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$GetAffinityAsyncTask;->asin:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/ea/affinity/AuthorFollowServiceHelper;->storeFollowStatus(Ljava/lang/String;Z)V

    .line 542
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$GetAffinityAsyncTask;->this$0:Lcom/amazon/startactions/ui/widget/AuthorBioWidget;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$GetAffinityAsyncTask;->asin:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget;->access$200(Lcom/amazon/startactions/ui/widget/AuthorBioWidget;Ljava/lang/String;Z)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 512
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$GetAffinityAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
