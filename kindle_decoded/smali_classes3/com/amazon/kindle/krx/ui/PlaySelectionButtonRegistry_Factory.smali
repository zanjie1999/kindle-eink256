.class public final Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry_Factory;
.super Ljava/lang/Object;
.source "PlaySelectionButtonRegistry_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry_Factory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry_Factory;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry_Factory;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newPlaySelectionButtonRegistry(Landroid/content/Context;)Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;
    .locals 1

    .line 30
    new-instance v0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry_Factory;->get()Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;

    move-result-object v0

    return-object v0
.end method
