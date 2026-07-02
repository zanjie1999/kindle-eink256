.class Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$2;
.super Ljava/lang/Object;
.source "AbstractSingleTrackMediaPeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->notifyLoadError(Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;

.field final synthetic val$error:Ljava/io/IOException;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;Ljava/io/IOException;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$2;->this$0:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;

    iput-object p2, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$2;->val$error:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$2;->this$0:Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;

    invoke-static {v0}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;->access$300(Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod;)Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$2;->val$error:Ljava/io/IOException;

    invoke-interface {v0, v1}, Lcom/audible/mobile/player/exo/aax/AbstractSingleTrackMediaPeriod$EventListener;->onLoadError(Ljava/io/IOException;)V

    return-void
.end method
