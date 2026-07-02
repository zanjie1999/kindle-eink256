.class public final Lcom/amazon/kindle/krx/search/ReaderSearchManager_Factory;
.super Ljava/lang/Object;
.source "ReaderSearchManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/krx/search/ReaderSearchManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final baseSearchUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/search/ISearchUtils;",
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
            "Lcom/amazon/kindle/krx/search/ISearchUtils;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/kindle/krx/search/ReaderSearchManager_Factory;->baseSearchUtilsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/search/ReaderSearchManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/search/ISearchUtils;",
            ">;)",
            "Lcom/amazon/kindle/krx/search/ReaderSearchManager_Factory;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/amazon/kindle/krx/search/ReaderSearchManager_Factory;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/search/ReaderSearchManager_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newReaderSearchManager(Lcom/amazon/kindle/krx/search/ISearchUtils;)Lcom/amazon/kindle/krx/search/ReaderSearchManager;
    .locals 1

    .line 29
    new-instance v0, Lcom/amazon/kindle/krx/search/ReaderSearchManager;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/search/ReaderSearchManager;-><init>(Lcom/amazon/kindle/krx/search/ISearchUtils;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/search/ReaderSearchManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/search/ISearchUtils;",
            ">;)",
            "Lcom/amazon/kindle/krx/search/ReaderSearchManager;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/amazon/kindle/krx/search/ReaderSearchManager;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/search/ISearchUtils;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/search/ReaderSearchManager;-><init>(Lcom/amazon/kindle/krx/search/ISearchUtils;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/krx/search/ReaderSearchManager;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/krx/search/ReaderSearchManager_Factory;->baseSearchUtilsProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/kindle/krx/search/ReaderSearchManager_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/search/ReaderSearchManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/search/ReaderSearchManager_Factory;->get()Lcom/amazon/kindle/krx/search/ReaderSearchManager;

    move-result-object v0

    return-object v0
.end method
