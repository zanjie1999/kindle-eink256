.class public Lcom/audible/android/kcp/download/notification/DownloadNotificationViewFactory;
.super Ljava/lang/Object;
.source "DownloadNotificationViewFactory.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationViewFactory;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public get()Landroid/widget/RemoteViews;
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationViewFactory;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/audible/android/kcp/download/notification/DownloadNotificationViewFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/hushpuppy/redding/R$layout;->download_notification:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
