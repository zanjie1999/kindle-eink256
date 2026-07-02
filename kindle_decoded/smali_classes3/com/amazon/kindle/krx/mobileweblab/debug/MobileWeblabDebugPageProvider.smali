.class public Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;
.super Ljava/lang/Object;
.source "MobileWeblabDebugPageProvider.java"

# interfaces
.implements Lcom/amazon/kcp/debug/IDebugMenuPageProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;
    }
.end annotation


# static fields
.field private static final MOBILE_WEBLAB_DEBUG_SETTINGS:Ljava/lang/String; = "MobileWeblabDebugSettings"

.field private static final MOBILE_WEBLAB_DISABLED:Ljava/lang/String; = "MobileWeblabDisabled"

.field private static final TAG:Ljava/lang/String; = "DEBUG_WEBLAB_OVERRIDE"


# instance fields
.field private WEBLAB_MANAGER:Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;

.field private knownViews:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/amazon/kindle/krx/KindleReaderSDK;->getInstance()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;

    iput-object v0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;->WEBLAB_MANAGER:Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;)Landroid/widget/ListView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;->knownViews:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;->knownViews:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;)Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;->WEBLAB_MANAGER:Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;

    return-object p0
.end method

.method public static isMobileWeblabDisabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "MobileWeblabDebugSettings"

    .line 65
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "MobileWeblabDisabled"

    .line 67
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public getDebugMenuPages(Landroid/app/Activity;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v1, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;

    invoke-direct {v1, p0, v2, v0}, Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider$MobileWeblabDebugPage;-><init>(Lcom/amazon/kindle/krx/mobileweblab/debug/MobileWeblabDebugPageProvider;Lcom/amazon/kindle/krx/mobileweblab/debug/OverrideWeblabManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method
