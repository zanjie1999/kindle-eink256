.class Lcom/amazon/kindle/event/EventProviderDB$1;
.super Ljava/lang/Object;
.source "EventProviderDB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/event/EventProviderDB;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/event/EventProviderDB;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/event/EventProviderDB;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/kindle/event/EventProviderDB$1;->this$0:Lcom/amazon/kindle/event/EventProviderDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/event/EventProviderDB$1;->this$0:Lcom/amazon/kindle/event/EventProviderDB;

    invoke-virtual {v0}, Lcom/amazon/kindle/event/EventProviderDB;->purgeProcessedEvents()V

    return-void
.end method
