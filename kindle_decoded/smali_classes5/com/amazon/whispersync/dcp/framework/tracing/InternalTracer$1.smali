.class Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer$1;
.super Ljava/lang/Object;
.source "InternalTracer.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/settings/SettingsCache$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;-><init>(Lcom/amazon/whispersync/dcp/framework/tracing/TracerFactory;Ljava/lang/String;[Lcom/amazon/whispersync/dcp/framework/tracing/TraceInformation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer$1;->this$0:Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheUpdated()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer$1;->this$0:Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;->access$000(Lcom/amazon/whispersync/dcp/framework/tracing/InternalTracer;)V

    return-void
.end method
