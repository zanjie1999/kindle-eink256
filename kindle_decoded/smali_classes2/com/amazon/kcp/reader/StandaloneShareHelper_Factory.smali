.class public final Lcom/amazon/kcp/reader/StandaloneShareHelper_Factory;
.super Ljava/lang/Object;
.source "StandaloneShareHelper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kcp/reader/StandaloneShareHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final wechatDelegateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/common/base/Optional<",
            "Lcom/amazon/kindle/map/WechatDelegateInterface;",
            ">;>;"
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
            "Lcom/google/common/base/Optional<",
            "Lcom/amazon/kindle/map/WechatDelegateInterface;",
            ">;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper_Factory;->wechatDelegateProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/kcp/reader/StandaloneShareHelper_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/common/base/Optional<",
            "Lcom/amazon/kindle/map/WechatDelegateInterface;",
            ">;>;)",
            "Lcom/amazon/kcp/reader/StandaloneShareHelper_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/amazon/kcp/reader/StandaloneShareHelper_Factory;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/StandaloneShareHelper_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kcp/reader/StandaloneShareHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/common/base/Optional<",
            "Lcom/amazon/kindle/map/WechatDelegateInterface;",
            ">;>;)",
            "Lcom/amazon/kcp/reader/StandaloneShareHelper;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/StandaloneShareHelper;-><init>(Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kcp/reader/StandaloneShareHelper;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper_Factory;->wechatDelegateProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/kcp/reader/StandaloneShareHelper_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kcp/reader/StandaloneShareHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/StandaloneShareHelper_Factory;->get()Lcom/amazon/kcp/reader/StandaloneShareHelper;

    move-result-object v0

    return-object v0
.end method
