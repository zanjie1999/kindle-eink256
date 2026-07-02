.class public final Lcom/amazon/kindle/tutorial/launcher/NoOpLauncher;
.super Ljava/lang/Object;
.source "NoOpLauncher.kt"

# interfaces
.implements Lcom/amazon/kindle/tutorial/launcher/TutorialLauncher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showTutorial(Lcom/amazon/kindle/tutorial/TutorialLauncherData;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
