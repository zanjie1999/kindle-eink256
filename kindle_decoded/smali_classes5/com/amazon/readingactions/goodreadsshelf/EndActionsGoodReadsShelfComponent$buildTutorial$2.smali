.class final Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$2;
.super Ljava/lang/Object;
.source "EndActionsGoodReadsShelfComponent.kt"

# interfaces
.implements Lcom/amazon/startactions/jit/BlockingTutorialFragment$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent;->buildTutorial()Lcom/amazon/startactions/jit/BlockingTutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$2;

    invoke-direct {v0}, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$2;-><init>()V

    sput-object v0, Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$2;->INSTANCE:Lcom/amazon/readingactions/goodreadsshelf/EndActionsGoodReadsShelfComponent$buildTutorial$2;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V
    .locals 2

    const-string p1, "anyactions.autoshelving"

    const-string v0, "endActionsTutorialEnabled"

    const/4 v1, 0x0

    .line 350
    invoke-static {p1, v0, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
