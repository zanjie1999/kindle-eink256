.class final Lcom/amazon/kindle/scan/ScanLocalContentUtils$scanForLocalContent$1;
.super Ljava/lang/Object;
.source "ScanLocalContentUtils.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/scan/ScanLocalContentUtils;->scanForLocalContent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $fullScanRequired:Z

.field final synthetic this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/scan/ScanLocalContentUtils;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$scanForLocalContent$1;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    iput-boolean p2, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$scanForLocalContent$1;->$fullScanRequired:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "ScanLocalContentUtils scan local content"

    .line 204
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 205
    iget-object v1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$scanForLocalContent$1;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    iget-boolean v2, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$scanForLocalContent$1;->$fullScanRequired:Z

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->scanForLocalContentImpl(Z)V

    const-string v1, "ScanLocalContentUtils  scan local content"

    const/4 v2, 0x0

    .line 206
    invoke-static {v1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 207
    iget-object v1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$scanForLocalContent$1;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    invoke-static {v1, v0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->access$setScanCompleted$p(Lcom/amazon/kindle/scan/ScanLocalContentUtils;Z)V

    .line 208
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$scanForLocalContent$1;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    invoke-virtual {v0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->getFullScanRedriveHelper()Lcom/amazon/kindle/scan/FullScanRedriveHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/scan/FullScanRedriveHelper;->setScanFinished()V

    return-void
.end method
