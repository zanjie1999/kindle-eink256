.class public Lcom/amazon/kindle/map/MAPRegistrationManager;
.super Ljava/lang/Object;
.source "MAPRegistrationManager.java"

# interfaces
.implements Lcom/amazon/kcp/application/IRegistrationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/map/MAPRegistrationManager$RegistrationCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static pageId:Ljava/lang/String;

.field private static pageIdDark:Ljava/lang/String;


# instance fields
.field private final accountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

.field protected context:Landroid/content/Context;

.field private final multipleAccountManager:Lcom/amazon/identity/auth/device/api/MultipleAccountManager;

.field private final packageAccountMapping:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/amazon/kindle/map/MAPRegistrationManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/map/MAPRegistrationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->context:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->accountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    .line 66
    new-instance v0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->multipleAccountManager:Lcom/amazon/identity/auth/device/api/MultipleAccountManager;

    .line 68
    iget-object v0, p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->context:Landroid/content/Context;

    .line 69
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PackageMappingType;->createCurrentPackageMapping(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MultipleAccountManager$PackageMappingType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->packageAccountMapping:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    .line 71
    sget v0, Lcom/amazon/kindle/krl/R$string;->page_id:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/map/MAPRegistrationManager;->pageId:Ljava/lang/String;

    .line 72
    sget v0, Lcom/amazon/kindle/krl/R$string;->page_id_dark:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/amazon/kindle/map/MAPRegistrationManager;->pageIdDark:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/amazon/kindle/map/MAPRegistrationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/map/MAPRegistrationManager;Landroid/os/Bundle;Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/map/MAPRegistrationManager;->getErrorMessage(Landroid/os/Bundle;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/map/MAPRegistrationManager;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/kindle/map/MAPRegistrationManager;->getErrorMessage(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static combineOptionBundles(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 178
    new-instance v0, Landroid/os/Bundle;

    if-eqz p0, :cond_0

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    if-eqz p1, :cond_2

    const/4 p0, 0x0

    const-string v1, "pageIdOverride"

    .line 181
    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "com.amazon.identity.ap.request.parameters"

    .line 183
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "pageId"

    .line 185
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2
    return-object v0
.end method

.method private getErrorMessage(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "com.amazon.dcp.sso.ErrorCode"

    .line 314
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->fromValue(I)Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    move-result-object p1

    .line 316
    sget-object v0, Lcom/amazon/kindle/map/MAPRegistrationManager$2;->$SwitchMap$com$amazon$identity$auth$device$api$MAPAccountManager$RegistrationError:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 328
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_login_default:I

    goto :goto_0

    .line 325
    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_login_register_failed:I

    goto :goto_0

    .line 322
    :cond_1
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_network_failure:I

    goto :goto_0

    .line 319
    :cond_2
    sget p1, Lcom/amazon/kindle/krl/R$string;->error_login_authentication_failed:I

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getErrorMessage(Landroid/os/Bundle;Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    const-string v0, "errorCode"

    .line 244
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.amazon.dcp.sso.ErrorCode"

    .line 249
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 250
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->fromValue(I)Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registration failed with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    sget-object v1, Lcom/amazon/kindle/map/MAPRegistrationManager$2;->$SwitchMap$com$amazon$identity$auth$device$api$MAPAccountManager$RegistrationError:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    .line 261
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$string;->error_login_default:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 259
    :cond_1
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$string;->error_login_register_failed:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 256
    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/map/MAPRegistrationManager;->handleMAPWebViewSSLError(Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$string;->error_network_failure:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 254
    :cond_3
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$string;->error_login_authentication_failed:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getPageId()Ljava/lang/String;
    .locals 2

    .line 202
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 202
    :goto_0
    invoke-static {v0}, Lcom/amazon/kindle/map/MAPRegistrationManager;->getPageId(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getPageId(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 216
    sget-object p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->pageIdDark:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->pageId:Ljava/lang/String;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public deregisterAccount(Ljava/lang/String;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStringCallback;)V
    .locals 1

    .line 283
    new-instance v0, Lcom/amazon/kindle/map/MAPRegistrationManager$RegistrationCallback;

    invoke-direct {v0, p0, p2, p3}, Lcom/amazon/kindle/map/MAPRegistrationManager$RegistrationCallback;-><init>(Lcom/amazon/kindle/map/MAPRegistrationManager;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStringCallback;)V

    .line 284
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/map/MAPRegistrationManager;->onDeregisterAccount(Ljava/lang/String;)V

    .line 285
    iget-object p2, p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->accountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->deregisterAccount(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void
.end method

.method public deregisterDevice(Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStringCallback;)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->accountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/map/MAPRegistrationManager;->onDeregisterAccount(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->accountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    new-instance v1, Lcom/amazon/kindle/map/MAPRegistrationManager$RegistrationCallback;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kindle/map/MAPRegistrationManager$RegistrationCallback;-><init>(Lcom/amazon/kindle/map/MAPRegistrationManager;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStringCallback;)V

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->deregisterDevice(Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void
.end method

.method public deregisterPrimaryAccount(Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStringCallback;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->accountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kindle/map/MAPRegistrationManager;->deregisterAccount(Ljava/lang/String;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/IStringCallback;)V

    return-void
.end method

.method public getWebviewOptions()Landroid/os/Bundle;
    .locals 1

    .line 277
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method protected handleMAPWebViewSSLError(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDeregisterAccount(Ljava/lang/String;)V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->multipleAccountManager:Lcom/amazon/identity/auth/device/api/MultipleAccountManager;

    iget-object v1, p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->packageAccountMapping:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;->doesAccountHaveMapping(Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->multipleAccountManager:Lcom/amazon/identity/auth/device/api/MultipleAccountManager;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->packageAccountMapping:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;->removeAccountMappings(Ljava/lang/String;[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z

    :cond_0
    return-void
.end method

.method protected onRegisterAccountSuccess(Ljava/lang/String;)V
    .locals 4

    .line 301
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->multipleAccountManager:Lcom/amazon/identity/auth/device/api/MultipleAccountManager;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->packageAccountMapping:Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/api/MultipleAccountManager;->setAccountMappings(Ljava/lang/String;[Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;)Z

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method public showWebviewSignin(Ljava/lang/ref/WeakReference;Lcom/amazon/foundation/IStringCallback;Lcom/amazon/foundation/IStringCallback;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;",
            "Lcom/amazon/foundation/IStringCallback;",
            "Lcom/amazon/foundation/IStringCallback;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/amazon/kindle/map/MAPRegistrationManager$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/amazon/kindle/map/MAPRegistrationManager$1;-><init>(Lcom/amazon/kindle/map/MAPRegistrationManager;Lcom/amazon/foundation/IStringCallback;Ljava/lang/ref/WeakReference;Lcom/amazon/foundation/IStringCallback;)V

    .line 171
    invoke-virtual {p0}, Lcom/amazon/kindle/map/MAPRegistrationManager;->getWebviewOptions()Landroid/os/Bundle;

    move-result-object p2

    .line 172
    invoke-static {p2, p4}, Lcom/amazon/kindle/map/MAPRegistrationManager;->combineOptionBundles(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 173
    iget-object p3, p0, Lcom/amazon/kindle/map/MAPRegistrationManager;->accountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    sget-object p4, Lcom/amazon/identity/auth/device/api/SigninOption;->WebviewSignin:Lcom/amazon/identity/auth/device/api/SigninOption;

    invoke-virtual {p3, p1, p4, p2, v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->registerAccountWithUI(Landroid/app/Activity;Lcom/amazon/identity/auth/device/api/SigninOption;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void
.end method

.method public tryHandle3pLoginCode(Landroid/os/Bundle;Landroid/app/Activity;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
