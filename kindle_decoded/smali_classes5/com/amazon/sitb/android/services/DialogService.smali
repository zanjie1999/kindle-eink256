.class public Lcom/amazon/sitb/android/services/DialogService;
.super Ljava/lang/Object;
.source "DialogService.java"


# instance fields
.field private final applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private final readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

.field private final taskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/application/IApplicationManager;Lcom/amazon/kindle/krx/ui/IReaderUIManager;Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/sitb/android/services/DialogService;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 27
    iput-object p2, p0, Lcom/amazon/sitb/android/services/DialogService;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    .line 28
    iput-object p3, p0, Lcom/amazon/sitb/android/services/DialogService;->taskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/sitb/android/services/DialogService;)Lcom/amazon/kindle/krx/ui/IReaderUIManager;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/sitb/android/services/DialogService;->readerUIManager:Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    return-object p0
.end method


# virtual methods
.method public showDialog(II)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/amazon/sitb/android/services/DialogService;->taskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    new-instance v1, Lcom/amazon/sitb/android/services/DialogService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/sitb/android/services/DialogService$1;-><init>(Lcom/amazon/sitb/android/services/DialogService;II)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->postOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showNoWifiDialog()V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/amazon/sitb/android/services/DialogService;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    sget-object v1, Lcom/amazon/kindle/krx/application/KRXDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/KRXDialogType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->showDialog(Lcom/amazon/kindle/krx/application/KRXDialogType;Ljava/lang/String;)Z

    return-void
.end method
