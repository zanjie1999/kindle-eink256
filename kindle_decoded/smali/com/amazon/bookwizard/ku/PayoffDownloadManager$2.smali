.class Lcom/amazon/bookwizard/ku/PayoffDownloadManager$2;
.super Ljava/lang/Object;
.source "PayoffDownloadManager.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->downloadItems(Lcom/amazon/bookwizard/service/StepFlavor;Lcom/amazon/kindle/krx/application/IDeviceInformation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ku/PayoffDownloadManager;

.field final synthetic val$flavor:Lcom/amazon/bookwizard/service/StepFlavor;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ku/PayoffDownloadManager;Lcom/amazon/bookwizard/service/StepFlavor;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager$2;->this$0:Lcom/amazon/bookwizard/ku/PayoffDownloadManager;

    iput-object p2, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager$2;->val$flavor:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 73
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager$2;->this$0:Lcom/amazon/bookwizard/ku/PayoffDownloadManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->access$102(Lcom/amazon/bookwizard/ku/PayoffDownloadManager;Z)Z

    .line 74
    iget-object p1, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager$2;->this$0:Lcom/amazon/bookwizard/ku/PayoffDownloadManager;

    invoke-static {p1}, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->access$000(Lcom/amazon/bookwizard/ku/PayoffDownloadManager;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager$2;->val$flavor:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/bookwizard/data/DataProvider;->setPayoffRecs(Lcom/amazon/bookwizard/service/StepFlavor;Ljava/util/List;)V

    return-void
.end method
