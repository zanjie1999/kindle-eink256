.class Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;
.super Ljava/lang/Object;
.source "InjectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InjectorOptions"
.end annotation


# instance fields
.field final disableCircularProxies:Z

.field final jitDisabled:Z

.field final stage:Lcom/amazon/whispersync/com/google/inject/Stage;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/Stage;ZZ)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;->stage:Lcom/amazon/whispersync/com/google/inject/Stage;

    .line 77
    iput-boolean p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;->jitDisabled:Z

    .line 78
    iput-boolean p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;->disableCircularProxies:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 83
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    const-class v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;->stage:Lcom/amazon/whispersync/com/google/inject/Stage;

    const-string/jumbo v2, "stage"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;->jitDisabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "jitDisabled"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;->disableCircularProxies:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "disableCircularProxies"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
