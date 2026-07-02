.class Lcom/localytics/android/LocalyticsSession$SessionHandler$2;
.super Ljava/lang/Object;
.source "LocalyticsSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocalyticsSession$SessionHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/LocalyticsSession$SessionHandler;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsSession$SessionHandler;Landroid/os/Message;)V
    .locals 0

    .line 1320
    iput-object p1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$2;->this$0:Lcom/localytics/android/LocalyticsSession$SessionHandler;

    iput-object p2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$2;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1324
    iget-object v0, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$2;->this$0:Lcom/localytics/android/LocalyticsSession$SessionHandler;

    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$2;->val$msg:Landroid/os/Message;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->open(ZLjava/util/Map;)V

    return-void
.end method
