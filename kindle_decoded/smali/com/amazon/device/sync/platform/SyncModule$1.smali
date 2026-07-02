.class Lcom/amazon/device/sync/platform/SyncModule$1;
.super Lcom/amazon/whispersync/com/google/inject/AbstractModule;
.source "SyncModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/platform/SyncModule;->configure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/platform/SyncModule;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/platform/SyncModule;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/device/sync/platform/SyncModule$1;->this$0:Lcom/amazon/device/sync/platform/SyncModule;

    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 2

    .line 56
    const-class v0, Lcom/amazon/whispersync/client/metrics/transport/OAuthHelper;

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/AbstractModule;->bind(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/sync/metrics/OAuthHelperImpl;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;->to(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/whispersync/roboguice/inject/ContextSingleton;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    return-void
.end method
