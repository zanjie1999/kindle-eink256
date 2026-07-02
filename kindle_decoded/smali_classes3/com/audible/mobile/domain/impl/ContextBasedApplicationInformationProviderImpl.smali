.class public final Lcom/audible/mobile/domain/impl/ContextBasedApplicationInformationProviderImpl;
.super Ljava/lang/Object;
.source "ContextBasedApplicationInformationProviderImpl.java"

# interfaces
.implements Lcom/audible/mobile/domain/ApplicationInformationProvider;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final packageCodePath:Ljava/io/File;

.field private final packageName:Ljava/lang/String;

.field private final versionCode:I

.field private final versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/domain/impl/ContextBasedApplicationInformationProviderImpl;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/domain/impl/ContextBasedApplicationInformationProviderImpl;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context must not be null."

    .line 38
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/domain/impl/ContextBasedApplicationInformationProviderImpl;->packageName:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/audible/mobile/domain/impl/ContextBasedApplicationInformationProviderImpl;->packageCodePath:Ljava/io/File;

    .line 42
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 43
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lcom/audible/mobile/domain/impl/ContextBasedApplicationInformationProviderImpl;->versionCode:I

    .line 44
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/audible/mobile/domain/impl/ContextBasedApplicationInformationProviderImpl;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 46
    sget-object v1, Lcom/audible/mobile/domain/impl/ContextBasedApplicationInformationProviderImpl;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "Unable to find PackageInfo for {}"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Package name was not found."

    invoke-direct {p1, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/audible/mobile/domain/impl/ContextBasedApplicationInformationProviderImpl;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/audible/mobile/domain/impl/ContextBasedApplicationInformationProviderImpl;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/audible/mobile/domain/impl/ContextBasedApplicationInformationProviderImpl;->versionName:Ljava/lang/String;

    return-object v0
.end method
