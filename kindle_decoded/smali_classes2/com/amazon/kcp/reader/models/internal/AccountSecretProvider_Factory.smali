.class public final Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider_Factory;
.super Ljava/lang/Object;
.source "AccountSecretProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;",
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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider_Factory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider_Factory;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider_Factory;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider_Factory;->get()Lcom/amazon/kcp/reader/models/internal/AccountSecretProvider;

    move-result-object v0

    return-object v0
.end method
