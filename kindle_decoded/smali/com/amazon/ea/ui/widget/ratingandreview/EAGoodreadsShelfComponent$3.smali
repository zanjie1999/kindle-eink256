.class Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$3;
.super Ljava/lang/Object;
.source "EAGoodreadsShelfComponent.java"

# interfaces
.implements Lcom/amazon/startactions/jit/BlockingTutorialFragment$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->buildTutorial()Lcom/amazon/startactions/jit/BlockingTutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;)V
    .locals 0

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V
    .locals 2

    const-string p1, "anyactions.autoshelving"

    const-string v0, "endActionsTutorialEnabled"

    const/4 v1, 0x0

    .line 407
    invoke-static {p1, v0, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
