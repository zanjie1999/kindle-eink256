.class public Lcom/amazon/sitb/android/model/DownloadStatusListenerFactory;
.super Ljava/lang/Object;
.source "DownloadStatusListenerFactory.java"


# instance fields
.field private final model:Lcom/amazon/sitb/android/model/UpsellModel;


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/model/UpsellModel;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/sitb/android/model/DownloadStatusListenerFactory;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    return-void
.end method


# virtual methods
.method public createListener(Ljava/lang/String;)Lcom/amazon/sitb/android/model/DownloadStatusListener;
    .locals 2

    .line 21
    new-instance v0, Lcom/amazon/sitb/android/model/DownloadStatusListener;

    iget-object v1, p0, Lcom/amazon/sitb/android/model/DownloadStatusListenerFactory;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-direct {v0, v1, p1}, Lcom/amazon/sitb/android/model/DownloadStatusListener;-><init>(Lcom/amazon/sitb/android/model/UpsellModel;Ljava/lang/String;)V

    return-object v0
.end method
