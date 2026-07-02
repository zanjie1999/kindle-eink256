.class public final Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler_Factory;
.super Ljava/lang/Object;
.source "ReaderActivityLifecycleEventHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final readerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ReaderManager;",
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
            "Lcom/amazon/kindle/krx/reader/ReaderManager;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler_Factory;->readerManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ReaderManager;",
            ">;)",
            "Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler_Factory;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler_Factory;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newReaderActivityLifecycleEventHandler(Lcom/amazon/kindle/krx/reader/ReaderManager;)Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;
    .locals 1

    .line 33
    new-instance v0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;-><init>(Lcom/amazon/kindle/krx/reader/ReaderManager;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/ReaderManager;",
            ">;)",
            "Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/reader/ReaderManager;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;-><init>(Lcom/amazon/kindle/krx/reader/ReaderManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler_Factory;->readerManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler_Factory;->get()Lcom/amazon/kindle/krx/reader/ReaderActivityLifecycleEventHandler;

    move-result-object v0

    return-object v0
.end method
