.class public Lcom/amazon/whispersync/roboguice/inject/ContentViewListener;
.super Ljava/lang/Object;
.source "ContentViewListener.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/roboguice/inject/ContextSingleton;
.end annotation


# instance fields
.field protected activity:Landroid/app/Activity;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public optionallySetContentView(Lcom/amazon/whispersync/roboguice/activity/event/OnCreateEvent;)V
    .locals 1
    .param p1    # Lcom/amazon/whispersync/roboguice/activity/event/OnCreateEvent;
        .annotation runtime Lcom/amazon/whispersync/roboguice/event/Observes;
        .end annotation
    .end param

    .line 17
    iget-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ContentViewListener;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 18
    :goto_0
    const-class v0, Landroid/content/Context;

    if-eq p1, v0, :cond_1

    .line 19
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContentView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/roboguice/inject/ContentView;

    if-eqz v0, :cond_0

    .line 21
    iget-object p1, p0, Lcom/amazon/whispersync/roboguice/inject/ContentViewListener;->activity:Landroid/app/Activity;

    invoke-interface {v0}, Lcom/amazon/whispersync/roboguice/inject/ContentView;->value()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V

    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-void
.end method
