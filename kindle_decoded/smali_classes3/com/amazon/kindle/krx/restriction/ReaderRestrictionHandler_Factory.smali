.class public final Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler_Factory;
.super Ljava/lang/Object;
.source "ReaderRestrictionHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final arg0Provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;",
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
            "Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler_Factory;->arg0Provider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;",
            ">;)",
            "Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler_Factory;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler_Factory;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newReaderRestrictionHandler(Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;)Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;
    .locals 1

    .line 30
    new-instance v0, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;-><init>(Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;",
            ">;)",
            "Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;-><init>(Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler_Factory;->arg0Provider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler_Factory;->get()Lcom/amazon/kindle/krx/restriction/ReaderRestrictionHandler;

    move-result-object v0

    return-object v0
.end method
