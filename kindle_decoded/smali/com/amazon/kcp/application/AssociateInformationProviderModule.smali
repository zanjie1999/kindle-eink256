.class public Lcom/amazon/kcp/application/AssociateInformationProviderModule;
.super Ljava/lang/Object;
.source "AssociateInformationProviderModule.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/amazon/kcp/application/AssociateInformationProviderModule;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AssociateInformationProviderModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getIAssociateInformationProvider(Landroid/app/Application;)Lcom/amazon/kcp/application/IAssociateInformationProvider;
    .locals 3

    .line 30
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;->getAssociatePreferencesName()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object v0

    .line 32
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    .line 33
    new-instance v2, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;

    invoke-direct {v2, p0, v0, v1}, Lcom/amazon/kcp/application/associate/AndroidAssociateInformationProvider;-><init>(Landroid/content/Context;Lcom/amazon/kindle/persistence/AndroidSharedPreferences;Lcom/amazon/kcp/application/IAuthenticationManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 35
    sget-object v0, Lcom/amazon/kcp/application/AssociateInformationProviderModule;->TAG:Ljava/lang/String;

    const-string v1, "Initializing Associate Tag: "

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method
