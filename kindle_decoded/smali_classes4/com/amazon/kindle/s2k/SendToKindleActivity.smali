.class public Lcom/amazon/kindle/s2k/SendToKindleActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "SendToKindleActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;
    }
.end annotation


# static fields
.field private static final MAX_TITLE_AUTHOR_LENGTH:I = 0x100

.field private static final METRICS_EVENT_ALERT_CONTACT_US:Ljava/lang/String; = "AlertContactUs"

.field private static final METRICS_EVENT_INTERNAL_ERROR:Ljava/lang/String; = "InternalError"

.field private static final METRICS_EVENT_NETWORK_ERROR:Ljava/lang/String; = "NetworkError"

.field private static final METRICS_EVENT_S2KACTIVITY_STARTED:Ljava/lang/String; = "S2KActivityStarted"

.field private static final METRICS_EVENT_S2K_INSTALLED:Ljava/lang/String; = "S2KInstalled"

.field private static final METRICS_EVENT_SERVER_ERROR:Ljava/lang/String; = "ServerError"

.field private static final METRIC_CLASS_NAME:Ljava/lang/String; = "SendToKindleActivity"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private archiveButtonListener:Landroid/view/View$OnClickListener;

.field private cancelButtonListener:Landroid/view/View$OnClickListener;

.field private editTitleAndAuthorButtonListener:Landroid/view/View$OnClickListener;

.field private m_authorTextWatcher:Landroid/text/TextWatcher;

.field private m_deliveryMechanism:Ljava/lang/String;

.field private m_deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/s2k/KindleDevice;",
            ">;"
        }
    .end annotation
.end field

.field private m_deviceListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Lcom/amazon/kindle/s2k/KindleDevice;",
            ">;"
        }
    .end annotation
.end field

.field private m_deviceListView:Landroid/widget/ListView;

.field private m_deviceLoadProgressDialog:Landroid/app/ProgressDialog;

.field private m_deviceSelection:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_documentAuthor:Ljava/lang/String;

.field private m_documentTitle:Ljava/lang/String;

.field private m_file:Ljava/io/File;

.field private m_fileExtension:Ljava/lang/String;

.field private m_handler:Landroid/os/Handler;

.field private m_inputFilter:Landroid/text/InputFilter;

.field private m_isArchiveSelected:Z

.field private m_isDeviceSelected:Z

.field private m_isTitleAndAuthorEditable:Z

.field private m_outputFormat:Ljava/lang/String;

.field private m_serviceIntent:Landroid/content/Intent;

.field private m_targetDevices:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_titleTextWatcher:Landroid/text/TextWatcher;

.field private m_wifiSelected:Z

.field private reddingAppVersion:Ljava/lang/String;

.field private sendButtonListener:Landroid/view/View$OnClickListener;

.field private stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

.field private wanButtonListener:Landroid/view/View$OnClickListener;

