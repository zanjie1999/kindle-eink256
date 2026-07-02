.class Lcom/localytics/android/LocalyticsSession$UploadHandler$1;
.super Ljava/lang/Object;
.source "LocalyticsSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocalyticsSession$UploadHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/LocalyticsSession$UploadHandler;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsSession$UploadHandler;)V
    .locals 0

    .line 3173
    iput-object p1, p0, Lcom/localytics/android/LocalyticsSession$UploadHandler$1;->this$0:Lcom/localytics/android/LocalyticsSession$UploadHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3176
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$UploadHandler$1;->this$0:Lcom/localytics/android/LocalyticsSession$UploadHandler;

    iget-object v0, v0, Lcom/localytics/android/LocalyticsSession$UploadHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    invoke-static {v0}, Lcom/localytics/android/LocalyticsSession$UploadHandler;->deleteBlobsAndSessions(Lcom/localytics/android/LocalyticsProvider;)V

    return-void
.end method
