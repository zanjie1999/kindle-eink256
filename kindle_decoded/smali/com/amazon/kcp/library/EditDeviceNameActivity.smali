.class public Lcom/amazon/kcp/library/EditDeviceNameActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "EditDeviceNameActivity.java"


# static fields
.field private static final ALREADY_USED_TAG:Ljava/lang/String; = "EditDeviceNameActivity_AlreadyUsed"

.field private static final INVALID_TAG:Ljava/lang/String; = "EditDeviceNameActivity_Invalid"

.field private static final SETTING_ITEM_DEVICE_NAME:Ljava/lang/String; = "setting_item_device_name"


# instance fields
.field private account:Ljava/lang/String;

.field private authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private cas:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/EditDeviceNameActivity;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/EditDeviceNameActivity;->requestRenameDevice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/EditDeviceNameActivity;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity;->account:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/EditDeviceNameActivity;)Lcom/amazon/kcp/application/IAuthenticationManager;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    return-object p0
.end method

.method private displayDeviceName()V
    .locals 3

    .line 89
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->new_name:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 90
    iget-object v1, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v1, v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private initComponents()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/amazon/kcp/library/EditDeviceNameActivity;->initRenameButton()V

    .line 59
    invoke-direct {p0}, Lcom/amazon/kcp/library/EditDeviceNameActivity;->initEditText()V

    return-void
.end method

.method private initEditText()V
    .locals 2

    .line 74
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->new_name:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 75
    new-instance v1, Lcom/amazon/kcp/library/EditDeviceNameActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/EditDeviceNameActivity$2;-><init>(Lcom/amazon/kcp/library/EditDeviceNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private initRenameButton()V
    .locals 2

    .line 63
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->rename_btn:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 64
    new-instance v1, Lcom/amazon/kcp/library/EditDeviceNameActivity$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/EditDeviceNameActivity$1;-><init>(Lcom/amazon/kcp/library/EditDeviceNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private requestRenameDevice(Ljava/lang/String;)V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity;->cas:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

    iget-object v1, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity;->account:Ljava/lang/String;

    new-instance v2, Lcom/amazon/kcp/library/EditDeviceNameActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/amazon/kcp/library/EditDeviceNameActivity$3;-><init>(Lcom/amazon/kcp/library/EditDeviceNameActivity;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->renameDevice(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->edit_device_name:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 46
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 47
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity;->authManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity;->cas:Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

    .line 49
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity;->account:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lcom/amazon/kcp/library/EditDeviceNameActivity;->displayDeviceName()V

    .line 52
    invoke-direct {p0}, Lcom/amazon/kcp/library/EditDeviceNameActivity;->initComponents()V

    .line 53
    new-instance p1, Lcom/amazon/kcp/library/LibraryActionBarHelper;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/library/LibraryActionBarHelper;-><init>(Landroid/app/Activity;)V

    .line 54
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryActionBarHelper;->setDisplayHomeAsUpEnabled()V

    return-void
.end method
