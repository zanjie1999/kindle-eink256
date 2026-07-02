.class final Lcom/amazon/kindle/ffs/plugin/FFSPlugin$ugsLauncher$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FFSPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/plugin/FFSPlugin;-><init>(JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$ugsLauncher$2;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$ugsLauncher$2;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->access$getUgsLauncherSupplier$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$ugsLauncher$2;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-static {v1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->access$getSdk$p(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$ugsLauncher$2;->invoke()Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    move-result-object v0

    return-object v0
.end method
