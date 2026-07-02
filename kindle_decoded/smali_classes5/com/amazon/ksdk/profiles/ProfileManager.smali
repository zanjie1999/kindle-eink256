.class public abstract Lcom/amazon/ksdk/profiles/ProfileManager;
.super Ljava/lang/Object;
.source "ProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ksdk/profiles/ProfileManager$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Ljava/lang/String;Lcom/amazon/ksdk/profiles/DeviceInfoCtx;Lcom/amazon/ksdk/profiles/DynamicConfigWrapper;Lcom/amazon/ksdk/adpauthentication/AdpTokenProvider;Lcom/amazon/ksdk/profiles/NetworkConnectivityManager;)Lcom/amazon/ksdk/profiles/ProfileManager;
    .locals 0

    .line 22
    invoke-static {p0, p1, p2, p3, p4}, Lcom/amazon/ksdk/profiles/ProfileManager$CppProxy;->createInstance(Ljava/lang/String;Lcom/amazon/ksdk/profiles/DeviceInfoCtx;Lcom/amazon/ksdk/profiles/DynamicConfigWrapper;Lcom/amazon/ksdk/adpauthentication/AdpTokenProvider;Lcom/amazon/ksdk/profiles/NetworkConnectivityManager;)Lcom/amazon/ksdk/profiles/ProfileManager;

    move-result-object p0

    return-object p0
.end method

.method public static deleteInstance()V
    .locals 0

    .line 38
    invoke-static {}, Lcom/amazon/ksdk/profiles/ProfileManager$CppProxy;->deleteInstance()V

    return-void
.end method

.method public static instance()Lcom/amazon/ksdk/profiles/ProfileManager;
    .locals 1

    .line 32
    invoke-static {}, Lcom/amazon/ksdk/profiles/ProfileManager$CppProxy;->instance()Lcom/amazon/ksdk/profiles/ProfileManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getProfileProvider()Lcom/amazon/ksdk/profiles/ProfileProvider;
.end method

.method public abstract getRegistrationEventsObserver()Lcom/amazon/ksdk/profiles/RegistrationEventsObserver;
.end method

.method public abstract getSharingServiceClient()Lcom/amazon/ksdk/profiles/SharingServiceClient;
.end method
