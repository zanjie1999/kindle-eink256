.class Lcom/amazon/ku/KuInterstitialPageController$1;
.super Ljava/lang/Object;
.source "KuInterstitialPageController.java"

# interfaces
.implements Lcom/amazon/ku/service/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/KuInterstitialPageController;->showInterstitialPageIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/ku/service/ResponseListener<",
        "Lcom/amazon/ku/data/KuInterstitialPageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ku/KuInterstitialPageController;

.field final synthetic val$kuBooks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/ku/KuInterstitialPageController;Ljava/util/List;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController$1;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    iput-object p2, p0, Lcom/amazon/ku/KuInterstitialPageController$1;->val$kuBooks:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/ku/data/KuInterstitialPageInfo;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 2

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 216
    invoke-static {}, Lcom/amazon/ku/KuInterstitialPageController;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to get page info; skipping"

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController$1;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    invoke-static {p1}, Lcom/amazon/ku/KuInterstitialPageController;->access$100(Lcom/amazon/ku/KuInterstitialPageController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 221
    :cond_0
    sget-object v0, Lcom/amazon/ku/KuInterstitialPageController$7;->$SwitchMap$com$amazon$ku$data$KuInterstitialPageInfo$ShowingStatus:[I

    invoke-virtual {p1}, Lcom/amazon/ku/data/KuInterstitialPageInfo;->getShowPageStatus()Lcom/amazon/ku/data/KuInterstitialPageInfo$ShowingStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 230
    :cond_1
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController$1;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    invoke-static {p1}, Lcom/amazon/ku/KuInterstitialPageController;->access$600(Lcom/amazon/ku/KuInterstitialPageController;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "NeverShowKuInterstitialPage"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 236
    :goto_0
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController$1;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    invoke-static {p1}, Lcom/amazon/ku/KuInterstitialPageController;->access$100(Lcom/amazon/ku/KuInterstitialPageController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/amazon/ku/KuInterstitialPageController$1;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    invoke-static {v0, p1}, Lcom/amazon/ku/KuInterstitialPageController;->access$202(Lcom/amazon/ku/KuInterstitialPageController;Lcom/amazon/ku/data/KuInterstitialPageInfo;)Lcom/amazon/ku/data/KuInterstitialPageInfo;

    .line 224
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController$1;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/amazon/ku/KuInterstitialPageController;->access$302(Lcom/amazon/ku/KuInterstitialPageController;J)J

    .line 225
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController$1;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    sget-object v0, Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;->INTERSTITIAL_SCREEN:Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    invoke-static {p1, v0}, Lcom/amazon/ku/KuInterstitialPageController;->access$402(Lcom/amazon/ku/KuInterstitialPageController;Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;)Lcom/amazon/ku/data/KuInterstitialPageInfo$Screen;

    .line 226
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController$1;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    invoke-static {p1}, Lcom/amazon/ku/KuInterstitialPageController;->access$500(Lcom/amazon/ku/KuInterstitialPageController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 227
    iget-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController$1;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    iget-object p2, p0, Lcom/amazon/ku/KuInterstitialPageController$1;->val$kuBooks:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/amazon/ku/KuInterstitialPageController;->showInterstitialPageDialog(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 0

    .line 212
    check-cast p1, Lcom/amazon/ku/data/KuInterstitialPageInfo;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/ku/KuInterstitialPageController$1;->onResponse(Lcom/amazon/ku/data/KuInterstitialPageInfo;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    return-void
.end method
