.class Lcom/amazon/bookwizard/ku/PayoffDownloadManager$1;
.super Ljava/lang/Object;
.source "PayoffDownloadManager.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->downloadItems(Lcom/amazon/bookwizard/service/StepFlavor;Lcom/amazon/kindle/krx/application/IDeviceInformation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/amazon/bookwizard/service/PayoffViewData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/ku/PayoffDownloadManager;

.field final synthetic val$flavor:Lcom/amazon/bookwizard/service/StepFlavor;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/ku/PayoffDownloadManager;Lcom/amazon/bookwizard/service/StepFlavor;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager$1;->this$0:Lcom/amazon/bookwizard/ku/PayoffDownloadManager;

    iput-object p2, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager$1;->val$flavor:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/bookwizard/service/PayoffViewData;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager$1;->this$0:Lcom/amazon/bookwizard/ku/PayoffDownloadManager;

    invoke-static {v0}, Lcom/amazon/bookwizard/ku/PayoffDownloadManager;->access$000(Lcom/amazon/bookwizard/ku/PayoffDownloadManager;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/bookwizard/ku/PayoffDownloadManager$1;->val$flavor:Lcom/amazon/bookwizard/service/StepFlavor;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/PayoffViewData;->getBooks()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/bookwizard/data/DataProvider;->setPayoffRecs(Lcom/amazon/bookwizard/service/StepFlavor;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 65
    check-cast p1, Lcom/amazon/bookwizard/service/PayoffViewData;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/ku/PayoffDownloadManager$1;->onResponse(Lcom/amazon/bookwizard/service/PayoffViewData;)V

    return-void
.end method
