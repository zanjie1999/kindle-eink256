.class final Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$onRender$1;
.super Ljava/lang/Object;
.source "EndActionsGoodReadsShelfComponent.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->onRender()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEndActionsGoodReadsShelfComponent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EndActionsGoodReadsShelfComponent.kt\ncom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$onRender$1\n*L\n1#1,423:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$onRender$1;->$blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 215
    iget-object p1, p0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$onRender$1;->$blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    const/4 p1, 0x0

    const-string p2, "anyactions.autoshelving"

    const-string v0, "endActionsTutorialEnabled"

    .line 217
    invoke-static {p2, v0, p1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 220
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 p2, 0x1

    const-string v0, "ClickedJITToggle"

    invoke-virtual {p1, v0, p2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
