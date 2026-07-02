.class Lcom/amazon/android/system/PermissionsManager$1;
.super Ljava/lang/Object;
.source "PermissionsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/system/PermissionsManager;->onActivityResult(IILandroid/content/Intent;Lcom/amazon/kindle/scan/ScanLocalContentUtils;Lcom/amazon/kcp/util/fastmetrics/RecordDirectoryPermissionMetrics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/system/PermissionsManager;

.field final synthetic val$scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;


# direct methods
.method constructor <init>(Lcom/amazon/android/system/PermissionsManager;Lcom/amazon/kindle/scan/ScanLocalContentUtils;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/amazon/android/system/PermissionsManager$1;->this$0:Lcom/amazon/android/system/PermissionsManager;

    iput-object p2, p0, Lcom/amazon/android/system/PermissionsManager$1;->val$scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 292
    iget-object v0, p0, Lcom/amazon/android/system/PermissionsManager$1;->val$scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    iget-object v1, p0, Lcom/amazon/android/system/PermissionsManager$1;->this$0:Lcom/amazon/android/system/PermissionsManager;

    invoke-static {v1}, Lcom/amazon/android/system/PermissionsManager;->access$000(Lcom/amazon/android/system/PermissionsManager;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->addLocalContentPath(Ljava/lang/String;Z)V

    .line 293
    iget-object v0, p0, Lcom/amazon/android/system/PermissionsManager$1;->val$scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    iget-object v1, p0, Lcom/amazon/android/system/PermissionsManager$1;->this$0:Lcom/amazon/android/system/PermissionsManager;

    invoke-static {v1}, Lcom/amazon/android/system/PermissionsManager;->access$000(Lcom/amazon/android/system/PermissionsManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->resetLastScannedForPath(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/amazon/android/system/PermissionsManager$1;->val$scanLocalContentUtils:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->scanForLocalContent(Z)V

    return-void
.end method
