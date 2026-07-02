.class public final Lcom/amazon/kindle/krx/KindleReaderSDKModule_Factory;
.super Ljava/lang/Object;
.source "KindleReaderSDKModule_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/krx/KindleReaderSDKModule;",
        ">;"
    }
.end annotation


# instance fields
.field private final arg0Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
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
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/kindle/krx/KindleReaderSDKModule_Factory;->arg0Provider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/KindleReaderSDKModule_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
            ">;)",
            "Lcom/amazon/kindle/krx/KindleReaderSDKModule_Factory;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/amazon/kindle/krx/KindleReaderSDKModule_Factory;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/KindleReaderSDKModule_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newKindleReaderSDKModule(Ldagger/Lazy;)Lcom/amazon/kindle/krx/KindleReaderSDKModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
            ">;)",
            "Lcom/amazon/kindle/krx/KindleReaderSDKModule;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/amazon/kindle/krx/KindleReaderSDKModule;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/KindleReaderSDKModule;-><init>(Ldagger/Lazy;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/KindleReaderSDKModule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/KindleReaderSDK;",
            ">;)",
            "Lcom/amazon/kindle/krx/KindleReaderSDKModule;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/amazon/kindle/krx/KindleReaderSDKModule;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/KindleReaderSDKModule;-><init>(Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/krx/KindleReaderSDKModule;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/krx/KindleReaderSDKModule_Factory;->arg0Provider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/kindle/krx/KindleReaderSDKModule_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/KindleReaderSDKModule;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/KindleReaderSDKModule_Factory;->get()Lcom/amazon/kindle/krx/KindleReaderSDKModule;

    move-result-object v0

    return-object v0
.end method
