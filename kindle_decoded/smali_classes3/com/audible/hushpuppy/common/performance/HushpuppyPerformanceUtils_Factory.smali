.class public final Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils_Factory;
.super Ljava/lang/Object;
.source "HushpuppyPerformanceUtils_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;",
        ">;"
    }
.end annotation


# instance fields
.field private final sdkProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils_Factory;->sdkProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)",
            "Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils_Factory;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils_Factory;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)",
            "Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils_Factory;->sdkProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils_Factory;->get()Lcom/audible/hushpuppy/common/performance/HushpuppyPerformanceUtils;

    move-result-object v0

    return-object v0
.end method
