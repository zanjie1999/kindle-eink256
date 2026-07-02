.class final Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$expiredNotificationCellAlpha$2;
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$expiredNotificationCellAlpha$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()F
    .locals 4

    .line 83
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$expiredNotificationCellAlpha$2;->this$0:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter;->getActivity()Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/inapp/notifications/R$attr;->notification_cell_expired_alpha:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 85
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    return v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsAdapter$expiredNotificationCellAlpha$2;->invoke()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
