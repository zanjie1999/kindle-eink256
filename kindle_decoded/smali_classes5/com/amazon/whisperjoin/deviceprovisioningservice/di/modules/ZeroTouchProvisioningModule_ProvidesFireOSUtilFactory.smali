.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesFireOSUtilFactory;
.super Ljava/lang/Object;
.source "ZeroTouchProvisioningModule_ProvidesFireOSUtilFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/whisperjoin/util/FireOSUtil;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;


# direct methods
.method public constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesFireOSUtilFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;

    return-void
.end method

.method public static create(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;",
            ")",
            "Ldagger/internal/Factory<",
            "Lcom/amazon/whisperjoin/util/FireOSUtil;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesFireOSUtilFactory;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesFireOSUtilFactory;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/whisperjoin/util/FireOSUtil;
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesFireOSUtilFactory;->module:Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;

    .line 19
    invoke-virtual {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule;->providesFireOSUtil()Lcom/amazon/whisperjoin/util/FireOSUtil;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 18
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/whisperjoin/util/FireOSUtil;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/di/modules/ZeroTouchProvisioningModule_ProvidesFireOSUtilFactory;->get()Lcom/amazon/whisperjoin/util/FireOSUtil;

    move-result-object v0

    return-object v0
.end method
