.class Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;
.super Ljava/lang/Object;
.source "AmazonPackageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;
    }
.end annotation


# instance fields
.field private mExistingPackageInfo:Landroid/content/pm/PackageInfo;

.field private mFlags:I

.field private mInstallerPackageName:Ljava/lang/String;

.field private mObserver:Lcom/amazon/whispersync/dcp/framework/IPackageInstallObserver;

.field private mPackageName:Ljava/lang/String;

.field private mPackageURI:Landroid/net/Uri;

.field private mPackageVersionCode:I

.field private mReceiver:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;

.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;Ljava/lang/String;ILandroid/net/Uri;Lcom/amazon/whispersync/dcp/framework/IPackageInstallObserver;ILjava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->this$0:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    .line 146
    invoke-static {p6}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$400(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 150
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mPackageName:Ljava/lang/String;

    .line 151
    iput p3, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mPackageVersionCode:I

    .line 152
    iput-object p4, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mPackageURI:Landroid/net/Uri;

    .line 154
    iput-object p5, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mObserver:Lcom/amazon/whispersync/dcp/framework/IPackageInstallObserver;

    if-nez p5, :cond_0

    .line 157
    new-instance p1, Lcom/amazon/whispersync/dcp/framework/DefaultAmazonPackageInstallObserver;

    invoke-direct {p1}, Lcom/amazon/whispersync/dcp/framework/DefaultAmazonPackageInstallObserver;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mObserver:Lcom/amazon/whispersync/dcp/framework/IPackageInstallObserver;

    .line 160
    :cond_0
    iput p6, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mFlags:I

    .line 161
    iput-object p7, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mInstallerPackageName:Ljava/lang/String;

    return-void

    .line 148
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;)Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->detectAndReportVisibleInstallResult()V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;)Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mReceiver:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;

    return-object p0
.end method

.method static synthetic access$802(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;)Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mReceiver:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;

    return-object p1
.end method

.method static synthetic access$900(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;I)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->reportCompletion(I)V

    return-void
.end method

.method private detectAndReportVisibleInstallResult()V
    .locals 1

    .line 335
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->installSucceeded()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, -0xea61

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 340
    :goto_0
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->reportCompletion(I)V

    return-void
.end method

.method private getPackageIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 323
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 324
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 325
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 326
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 327
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-object v0
.end method

.method private installSucceeded()Z
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->this$0:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$500(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mPackageVersionCode:I

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private logInstall(Landroid/content/pm/PackageInfo;Ljava/lang/String;IZ)V
    .locals 1

    if-eqz p4, :cond_0

    const-string/jumbo p4, "silent"

    goto :goto_0

    :cond_0
    const-string/jumbo p4, "prompting"

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "<none>"

    goto :goto_1

    .line 237
    :cond_1
    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$600(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p1

    .line 240
    :goto_1
    invoke-static {p2, p3}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$700(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 242
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$100()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " install "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reportCompletion(I)V
    .locals 3

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mObserver:Lcom/amazon/whispersync/dcp/framework/IPackageInstallObserver;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/dcp/framework/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 358
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package Installed callback failed unexpectedly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private startInstall()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->this$0:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$500(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mExistingPackageInfo:Landroid/content/pm/PackageInfo;

    .line 195
    iget v0, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v2, 0x1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mExistingPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mPackageVersionCode:I

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->logInstall(Landroid/content/pm/PackageInfo;Ljava/lang/String;IZ)V

    if-eqz v2, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->startSilentInstall()V

    goto :goto_0

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->startVisibleInstall()V

    :goto_0
    return-void
.end method

.method private startSilentInstall()V
    .locals 5

    .line 247
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Starting silent install"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->this$0:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mPackageURI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mObserver:Lcom/amazon/whispersync/dcp/framework/IPackageInstallObserver;

    iget v3, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mFlags:I

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->installPackage(Landroid/net/Uri;Lcom/amazon/whispersync/dcp/framework/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/SecurityException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 258
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting visible install as we do not have the required security permissions : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->startVisibleInstall()V

    goto :goto_0

    .line 264
    :cond_0
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InvocationTargetException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private startVisibleInstall()V
    .locals 6

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    .line 274
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mPackageURI:Landroid/net/Uri;

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v2, v1

    .line 279
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$1;

    invoke-direct {v1, p0, v2}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$1;-><init>(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;I)V

    .line 316
    new-instance v3, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;-><init>(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$1;)V

    iput-object v3, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mReceiver:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;

    .line 317
    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->this$0:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;

    invoke-static {v3}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$200(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;)Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mReceiver:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction$PackageInstalledReceiver;

    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->getPackageIntentFilter()Landroid/content/IntentFilter;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 318
    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->this$0:Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;

    invoke-static {v3}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$200(Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;)Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/ServiceUtilityContext;->startActivityForResult(Landroid/content/Intent;ILcom/amazon/whispersync/dcp/framework/ServiceUtilityContext$IActivityResultListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Crash detected when starting install."

    .line 167
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x3

    .line 169
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->reportCompletion(I)V

    return-void

    :cond_0
    const v1, -0xea60

    .line 175
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->startInstall()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 185
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->reportCompletion(I)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 179
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    invoke-direct {p0, v1}, Lcom/amazon/whispersync/dcp/framework/AmazonPackageManager$InstallAction;->reportCompletion(I)V

    :goto_0
    return-void
.end method