.field private wifiButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 658
    new-instance v0, Lcom/amazon/kindle/s2k/SendToKindleActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity$1;-><init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->wifiButtonListener:Landroid/view/View$OnClickListener;

    .line 680
    new-instance v0, Lcom/amazon/kindle/s2k/SendToKindleActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity$2;-><init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->wanButtonListener:Landroid/view/View$OnClickListener;

    .line 705
    new-instance v0, Lcom/amazon/kindle/s2k/SendToKindleActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity$3;-><init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->archiveButtonListener:Landroid/view/View$OnClickListener;

    .line 726
    new-instance v0, Lcom/amazon/kindle/s2k/SendToKindleActivity$4;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity$4;-><init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->editTitleAndAuthorButtonListener:Landroid/view/View$OnClickListener;

    .line 759
    new-instance v0, Lcom/amazon/kindle/s2k/SendToKindleActivity$5;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity$5;-><init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->cancelButtonListener:Landroid/view/View$OnClickListener;

    .line 768
    new-instance v0, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity$6;-><init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->sendButtonListener:Landroid/view/View$OnClickListener;

    .line 843
    new-instance v0, Lcom/amazon/kindle/s2k/SendToKindleActivity$7;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity$7;-><init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_inputFilter:Landroid/text/InputFilter;

    .line 877
    new-instance v0, Lcom/amazon/kindle/s2k/SendToKindleActivity$8;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity$8;-><init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_titleTextWatcher:Landroid/text/TextWatcher;

    .line 896
    new-instance v0, Lcom/amazon/kindle/s2k/SendToKindleActivity$9;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity$9;-><init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_authorTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/util/Vector;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_targetDevices:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/amazon/kindle/s2k/SendToKindleActivity;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_targetDevices:Ljava/util/Vector;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_isDeviceSelected:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Lcom/amazon/kindle/s2k/SendToKindlePreferences;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/util/List;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deliveryMechanism:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/amazon/kindle/s2k/SendToKindleActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deliveryMechanism:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_documentTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/amazon/kindle/s2k/SendToKindleActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_documentTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_documentAuthor:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/amazon/kindle/s2k/SendToKindleActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_documentAuthor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/content/Intent;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_serviceIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_outputFormat:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->reddingAppVersion:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_wifiSelected:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_fileExtension:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/kindle/s2k/SendToKindleActivity;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_wifiSelected:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/amazon/kindle/s2k/SendToKindleActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->showDialogSafely(Landroid/app/AlertDialog;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceLoadProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/os/Handler;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->loadDevices()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_isArchiveSelected:Z

    return p0
.end method

.method static synthetic access$402(Lcom/amazon/kindle/s2k/SendToKindleActivity;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_isArchiveSelected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_isTitleAndAuthorEditable:Z

    return p0
.end method

.method static synthetic access$502(Lcom/amazon/kindle/s2k/SendToKindleActivity;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_isTitleAndAuthorEditable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/text/InputFilter;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_inputFilter:Landroid/text/InputFilter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/text/TextWatcher;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_titleTextWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic access$800(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/text/TextWatcher;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_authorTextWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/io/File;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_file:Ljava/io/File;

    return-object p0
.end method

.method private callGetListOfOwnedDevices()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceLoadProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 221
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceLoadProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 222
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 223
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceLoadProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 224
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceLoadProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/s2k/R$string;->deviceLoadText:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceLoadProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 230
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;-><init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;Lcom/amazon/kindle/s2k/SendToKindleActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 231
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private checkRegisteredUserName()Z
    .locals 6

    .line 629
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 631
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/s2k/R$string;->notSignedInErrorTitle:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 632
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/s2k/R$string;->notSignedInErrorText:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 631
    invoke-virtual {p0, v0, v2}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->showAlertMsg(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    const-string v2, "UserName"

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAuthenticationManager;->getUserName()Ljava/lang/String;

    move-result-object v3

    .line 638
    iput-object v3, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_documentAuthor:Ljava/lang/String;

    .line 639
    sget v4, Lcom/amazon/kindle/s2k/R$id;->author_edit_text:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 640
    iget-object v5, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_documentAuthor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x2

    if-eqz v0, :cond_2

    const-string v5, ""

    .line 642
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 648
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 651
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 652
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    const-string v2, "User in STK settings does not match with current user. Removing devices from STK settings..."

    invoke-static {v0, v4, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    const-string v2, "NumOfDevices"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->putInt(Ljava/lang/String;I)Z

    goto :goto_1

    .line 645
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 646
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    const-string v1, "Setting current user in STK settings"

    invoke-static {v0, v4, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private continueBuildActivity()V
    .locals 5

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 184
    invoke-direct {p0, v0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->readIntentExtras(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->checkRegisteredUserName()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->setContentLayout()V

    .line 200
    invoke-direct {p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->callGetListOfOwnedDevices()V

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kindle/s2k/SendToKindleService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_serviceIntent:Landroid/content/Intent;

    .line 205
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v3, "SendToKindleActivity"

    const-string v4, "S2KActivityStarted"

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;Ljava/util/Map;)V

    .line 208
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reporting metric : SendToKindleActivity:S2KActivityStarted:Android_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private getFilePathFromContentURI(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    const-string v0, "_size"

    const-string v1, "_data"

    .line 296
    sget-object v2, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFilePathFromContentURI - received contentUri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v2, v4, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x0

    .line 304
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/16 v5, 0x8

    if-eqz v3, :cond_16

    .line 306
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_e

    :cond_0
    const-string v6, "_display_name"

    .line 312
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 313
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 315
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 317
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 318
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 320
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    if-eqz v6, :cond_14

    if-nez v7, :cond_1

    goto/16 :goto_d

    .line 329
    :cond_1
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v10

    const-string v8, "external"

    .line 330
    invoke-static {v8}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v8, "%s LIKE \'%%%s\' AND %s = \'%s\'"

    const/4 v14, 0x4

    new-array v11, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v1, v11, v15

    const/4 v12, 0x1

    aput-object v6, v11, v12

    aput-object v0, v11, v4

    const/4 v0, 0x3

    aput-object v7, v11, v0

    .line 331
    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 334
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-nez v3, :cond_3

    .line 338
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find the contentUri in external storage: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v3, :cond_2

    .line 403
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v2

    .line 342
    :cond_3
    :try_start_2
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 343
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 345
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v4, v2

    move-object v6, v4

    goto/16 :goto_4

    .line 349
    :cond_4
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    const-string v1, "File cannot be scanned by Content Resolver in external storage."

    invoke-static {v0, v14, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "r"

    move-object/from16 v4, p1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-nez v0, :cond_6

    .line 354
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    const-string v1, "Cannot get the parcel file descriptor."

    invoke-static {v0, v5, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v3, :cond_5

    .line 403
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v2

    .line 357
    :cond_6
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 358
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 359
    :try_start_4
    invoke-static {}, Lcom/amazon/kindle/s2k/STKUtils;->getS2KCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    .line 380
    :cond_7
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    const-string v4, "Cannot find the s2k cache directory"

    invoke-static {v0, v5, v4}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v3, :cond_8

    .line 403
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 408
    :cond_8
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 415
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v2

    .line 362
    :cond_9
    :goto_1
    :try_start_6
    invoke-static {v6}, Lcom/amazon/kindle/s2k/STKUtils;->getRelativeFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 363
    invoke-static {v4}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 364
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The file path from Content Provider is wrong: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v14, v4}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v3, :cond_a

    .line 403
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 408
    :cond_a
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 415
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object v2

    .line 368
    :cond_b
    :try_start_8
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 370
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/16 v6, 0x1000

    :try_start_9
    new-array v6, v6, [B

    .line 373
    :goto_3
    invoke-virtual {v1, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_c

    .line 375
    invoke-virtual {v4, v6, v15, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_3

    :cond_c
    move-object v6, v4

    move-object v4, v1

    move-object v1, v0

    .line 386
    :goto_4
    :try_start_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_10

    .line 389
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read the file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object/from16 v7, p0

    .line 390
    :try_start_b
    iget-object v0, v7, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_file:Ljava/io/File;

    invoke-static {v0}, Lcom/amazon/kindle/s2k/STKUtils;->deleteFileInS2KCacheDirectory(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v3, :cond_d

    .line 403
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v4, :cond_e

    .line 408
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_e
    :goto_5
    if-eqz v6, :cond_f

    .line 412
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_7

    .line 415
    :goto_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    :goto_7
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_c

    :cond_10
    move-object/from16 v7, p0

    if-eqz v3, :cond_11

    .line 403
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v4, :cond_12

    .line 408
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_9

    :cond_12
    :goto_8
    if-eqz v6, :cond_13

    .line 412
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_a

    .line 415
    :goto_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_13
    :goto_a
    move-object v2, v1

    goto/16 :goto_15

    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    :goto_b
    move-object v2, v3

    move-object v1, v4

    goto/16 :goto_17

    :catch_5
    move-exception v0

    move-object/from16 v7, p0

    :goto_c
    move-object v1, v4

    move-object v4, v6

    goto/16 :goto_12

    :catchall_2
    move-exception v0

    move-object/from16 v7, p0

    goto/16 :goto_16

    :catch_6
    move-exception v0

    move-object/from16 v7, p0

    goto/16 :goto_12

    :catchall_3
    move-exception v0

    move-object/from16 v7, p0

    move-object v6, v2

    goto :goto_10

    :catch_7
    move-exception v0

    move-object/from16 v7, p0

    move-object v4, v2

    goto/16 :goto_12

    :cond_14
    :goto_d
    move-object/from16 v7, p0

    move-object/from16 v4, p1

    .line 324
    :try_start_e
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot query the contentUri since display name or size not exists: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-static {v0, v5, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    if-eqz v3, :cond_15

    .line 403
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_15
    return-object v2

    :catchall_4
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_f

    :catch_8
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_11

    :cond_16
    :goto_e
    move-object/from16 v7, p0

    move-object/from16 v4, p1

    .line 308
    :try_start_f
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot query the contentUri"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v3, :cond_17

    .line 403
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_17
    return-object v2

    :catchall_5
    move-exception v0

    :goto_f
    move-object v1, v2

    move-object v6, v1

    :goto_10
    move-object v2, v3

    goto :goto_17

    :catch_9
    move-exception v0

    :goto_11
    move-object v1, v2

    move-object v4, v1

    goto :goto_12

    :catchall_6
    move-exception v0

    move-object/from16 v7, p0

    move-object v3, v0

    move-object v1, v2

    move-object v6, v1

    goto :goto_18

    :catch_a
    move-exception v0

    move-object/from16 v7, p0

    move-object v1, v2

    move-object v3, v1

    move-object v4, v3

    .line 396
    :goto_12
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    if-eqz v3, :cond_18

    .line 403
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_18
    if-eqz v1, :cond_19

    .line 408
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_13

    :catch_b
    move-exception v0

    goto :goto_14

    :cond_19
    :goto_13
    if-eqz v4, :cond_1a

    .line 412
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_15

    .line 415
    :goto_14
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1a
    :goto_15
    return-object v2

    :catchall_7
    move-exception v0

    :goto_16
    move-object v2, v3

    move-object v6, v4

    :goto_17
    move-object v3, v0

    :goto_18
    if-eqz v2, :cond_1b

    .line 403
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1b
    if-eqz v1, :cond_1c

    .line 408
    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_19

    :catch_c
    move-exception v0

    goto :goto_1a

    :cond_1c
    :goto_19
    if-eqz v6, :cond_1d

    .line 412
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_1b

    .line 415
    :goto_1a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 417
    :cond_1d
    :goto_1b
    throw v3
.end method

.method private loadDevices()V
    .locals 11

    .line 982
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    const-string v1, "NumOfDevices"

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 983
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceList:Ljava/util/List;

    .line 984
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceSelection:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 986
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceSelection:Ljava/util/HashMap;

    :cond_0
    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-lez v0, :cond_7

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_5

    .line 994
    new-instance v6, Lcom/amazon/kindle/s2k/KindleDevice;

    invoke-direct {v6}, Lcom/amazon/kindle/s2k/KindleDevice;-><init>()V

    .line 995
    iget-object v7, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Device["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "].deviceName"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazon/kindle/s2k/KindleDevice;->setDeviceName(Ljava/lang/String;)V

    .line 996
    iget-object v7, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "].deviceSerialNumber"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/amazon/kindle/s2k/KindleDevice;->setDeviceSerialNumber(Ljava/lang/String;)V

    .line 997
    iget-object v7, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "].isPdfCapable"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amazon/kindle/s2k/KindleDevice;->setIsPdfCapable(Z)V

    .line 998
    iget-object v7, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "].isWanCapable"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amazon/kindle/s2k/KindleDevice;->setIsWanCapable(Z)V

    .line 999
    iget-object v7, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "].isWifiCapable"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amazon/kindle/s2k/KindleDevice;->setIsWifiCapable(Z)V

    .line 1002
    iget-object v7, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceSelection:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/amazon/kindle/s2k/KindleDevice;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1005
    iget-object v7, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceSelection:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/amazon/kindle/s2k/KindleDevice;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amazon/kindle/s2k/KindleDevice;->setSelected(Z)V

    goto :goto_1

    .line 1010
    :cond_1
    iget-object v7, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "].isSelected"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 1011
    invoke-virtual {v6, v7}, Lcom/amazon/kindle/s2k/KindleDevice;->setSelected(Z)V

    .line 1012
    iget-object v8, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceSelection:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/amazon/kindle/s2k/KindleDevice;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    :goto_1
    invoke-virtual {v6}, Lcom/amazon/kindle/s2k/KindleDevice;->getIsWanCapable()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v5, 0x1

    .line 1021
    :cond_2
    iget-boolean v7, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_wifiSelected:Z

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/amazon/kindle/s2k/KindleDevice;->getIsWifiCapable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1023
    iget-object v7, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    :cond_3
    iget-boolean v7, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_wifiSelected:Z

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/amazon/kindle/s2k/KindleDevice;->getIsWanCapable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1027
    iget-object v7, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1032
    :cond_5
    sget v0, Lcom/amazon/kindle/s2k/R$id;->device_list_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceListView:Landroid/widget/ListView;

    if-eqz v0, :cond_8

    .line 1035
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1037
    new-instance v0, Lcom/amazon/kindle/s2k/DeviceListAdapter;

    iget-object v4, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceList:Ljava/util/List;

    invoke-direct {v0, p0, v4}, Lcom/amazon/kindle/s2k/DeviceListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceListAdapter:Landroid/widget/ArrayAdapter;

    .line 1038
    iget-object v4, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2

    .line 1043
    :cond_6
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/s2k/DeviceListAdapter;

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceListAdapter:Landroid/widget/ArrayAdapter;

    .line 1044
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1045
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceListAdapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceList:Ljava/util/List;

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 1049
    :goto_2
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_3

    .line 1054
    :cond_7
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    const-string v4, "No devices are present"

    invoke-static {v0, v2, v4}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v5, 0x0

    :cond_8
    :goto_3
    const/4 v0, 0x3

    const/4 v4, 0x4

    if-eqz v5, :cond_a

    .line 1060
    iput-boolean v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_wifiSelected:Z

    .line 1061
    sget v1, Lcom/amazon/kindle/s2k/R$id;->wifi_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1062
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1063
    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->wifiButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1064
    sget v1, Lcom/amazon/kindle/s2k/R$id;->whispernet_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1065
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1066
    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->wanButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1068
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    if-eq v1, v0, :cond_9

    .line 1069
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v4, :cond_c

    .line 1071
    :cond_9
    sget v0, Lcom/amazon/kindle/s2k/R$id;->deliver_via_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1072
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1073
    sget v0, Lcom/amazon/kindle/s2k/R$id;->line_separator2:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1074
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 1080
    :cond_a
    iput-boolean v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_wifiSelected:Z

    .line 1081
    sget v1, Lcom/amazon/kindle/s2k/R$id;->wifi_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1082
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1083
    sget v1, Lcom/amazon/kindle/s2k/R$id;->whispernet_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1084
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1085
    sget v1, Lcom/amazon/kindle/s2k/R$id;->whispernet_charges_text:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1086
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1088
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    if-eq v1, v0, :cond_b

    .line 1089
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v4, :cond_c

    .line 1091
    :cond_b
    sget v0, Lcom/amazon/kindle/s2k/R$id;->deliver_via_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1092
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1093
    sget v0, Lcom/amazon/kindle/s2k/R$id;->line_separator2:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1094
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1097
    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->checkIfDevicesSelected()V

    return-void
.end method

.method private readIntentExtras(Landroid/content/Intent;)Z
    .locals 8

    .line 424
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 427
    sget-object v2, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type is - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v2, v4, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 430
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 431
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 433
    sget-object v5, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received intent extra - key : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "android.intent.action.SEND"

    .line 436
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    const-string v0, "android.intent.extra.STREAM"

    .line 439
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    const-string v0, "Start intent did not provide proper file URI. "

    const/16 v3, 0x8

    if-eqz p1, :cond_1

    .line 441
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 445
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/net/URI;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    iput-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_file:Ljava/io/File;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 449
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 450
    sget-object v1, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->showFileReadErrorAlert()V

    return v2

    :cond_1
    if-eqz p1, :cond_8

    .line 456
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 458
    invoke-direct {p0, p1, v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->getFilePathFromContentURI(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v5, ""

    .line 459
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_4

    .line 466
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_file:Ljava/io/File;

    .line 480
    :goto_1
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_file:Ljava/io/File;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_3

    .line 487
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 488
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received file path = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 490
    invoke-static {p1}, Lcom/amazon/kindle/s2k/STKUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_documentTitle:Ljava/lang/String;

    .line 491
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_documentAuthor:Ljava/lang/String;

    .line 492
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Document title = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_documentTitle:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 493
    invoke-static {p1}, Lcom/amazon/kindle/s2k/STKUtils;->getFileExtnFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_fileExtension:Ljava/lang/String;

    .line 494
    sget-object p1, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Document extension = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_fileExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 495
    sget-object p1, Lcom/amazon/kindle/s2k/SendToKindleService;->validInputFileFormats:Ljava/util/List;

    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_fileExtension:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 497
    sget-object p1, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValidFile : File type not supported : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_fileExtension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/s2k/R$string;->error_title_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 499
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/s2k/R$string;->unsupportedfileErrorText:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->showAlertMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_file:Ljava/io/File;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/STKUtils;->deleteFileInS2KCacheDirectory(Ljava/io/File;)V

    return v2

    .line 503
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_fileExtension:Ljava/lang/String;

    const-string v0, "pdf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "PDF"

    .line 505
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_outputFormat:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string p1, "MOBI"

    .line 509
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_outputFormat:Ljava/lang/String;

    :goto_2
    const/4 p1, 0x1

    return p1

    .line 482
    :cond_6
    :goto_3
    sget-object v1, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->showFileReadErrorAlert()V

    return v2

    .line 461
    :cond_7
    :goto_4
    sget-object v1, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->showFileReadErrorAlert()V

    return v2

    :cond_8
    if-nez p1, :cond_9

    .line 471
    sget-object p1, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    const-string v0, "Start intent did not provide proper file URI. URI is null!"

    invoke-static {p1, v3, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_5

    .line 473
    :cond_9
    sget-object v1, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 475
    :goto_5
    invoke-virtual {p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->showFileReadErrorAlert()V

    return v2

    .line 514
    :cond_a
    sget-object p1, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    const-string v0, "Received incorrect intent."

    invoke-static {p1, v4, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 515
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/s2k/R$string;->error_title_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 516
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/s2k/R$string;->error_message_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 515
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->showAlertMsg(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private showDialogSafely(Landroid/app/AlertDialog;)V
    .locals 2

    .line 1350
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1351
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1353
    :cond_0
    sget-object p1, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    const/16 v0, 0x10

    const-string v1, "Fail to show dialog since SendToKindleActivity was finishing"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateFileInfoUI()Z
    .locals 11

    .line 236
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_file:Ljava/io/File;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_documentTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 240
    :cond_0
    sget v0, Lcom/amazon/kindle/s2k/R$id;->title_edit_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 241
    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_documentTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-boolean v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_isTitleAndAuthorEditable:Z

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 243
    sget v2, Lcom/amazon/kindle/s2k/R$id;->author_edit_text:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 244
    iget-object v3, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_documentAuthor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-boolean v3, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_isTitleAndAuthorEditable:Z

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 246
    sget v3, Lcom/amazon/kindle/s2k/R$id;->edit_title_author_button:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 247
    iget-boolean v4, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_isTitleAndAuthorEditable:Z

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v4, :cond_1

    .line 249
    sget v4, Lcom/amazon/kindle/s2k/R$drawable;->edit_button_active:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    new-array v3, v6, [Landroid/text/InputFilter;

    .line 250
    iget-object v4, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_inputFilter:Landroid/text/InputFilter;

    aput-object v4, v3, v1

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x100

    invoke-direct {v4, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 251
    iget-object v3, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_titleTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 252
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    new-array v0, v6, [Landroid/text/InputFilter;

    .line 253
    iget-object v3, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_inputFilter:Landroid/text/InputFilter;

    aput-object v3, v0, v1

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v5

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 254
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_authorTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 255
    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    goto :goto_0

    .line 259
    :cond_1
    sget v4, Lcom/amazon/kindle/s2k/R$drawable;->edit_button_inactive:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 261
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 264
    :goto_0
    sget v0, Lcom/amazon/kindle/s2k/R$id;->size_value_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 265
    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v7, 0x4090000000000000L    # 1024.0

    cmpg-double v4, v2, v7

    if-gez v4, :cond_2

    .line 269
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v4, v1}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object v1

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const-wide/high16 v9, 0x4130000000000000L    # 1048576.0

    cmpl-double v1, v2, v7

    if-ltz v1, :cond_3

    cmpg-double v1, v2, v9

    if-gez v1, :cond_3

    .line 274
    new-instance v1, Ljava/math/BigDecimal;

    div-double/2addr v2, v7

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v6, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " KB"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 279
    :cond_3
    new-instance v1, Ljava/math/BigDecimal;

    div-double/2addr v2, v9

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v1, v6, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MB"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return v5

    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public checkIfDevicesSelected()V
    .locals 4

    const/4 v0, 0x0

    .line 593
    iput-boolean v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_isDeviceSelected:Z

    .line 594
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceList:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 596
    :goto_0
    iget-object v3, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 598
    iget-object v3, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/s2k/KindleDevice;

    .line 599
    invoke-virtual {v3}, Lcom/amazon/kindle/s2k/KindleDevice;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 601
    iput-boolean v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_isDeviceSelected:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 606
    :cond_1
    :goto_1
    sget v1, Lcom/amazon/kindle/s2k/R$id;->send_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 607
    iget-boolean v3, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_isDeviceSelected:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_isArchiveSelected:Z

    if-eqz v3, :cond_2

    goto :goto_2

    .line 614
    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 615
    sget v0, Lcom/amazon/kindle/s2k/R$drawable;->send_button_inactive_bg:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3

    .line 609
    :cond_3
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 610
    sget v0, Lcom/amazon/kindle/s2k/R$drawable;->send_button_bg:I

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 918
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 920
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuration changed, orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const-string p1, "portrait"

    goto :goto_0

    :cond_0
    const-string p1, "landscape"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 926
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    if-eq p1, v2, :cond_1

    .line 927
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    if-ne p1, v1, :cond_2

    .line 929
    :cond_1
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/redding/ReddingActivity;->setRequestedOrientation(I)V

    .line 932
    :cond_2
    sget p1, Lcom/amazon/kindle/s2k/R$layout;->stk_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 933
    invoke-virtual {p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->setContentLayout()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 109
    sget-object v0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "Starting STK activity - 1"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 111
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 113
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->setCurrentActivity(Landroid/app/Activity;)V

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/ReddingApplication;->hasAppStartupFailed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/application/FatalErrorActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 129
    :cond_0
    new-instance p1, Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    .line 131
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_handler:Landroid/os/Handler;

    .line 135
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    if-eq p1, v0, :cond_1

    .line 136
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p1, p1, 0xf

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 138
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/redding/ReddingActivity;->setRequestedOrientation(I)V

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    const-string v2, "S2KInstalled"

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string v3, "ArchiveSelected"

    if-nez p1, :cond_3

    .line 144
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    invoke-virtual {p1, v2, v0}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 147
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    invoke-virtual {p1, v3, v0}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 150
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v4, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v5, "SendToKindleActivity"

    invoke-virtual {p1, v5, v2, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    .line 151
    sget-object p1, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    const-string v2, "Reporting metric : SendToKindleActivity:S2KInstalled"

    invoke-static {p1, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 155
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    invoke-virtual {p1, v3}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 157
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    invoke-virtual {p1, v3, v0}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 159
    :cond_4
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->stkPreferences:Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    invoke-virtual {p1, v3}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_isArchiveSelected:Z

    const/4 p1, 0x0

    .line 160
    iput-boolean p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_isTitleAndAuthorEditable:Z

    .line 162
    sget v0, Lcom/amazon/kindle/s2k/R$layout;->stk_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 166
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->reddingAppVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "3.8.0"

    .line 170
    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->reddingAppVersion:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 174
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->continueBuildActivity()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1104
    sget p1, Lcom/amazon/kindle/s2k/R$id;->label:I

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1105
    sget p4, Lcom/amazon/kindle/s2k/R$id;->check:I

    invoke-virtual {p2, p4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 1108
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1109
    sget-object p4, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Clicked - "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at position "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p5, 0x4

    invoke-static {p4, p5, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 1111
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceList:Ljava/util/List;

    if-eqz p1, :cond_2

    if-ltz p3, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p3, p1, :cond_0

    goto :goto_0

    .line 1117
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/s2k/KindleDevice;

    .line 1118
    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/KindleDevice;->toggleSelected()V

    .line 1119
    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/KindleDevice;->isSelected()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1120
    iget-object p2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceSelection:Ljava/util/HashMap;

    if-eqz p2, :cond_1

    .line 1122
    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/KindleDevice;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/KindleDevice;->isSelected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->checkIfDevicesSelected()V

    return-void

    .line 1113
    :cond_2
    :goto_0
    sget-object p1, Lcom/amazon/kindle/s2k/SendToKindleActivity;->TAG:Ljava/lang/String;

    const/16 p2, 0x8

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "No device at position "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 939
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onPause()V

    .line 940
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceLoadProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 942
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 969
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    .line 970
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->setCurrentActivity(Landroid/app/Activity;)V

    .line 971
    invoke-direct {p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->checkRegisteredUserName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    invoke-direct {p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->callGetListOfOwnedDevices()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 950
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onStart()V

    .line 951
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->activityStarted(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 957
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onStop()V

    .line 958
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->activityStopped()V

    .line 959
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceLoadProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 961
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public setContentLayout()V
    .locals 5

    const/4 v0, 0x1

    .line 531
    iput-boolean v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_wifiSelected:Z

    .line 532
    sget v1, Lcom/amazon/kindle/s2k/R$id;->wifi_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/16 v2, 0x8

    .line 533
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 534
    sget v1, Lcom/amazon/kindle/s2k/R$id;->whispernet_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 535
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 537
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    .line 538
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v3, :cond_1

    .line 540
    :cond_0
    sget v1, Lcom/amazon/kindle/s2k/R$id;->deliver_via_text:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 541
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    sget v1, Lcom/amazon/kindle/s2k/R$id;->line_separator2:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 543
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 546
    :cond_1
    sget v1, Lcom/amazon/kindle/s2k/R$id;->whispernet_charges_text:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 547
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 549
    sget v1, Lcom/amazon/kindle/s2k/R$id;->stk_archive_checkBox:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 550
    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->archiveButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 553
    iget-boolean v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_isArchiveSelected:Z

    if-eqz v2, :cond_2

    .line 555
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v2, -0x2b2b2c

    .line 556
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 560
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v2, -0x808182

    .line 561
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 565
    :goto_0
    iput-boolean v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_wifiSelected:Z

    .line 566
    sget v0, Lcom/amazon/kindle/s2k/R$id;->device_list_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceListView:Landroid/widget/ListView;

    .line 567
    invoke-direct {p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->loadDevices()V

    .line 570
    invoke-direct {p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->updateFileInfoUI()Z

    move-result v0

    if-nez v0, :cond_3

    .line 573
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 577
    :cond_3
    sget v0, Lcom/amazon/kindle/s2k/R$id;->send_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 578
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->sendButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 579
    sget v0, Lcom/amazon/kindle/s2k/R$id;->cancel_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 580
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->cancelButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 581
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 583
    sget v0, Lcom/amazon/kindle/s2k/R$id;->edit_title_author_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 584
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->editTitleAndAuthorButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showAlertMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1130
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceLoadProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1134
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    .line 1135
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1136
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1137
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 1138
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1139
    sget p1, Lcom/amazon/kindle/s2k/R$string;->errorButtonText:I

    new-instance p2, Lcom/amazon/kindle/s2k/SendToKindleActivity$10;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity$10;-><init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V

    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1146
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_handler:Landroid/os/Handler;

    new-instance p2, Lcom/amazon/kindle/s2k/SendToKindleActivity$11;

    invoke-direct {p2, p0, v0}, Lcom/amazon/kindle/s2k/SendToKindleActivity$11;-><init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showFileReadErrorAlert()V
    .locals 3

    .line 1159
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity;->m_deviceLoadProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1161
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1163
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    .line 1164
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1165
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/s2k/R$string;->error_title_unknown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1166
    sget v1, Lcom/amazon/kindle/s2k/R$string;->fileReadErrorTextWithFeedback:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 1167
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1168
    sget v1, Lcom/amazon/kindle/s2k/R$string;->cancelButtonText:I

    new-instance v2, Lcom/amazon/kindle/s2k/SendToKindleActivity$12;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity$12;-><init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1174
    sget v1, Lcom/amazon/kindle/s2k/R$string;->contactUsText:I

    new-instance v2, Lcom/amazon/kindle/s2k/SendToKindleActivity$13;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity$13;-><init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1183
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1184
    invoke-direct {p0, v0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->showDialogSafely(Landroid/app/AlertDialog;)V

    const v1, 0x102000b

    .line 1188
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
