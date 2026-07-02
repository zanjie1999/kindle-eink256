.class public final Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetScanLocalContentUtilsFactory;
.super Ljava/lang/Object;
.source "ThirdPartyCoreModule_GetScanLocalContentUtilsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/scan/ScanLocalContentUtils;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetScanLocalContentUtilsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetScanLocalContentUtilsFactory;

    invoke-direct {v0}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetScanLocalContentUtilsFactory;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetScanLocalContentUtilsFactory;->INSTANCE:Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetScanLocalContentUtilsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetScanLocalContentUtilsFactory;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetScanLocalContentUtilsFactory;->INSTANCE:Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetScanLocalContentUtilsFactory;

    return-object v0
.end method

.method public static provideInstance()Lcom/amazon/kindle/scan/ScanLocalContentUtils;
    .locals 1

    .line 19
    invoke-static {}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetScanLocalContentUtilsFactory;->proxyGetScanLocalContentUtils()Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    move-result-object v0

    return-object v0
.end method

.method public static proxyGetScanLocalContentUtils()Lcom/amazon/kindle/scan/ScanLocalContentUtils;
    .locals 2

    .line 28
    invoke-static {}, Lcom/amazon/kcp/application/ThirdPartyCoreModule;->getScanLocalContentUtils()Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 27
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/scan/ScanLocalContentUtils;
    .locals 1

    .line 15
    invoke-static {}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetScanLocalContentUtilsFactory;->provideInstance()Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetScanLocalContentUtilsFactory;->get()Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    move-result-object v0

    return-object v0
.end method
