.class Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$2;
.super Ljava/lang/Object;
.source "EAGoodreadsShelfComponent.java"

# interfaces
.implements Lcom/amazon/startactions/jit/BlockingTutorialFragment$BackButtonListener;


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

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackButtonTapped()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "anyactions.autoshelving"

    const-string v2, "endActionsTutorialEnabled"

    .line 399
    invoke-static {v1, v2, v0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method
