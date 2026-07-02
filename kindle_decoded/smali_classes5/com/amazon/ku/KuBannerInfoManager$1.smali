.class Lcom/amazon/ku/KuBannerInfoManager$1;
.super Ljava/lang/Object;
.source "KuBannerInfoManager.java"

# interfaces
.implements Lcom/amazon/ku/service/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ku/KuBannerInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/ku/service/ResponseListener<",
        "Lcom/amazon/ku/data/KuBannerInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ku/KuBannerInfoManager;


# direct methods
.method constructor <init>(Lcom/amazon/ku/KuBannerInfoManager;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/ku/KuBannerInfoManager$1;->this$0:Lcom/amazon/ku/KuBannerInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/ku/data/KuBannerInfo;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 2

    .line 46
    iget-object p2, p0, Lcom/amazon/ku/KuBannerInfoManager$1;->this$0:Lcom/amazon/ku/KuBannerInfoManager;

    monitor-enter p2

    if-eqz p1, :cond_0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ku/KuBannerInfoManager$1;->this$0:Lcom/amazon/ku/KuBannerInfoManager;

    invoke-static {v0, p1}, Lcom/amazon/ku/KuBannerInfoManager;->access$102(Lcom/amazon/ku/KuBannerInfoManager;Lcom/amazon/ku/data/KuBannerInfo;)Lcom/amazon/ku/data/KuBannerInfo;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/amazon/ku/KuBannerInfoManager$1;->this$0:Lcom/amazon/ku/KuBannerInfoManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ku/KuBannerInfoManager;->access$202(Lcom/amazon/ku/KuBannerInfoManager;Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;)Lcom/amazon/ku/service/KuBannerInfoDownloadRequest;

    .line 51
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/amazon/ku/data/KuBannerInfo;->getBannerShownStatus()Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    move-result-object p1

    sget-object p2, Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;->NEVER:Lcom/amazon/ku/data/KuBannerInfo$BannerShowingStatus;

    if-ne p1, p2, :cond_1

    .line 53
    iget-object p1, p0, Lcom/amazon/ku/KuBannerInfoManager$1;->this$0:Lcom/amazon/ku/KuBannerInfoManager;

    invoke-static {p1}, Lcom/amazon/ku/KuBannerInfoManager;->access$300(Lcom/amazon/ku/KuBannerInfoManager;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "NeverShowBanner"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 51
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/amazon/ku/data/KuBannerInfo;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/ku/KuBannerInfoManager$1;->onResponse(Lcom/amazon/ku/data/KuBannerInfo;Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;)V

    return-void
.end method
