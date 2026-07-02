.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerBaseComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private arcusModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

.field private contextModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;

.field private mapAuthModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MapAuthModule;

.field private utilModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$1;)V
    .locals 0

    .line 214
    invoke-direct {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->contextModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MapAuthModule;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->mapAuthModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MapAuthModule;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->utilModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->arcusModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/BaseComponent;
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->contextModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->mapAuthModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MapAuthModule;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MapAuthModule;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MapAuthModule;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->mapAuthModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/MapAuthModule;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->utilModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    if-nez v0, :cond_1

    .line 233
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->utilModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/UtilModule;

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->arcusModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

    if-nez v0, :cond_2

    .line 236
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;-><init>()V

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->arcusModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ArcusModule;

    .line 238
    :cond_2
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$1;)V

    return-object v0

    .line 227
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contextModule(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;)Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;
    .locals 0

    .line 242
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/components/DaggerBaseComponent$Builder;->contextModule:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ContextModule;

    return-object p0
.end method
