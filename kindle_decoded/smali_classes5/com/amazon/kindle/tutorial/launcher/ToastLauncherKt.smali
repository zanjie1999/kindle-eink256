.class public final Lcom/amazon/kindle/tutorial/launcher/ToastLauncherKt;
.super Ljava/lang/Object;
.source "ToastLauncher.kt"


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String; = "ToastFragment"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-class v0, Lcom/amazon/kindle/tutorial/launcher/ToastLauncher;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(ToastLauncher::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/launcher/ToastLauncherKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/tutorial/launcher/ToastLauncherKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
