.class Lcom/facebook/widget/LoginButton$1;
.super Landroid/os/AsyncTask;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/LoginButton;->checkNuxSettings()V
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
        "Lcom/facebook/internal/Utility$FetchedAppSettings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/LoginButton;

.field final synthetic val$appId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/widget/LoginButton;Ljava/lang/String;)V
    .locals 0

    .line 674
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$1;->this$0:Lcom/facebook/widget/LoginButton;

    iput-object p2, p0, Lcom/facebook/widget/LoginButton$1;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/facebook/internal/Utility$FetchedAppSettings;
    .locals 1

    .line 677
    iget-object p1, p0, Lcom/facebook/widget/LoginButton$1;->val$appId:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 674
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/LoginButton$1;->doInBackground([Ljava/lang/Void;)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/facebook/internal/Utility$FetchedAppSettings;)V
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/facebook/widget/LoginButton$1;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-static {v0, p1}, Lcom/facebook/widget/LoginButton;->access$300(Lcom/facebook/widget/LoginButton;Lcom/facebook/internal/Utility$FetchedAppSettings;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 674
    check-cast p1, Lcom/facebook/internal/Utility$FetchedAppSettings;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/LoginButton$1;->onPostExecute(Lcom/facebook/internal/Utility$FetchedAppSettings;)V

    return-void
.end method
