.class Lcom/amazon/kindle/cms/ContentManagementSystem$1;
.super Landroid/os/AsyncTask;
.source "ContentManagementSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/cms/ContentManagementSystem;->addGoodreadsRedirectVerb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/ContentManagementSystem;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$1;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 194
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/ContentManagementSystem$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 198
    new-instance p1, Lcom/amazon/kindle/cms/ContentManagementSystem$1$1;

    const-string v0, "Goodreads Redirect Verb"

    invoke-direct {p1, p0, v0}, Lcom/amazon/kindle/cms/ContentManagementSystem$1$1;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem$1;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1}, Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;->run()V

    const/4 p1, 0x0

    return-object p1
.end method
