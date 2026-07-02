.class Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$2;
.super Ljava/lang/Object;
.source "FacebookShareTargetGridItem.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->openWebDialog(Landroid/app/Activity;Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$callingActivity:Landroid/app/Activity;

.field final synthetic val$retryCount:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;Landroid/app/Activity;Landroid/os/Bundle;I)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$2;->this$0:Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;

    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$2;->val$callingActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$2;->val$bundle:Landroid/os/Bundle;

    iput p4, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$2;->val$retryCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1

    .line 270
    invoke-virtual {p1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object p2

    sget-object p3, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    if-ne p2, p3, :cond_0

    .line 271
    invoke-virtual {p1, p0}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 272
    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$2;->this$0:Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;

    iget-object p3, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$2;->val$callingActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$2;->val$bundle:Landroid/os/Bundle;

    invoke-static {p2, p1, p3, v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->access$000(Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;Lcom/facebook/Session;Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 273
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object p2

    sget-object p3, Lcom/facebook/SessionState;->CLOSED:Lcom/facebook/SessionState;

    if-ne p2, p3, :cond_1

    .line 274
    invoke-virtual {p1, p0}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 275
    invoke-virtual {p1}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 276
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$2;->this$0:Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;

    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$2;->val$callingActivity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$2;->val$bundle:Landroid/os/Bundle;

    iget v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem$2;->val$retryCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, p2, p3, v0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;->access$100(Lcom/amazon/kindle/socialsharing/ui/gridItem/FacebookShareTargetGridItem;Landroid/app/Activity;Landroid/os/Bundle;I)V

    :cond_1
    :goto_0
    return-void
.end method
