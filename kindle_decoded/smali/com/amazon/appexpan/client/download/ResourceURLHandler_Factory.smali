.class public final Lcom/amazon/appexpan/client/download/ResourceURLHandler_Factory;
.super Ljava/lang/Object;
.source "ResourceURLHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/appexpan/client/download/ResourceURLHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final debugSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/DebugSettings;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/DebugSettings;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/appexpan/client/download/ResourceURLHandler_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/amazon/appexpan/client/download/ResourceURLHandler_Factory;->debugSettingsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/download/ResourceURLHandler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/DebugSettings;",
            ">;)",
            "Lcom/amazon/appexpan/client/download/ResourceURLHandler_Factory;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/amazon/appexpan/client/download/ResourceURLHandler_Factory;

    invoke-direct {v0, p0, p1}, Lcom/amazon/appexpan/client/download/ResourceURLHandler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/download/ResourceURLHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/appexpan/client/util/DebugSettings;",
            ">;)",
            "Lcom/amazon/appexpan/client/download/ResourceURLHandler;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/amazon/appexpan/client/download/ResourceURLHandler;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/appexpan/client/util/DebugSettings;

    invoke-direct {v0, p0, p1}, Lcom/amazon/appexpan/client/download/ResourceURLHandler;-><init>(Landroid/content/Context;Lcom/amazon/appexpan/client/util/DebugSettings;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/appexpan/client/download/ResourceURLHandler;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceURLHandler_Factory;->contextProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/appexpan/client/download/ResourceURLHandler_Factory;->debugSettingsProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/amazon/appexpan/client/download/ResourceURLHandler_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/appexpan/client/download/ResourceURLHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/amazon/appexpan/client/download/ResourceURLHandler_Factory;->get()Lcom/amazon/appexpan/client/download/ResourceURLHandler;

    move-result-object v0

    return-object v0
.end method
