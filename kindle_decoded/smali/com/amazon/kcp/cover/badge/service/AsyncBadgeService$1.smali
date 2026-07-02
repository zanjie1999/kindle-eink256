.class Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService$1;
.super Landroid/os/AsyncTask;
.source "AsyncBadgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;->bindBadges(Lcom/amazon/kcp/cover/badge/IBadgeable;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kindle/callback/ICallback;)V
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
        "Lcom/amazon/kcp/cover/badge/BadgeBinder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;

.field final synthetic val$badgeResourceChooser:Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;

.field final synthetic val$badgeable:Lcom/amazon/kcp/cover/badge/IBadgeable;

.field final synthetic val$completionCallback:Lcom/amazon/kindle/callback/ICallback;

.field final synthetic val$resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;Lcom/amazon/kcp/cover/badge/IBadgeable;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;Lcom/amazon/kindle/callback/ICallback;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService$1;->this$0:Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;

    iput-object p2, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService$1;->val$badgeable:Lcom/amazon/kcp/cover/badge/IBadgeable;

    iput-object p3, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService$1;->val$resources:Landroid/content/res/Resources;

    iput-object p4, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService$1;->val$badgeResourceChooser:Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;

    iput-object p5, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService$1;->val$completionCallback:Lcom/amazon/kindle/callback/ICallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/amazon/kcp/cover/badge/BadgeBinder;
    .locals 3

    .line 47
    iget-object p1, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService$1;->this$0:Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;

    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService$1;->val$badgeable:Lcom/amazon/kcp/cover/badge/IBadgeable;

    iget-object v1, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService$1;->val$resources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService$1;->val$badgeResourceChooser:Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/kcp/cover/badge/service/BadgeService;->generateBinder(Lcom/amazon/kcp/cover/badge/IBadgeable;Landroid/content/res/Resources;Lcom/amazon/kcp/cover/badge/BadgeResourceChooser;)Lcom/amazon/kcp/cover/badge/BadgeBinder;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService$1;->doInBackground([Ljava/lang/Void;)Lcom/amazon/kcp/cover/badge/BadgeBinder;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/amazon/kcp/cover/badge/BadgeBinder;)V
    .locals 1

    .line 52
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/cover/badge/BadgeBinder;->bind()V

    .line 58
    iget-object p1, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService$1;->this$0:Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;

    invoke-static {p1}, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;->access$000(Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService$1;->val$badgeable:Lcom/amazon/kcp/cover/badge/IBadgeable;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p1, p0, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService$1;->val$completionCallback:Lcom/amazon/kindle/callback/ICallback;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 61
    invoke-interface {p1, v0}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 44
    check-cast p1, Lcom/amazon/kcp/cover/badge/BadgeBinder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/cover/badge/service/AsyncBadgeService$1;->onPostExecute(Lcom/amazon/kcp/cover/badge/BadgeBinder;)V

    return-void
.end method
