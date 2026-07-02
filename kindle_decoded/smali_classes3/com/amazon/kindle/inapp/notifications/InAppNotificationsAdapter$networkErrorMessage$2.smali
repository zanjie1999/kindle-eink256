.class final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$networkErrorMessage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "InAppNotificationsAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;-><init>(Ljava/util/List;Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;)V
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
.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$networkErrorMessage$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$networkErrorMessage$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$networkErrorMessage$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->access$getContext$p(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/inapp/notifications/R$string;->notifications_network_error_dialog_message:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
