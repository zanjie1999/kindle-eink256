.class final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$emptyFeedMessage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "InAppNotificationsActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$emptyFeedMessage$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$emptyFeedMessage$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity$emptyFeedMessage$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/inapp/notifications/R$string;->inapp_notifications_empty_feed_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
