.class public final Lcom/amazon/kindle/ffs/plugin/FFSPlugin$initialize$$inlined$schedule$1;
.super Ljava/util/TimerTask;
.source "Timer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer.kt\nkotlin/concurrent/TimersKt$timerTask$1\n+ 2 FFSPlugin.kt\ncom/amazon/kindle/ffs/plugin/FFSPlugin\n*L\n1#1,148:1\n144#2,2:149\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/ffs/plugin/FFSPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$initialize$$inlined$schedule$1;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    .line 146
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$initialize$$inlined$schedule$1;->this$0:Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->initializeAsync$ffs_debug()Lcom/amazon/kindle/ffs/plugin/FFSPlugin$FFSLaunchProgress;

    return-void
.end method
