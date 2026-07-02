.class public final Lcom/amazon/kindle/krx/reader/BubbleManager_Factory;
.super Ljava/lang/Object;
.source "BubbleManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/krx/reader/BubbleManager;",
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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/BubbleManager_Factory;->pubSubMessageServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/reader/BubbleManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;)",
            "Lcom/amazon/kindle/krx/reader/BubbleManager_Factory;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/amazon/kindle/krx/reader/BubbleManager_Factory;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/reader/BubbleManager_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newBubbleManager(Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)Lcom/amazon/kindle/krx/reader/BubbleManager;
    .locals 1

    .line 31
    new-instance v0, Lcom/amazon/kindle/krx/reader/BubbleManager;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/reader/BubbleManager;-><init>(Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/reader/BubbleManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/events/IPubSubEventsManager;",
            ">;)",
            "Lcom/amazon/kindle/krx/reader/BubbleManager;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/amazon/kindle/krx/reader/BubbleManager;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/krx/reader/BubbleManager;-><init>(Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/krx/reader/BubbleManager;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/BubbleManager_Factory;->pubSubMessageServiceProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/kindle/krx/reader/BubbleManager_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/krx/reader/BubbleManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/BubbleManager_Factory;->get()Lcom/amazon/kindle/krx/reader/BubbleManager;

    move-result-object v0

    return-object v0
.end method
