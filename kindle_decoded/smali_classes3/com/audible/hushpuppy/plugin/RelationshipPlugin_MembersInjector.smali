.class public final Lcom/audible/hushpuppy/plugin/RelationshipPlugin_MembersInjector;
.super Ljava/lang/Object;
.source "RelationshipPlugin_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/audible/hushpuppy/plugin/RelationshipPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final dbScalingRelationshipManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/relationship/controller/IDBScalingRelationshipManager;",
            ">;"
        }
    .end annotation
.end field

.field private final debugHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final hushpuppySettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;",
            ">;"
        }
    .end annotation
.end field

.field private final legacyRelationshipManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mobileWeblabHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectConnectivityManager(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->connectivityManager:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public static injectDbScalingRelationshipManager(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;Lcom/audible/relationship/controller/IDBScalingRelationshipManager;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->dbScalingRelationshipManager:Lcom/audible/relationship/controller/IDBScalingRelationshipManager;

    return-void
.end method

.method public static injectDebugHelper(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->debugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    return-void
.end method

.method public static injectHushpuppySettings(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->hushpuppySettings:Lcom/audible/hushpuppy/service/settings/IHushpuppySettings;

    return-void
.end method

.method public static injectLegacyRelationshipManager(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->legacyRelationshipManager:Lcom/audible/hushpuppy/service/relationship/ILegacyRelationshipManager;

    return-void
.end method

.method public static injectMobileWeblabHandler(Lcom/audible/hushpuppy/plugin/RelationshipPlugin;Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/audible/hushpuppy/plugin/RelationshipPlugin;->mobileWeblabHandler:Lcom/audible/hushpuppy/common/debug/IMobileWeblabHandler;

    return-void
.end method
