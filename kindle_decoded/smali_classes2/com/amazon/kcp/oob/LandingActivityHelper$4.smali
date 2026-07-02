.class Lcom/amazon/kcp/oob/LandingActivityHelper$4;
.super Ljava/lang/Object;
.source "LandingActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/oob/LandingActivityHelper;->showExternalStoragePermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/oob/LandingActivityHelper;

.field final synthetic val$onFailure:Ljava/lang/Runnable;

.field final synthetic val$onSuccess:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/oob/LandingActivityHelper;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/amazon/kcp/oob/LandingActivityHelper$4;->this$0:Lcom/amazon/kcp/oob/LandingActivityHelper;

    iput-object p2, p0, Lcom/amazon/kcp/oob/LandingActivityHelper$4;->val$onSuccess:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/amazon/kcp/oob/LandingActivityHelper$4;->val$onFailure:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/amazon/kcp/oob/LandingActivityHelper$4;->this$0:Lcom/amazon/kcp/oob/LandingActivityHelper;

    invoke-static {p1}, Lcom/amazon/kcp/oob/LandingActivityHelper;->access$000(Lcom/amazon/kcp/oob/LandingActivityHelper;)Lcom/amazon/kcp/redding/ReddingActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/redding/ReddingActivity;->getPermissionsManager()Lcom/amazon/android/system/PermissionsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/oob/LandingActivityHelper$4;->val$onSuccess:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/amazon/kcp/oob/LandingActivityHelper$4;->val$onFailure:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/android/system/PermissionsManager;->requestExternalStoragePermissions(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
