.class public Lcom/amazon/sitb/android/model/DownloadStatusListener;
.super Ljava/lang/Object;
.source "DownloadStatusListener.java"

# interfaces
.implements Lcom/amazon/kindle/krx/download/IDownloadStatusListener;


# instance fields
.field private final asin:Ljava/lang/String;

.field private discarded:Z

.field private final model:Lcom/amazon/sitb/android/model/UpsellModel;


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/model/UpsellModel;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/sitb/android/model/DownloadStatusListener;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    .line 19
    iput-object p2, p0, Lcom/amazon/sitb/android/model/DownloadStatusListener;->asin:Ljava/lang/String;

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/amazon/sitb/android/model/DownloadStatusListener;->discarded:Z

    return-void
.end method


# virtual methods
.method public discard()V
    .locals 1

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/amazon/sitb/android/model/DownloadStatusListener;->discarded:Z

    return-void
.end method

.method public onFailure()V
    .locals 2

    .line 35
    iget-boolean v0, p0, Lcom/amazon/sitb/android/model/DownloadStatusListener;->discarded:Z

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/amazon/sitb/android/model/DownloadStatusListener;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    iget-object v1, p0, Lcom/amazon/sitb/android/model/DownloadStatusListener;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/model/UpsellModel;->downloadFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProgressChange(I)V
    .locals 2

    .line 44
    iget-boolean v0, p0, Lcom/amazon/sitb/android/model/DownloadStatusListener;->discarded:Z

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/amazon/sitb/android/model/DownloadStatusListener;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    iget-object v1, p0, Lcom/amazon/sitb/android/model/DownloadStatusListener;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/sitb/android/model/UpsellModel;->downloadProgress(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 26
    iget-boolean v0, p0, Lcom/amazon/sitb/android/model/DownloadStatusListener;->discarded:Z

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/amazon/sitb/android/model/DownloadStatusListener;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    iget-object v1, p0, Lcom/amazon/sitb/android/model/DownloadStatusListener;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/model/UpsellModel;->downloadSucceeded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
