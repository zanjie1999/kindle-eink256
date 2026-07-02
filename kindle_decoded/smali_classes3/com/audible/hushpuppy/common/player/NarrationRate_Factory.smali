.class public final Lcom/audible/hushpuppy/common/player/NarrationRate_Factory;
.super Ljava/lang/Object;
.source "NarrationRate_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/common/player/NarrationRate;",
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
    iput-object p1, p0, Lcom/audible/hushpuppy/common/player/NarrationRate_Factory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/audible/hushpuppy/common/player/NarrationRate_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/audible/hushpuppy/common/player/NarrationRate_Factory;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/audible/hushpuppy/common/player/NarrationRate_Factory;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/common/player/NarrationRate_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/audible/hushpuppy/common/player/NarrationRate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/audible/hushpuppy/common/player/NarrationRate;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/audible/hushpuppy/common/player/NarrationRate;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/common/player/NarrationRate;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/common/player/NarrationRate;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/audible/hushpuppy/common/player/NarrationRate_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/player/NarrationRate_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/audible/hushpuppy/common/player/NarrationRate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/player/NarrationRate_Factory;->get()Lcom/audible/hushpuppy/common/player/NarrationRate;

    move-result-object v0

    return-object v0
.end method
