.class public final Lcom/amazon/kindle/krx/reader/ReaderSettings_Factory;
.super Ljava/lang/Object;
.source "ReaderSettings_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/krx/reader/ReaderSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private final readerControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderSettings_Factory;->settingsProvider:Ljavax/inject/Provider;

    .line 18
    iput-object p2, p0, Lcom/amazon/kindle/krx/reader/ReaderSettings_Factory;->readerControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/reader/ReaderSettings_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;)",
            "Lcom/amazon/kindle/krx/reader/ReaderSettings_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/amazon/kindle/krx/reader/ReaderSettings_Factory;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/krx/reader/ReaderSettings_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newReaderSettings(Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kcp/reader/IReaderController;)Lcom/amazon/kindle/krx/reader/ReaderSettings;
    .locals 1

    .line 40
    new-instance v0, Lcom/amazon/kindle/krx/reader/ReaderSettings;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/krx/reader/ReaderSettings;-><init>(Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kcp/reader/IReaderController;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/reader/ReaderSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/UserSettingsController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/reader/IReaderController;",
            ">;)",
            "Lcom/amazon/kindle/krx/reader/ReaderSettings;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/amazon/kindle/krx/reader/ReaderSettings;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/UserSettingsController;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/IReaderController;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/krx/reader/ReaderSettings;-><init>(Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kcp/reader/IReaderController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/krx/reader/ReaderSettings;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderSettings_Factory;->settingsProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderSettings_Factory;->readerControllerProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/amazon/kindle/krx/reader/ReaderSettings_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/reader/ReaderSettings;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/ReaderSettings_Factory;->get()Lcom/amazon/kindle/krx/reader/ReaderSettings;

    move-result-object v0

    return-object v0
.end method
