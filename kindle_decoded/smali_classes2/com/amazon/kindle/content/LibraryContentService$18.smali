.class Lcom/amazon/kindle/content/LibraryContentService$18;
.super Ljava/lang/Object;
.source "LibraryContentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/LibraryContentService;->publishEventOnMainThread(Lcom/amazon/kindle/event/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/content/LibraryContentService;

.field final synthetic val$event:Lcom/amazon/kindle/event/Event;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/LibraryContentService;Lcom/amazon/kindle/event/Event;)V
    .locals 0

    .line 2900
    iput-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService$18;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    iput-object p2, p0, Lcom/amazon/kindle/content/LibraryContentService$18;->val$event:Lcom/amazon/kindle/event/Event;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2903
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService$18;->this$0:Lcom/amazon/kindle/content/LibraryContentService;

    iget-object v1, p0, Lcom/amazon/kindle/content/LibraryContentService$18;->val$event:Lcom/amazon/kindle/event/Event;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/LibraryContentService;->publishEvent(Lcom/amazon/kindle/event/Event;)V

    return-void
.end method
