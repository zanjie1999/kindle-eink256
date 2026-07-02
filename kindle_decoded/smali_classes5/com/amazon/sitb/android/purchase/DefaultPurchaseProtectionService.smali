.class public Lcom/amazon/sitb/android/purchase/DefaultPurchaseProtectionService;
.super Ljava/lang/Object;
.source "DefaultPurchaseProtectionService.java"

# interfaces
.implements Lcom/amazon/sitb/android/purchase/IPurchaseProtectionService;


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/purchase/DefaultPurchaseProtectionService;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/purchase/DefaultPurchaseProtectionService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPurchaseProtected()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/DefaultPurchaseProtectionService;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resolveDependencies(Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;)V
    .locals 2

    .line 28
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/sitb/android/plugin/content/ContentPluginContext;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/sitb/android/purchase/DefaultPurchaseProtectionService;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    sget-object v0, Lcom/amazon/sitb/android/purchase/DefaultPurchaseProtectionService;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const-string v1, "Could not get restriction handler from SDK"

    invoke-interface {v0, v1, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/amazon/sitb/android/purchase/DefaultPurchaseProtectionService;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    :goto_0
    return-void
.end method
