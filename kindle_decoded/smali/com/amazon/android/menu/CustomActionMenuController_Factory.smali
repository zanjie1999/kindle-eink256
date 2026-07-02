.class public final Lcom/amazon/android/menu/CustomActionMenuController_Factory;
.super Ljava/lang/Object;
.source "CustomActionMenuController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/android/menu/CustomActionMenuController;",
        ">;"
    }
.end annotation


# instance fields
.field private final pubSubMessageServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
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
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/android/menu/CustomActionMenuController_Factory;->pubSubMessageServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/android/menu/CustomActionMenuController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;)",
            "Lcom/amazon/android/menu/CustomActionMenuController_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/amazon/android/menu/CustomActionMenuController_Factory;

    invoke-direct {v0, p0}, Lcom/amazon/android/menu/CustomActionMenuController_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/amazon/android/menu/CustomActionMenuController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;)",
            "Lcom/amazon/android/menu/CustomActionMenuController;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/amazon/android/menu/CustomActionMenuController;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    invoke-direct {v0, p0}, Lcom/amazon/android/menu/CustomActionMenuController;-><init>(Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/android/menu/CustomActionMenuController;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/android/menu/CustomActionMenuController_Factory;->pubSubMessageServiceProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/android/menu/CustomActionMenuController_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/amazon/android/menu/CustomActionMenuController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/android/menu/CustomActionMenuController_Factory;->get()Lcom/amazon/android/menu/CustomActionMenuController;

    move-result-object v0

    return-object v0
.end method
