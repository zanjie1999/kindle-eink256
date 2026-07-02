.class final Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner$run$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FFSPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $t:Ljava/lang/Throwable;

.field final synthetic this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner$run$2;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;

    iput-object p2, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner$run$2;->$t:Ljava/lang/Throwable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner$run$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner$run$2;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;

    iget-object v0, v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/ffs/plugin/FFSPluginKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner$run$2;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;

    invoke-static {v2}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;->access$getWillRetryMsg$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$StartProvisioner$run$2;->$t:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
