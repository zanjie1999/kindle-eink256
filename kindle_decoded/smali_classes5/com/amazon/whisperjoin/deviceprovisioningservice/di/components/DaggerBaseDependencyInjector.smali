.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector;
.super Ljava/lang/Object;
.source "DaggerBaseDependencyInjector.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseDependencyInjector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector$Builder;
    }
.end annotation


# instance fields
.field private baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;


# direct methods
.method private constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector$Builder;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector;->initialize(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector$Builder;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector$Builder;Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector$Builder;)V

    return-void
.end method

.method public static builder()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector$Builder;
    .locals 2

    .line 16
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector$Builder;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector$1;)V

    return-object v0
.end method

.method private initialize(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector$Builder;)V
    .locals 0

    .line 21
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    return-void
.end method

.method private injectFFSBackgroundProvisioningServiceBinder(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    .line 35
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getSharedPreferencesProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 34
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;

    .line 32
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder_MembersInjector;->injectMSharedPreferencesProvider(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;Lcom/amazon/whisperjoin/deviceprovisioningservice/util/SharedPreferencesProvider;)V

    .line 37
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector;->baseComponent:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;

    .line 40
    invoke-interface {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;->getMapAuthProvider()Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    move-result-object v0

    .line 39
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;

    .line 37
    invoke-static {p1, v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder_MembersInjector;->injectMMapAuthenticationProvider(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;Lcom/amazon/whisperjoin/deviceprovisioningservice/identity/MapAuthenticationProvider;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseDependencyInjector;->injectFFSBackgroundProvisioningServiceBinder(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/service/FFSBackgroundProvisioningServiceBinder;

    return-void
.end method
