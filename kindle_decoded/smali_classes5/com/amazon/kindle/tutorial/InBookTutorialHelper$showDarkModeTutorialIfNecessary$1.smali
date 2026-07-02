.class final Lcom/amazon/kindle/tutorial/InBookTutorialHelper$showDarkModeTutorialIfNecessary$1;
.super Ljava/lang/Object;
.source "InBookTutorialHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/InBookTutorialHelper;->showDarkModeTutorialIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/tutorial/InBookTutorialHelper$showDarkModeTutorialIfNecessary$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/tutorial/InBookTutorialHelper$showDarkModeTutorialIfNecessary$1;

    invoke-direct {v0}, Lcom/amazon/kindle/tutorial/InBookTutorialHelper$showDarkModeTutorialIfNecessary$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/tutorial/InBookTutorialHelper$showDarkModeTutorialIfNecessary$1;->INSTANCE:Lcom/amazon/kindle/tutorial/InBookTutorialHelper$showDarkModeTutorialIfNecessary$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/kindle/tutorial/InBookTutorialHelper;->INSTANCE:Lcom/amazon/kindle/tutorial/InBookTutorialHelper;

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/InBookTutorialHelper;->access$registerTutorialProvidersIfNecessary(Lcom/amazon/kindle/tutorial/InBookTutorialHelper;)V

    .line 35
    sget-object v0, Lcom/amazon/kindle/tutorial/InBookTutorialHelper;->INSTANCE:Lcom/amazon/kindle/tutorial/InBookTutorialHelper;

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/InBookTutorialHelper;->access$getDarkModeTutorialProvider$p(Lcom/amazon/kindle/tutorial/InBookTutorialHelper;)Lcom/amazon/kindle/tutorial/DarkModeTutorialProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/DarkModeTutorialProvider;->publishTutorialEvent()V

    return-void
.end method
