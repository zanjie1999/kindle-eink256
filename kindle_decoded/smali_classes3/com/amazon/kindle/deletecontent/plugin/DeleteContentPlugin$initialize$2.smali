.class final Lcom/amazon/kindle/deletecontent/plugin/DeleteContentPlugin$initialize$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DeleteContentPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/deletecontent/plugin/DeleteContentPlugin;->initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/fragment/app/FragmentActivity;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/deletecontent/plugin/DeleteContentPlugin$initialize$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/deletecontent/plugin/DeleteContentPlugin$initialize$2;

    invoke-direct {v0}, Lcom/amazon/kindle/deletecontent/plugin/DeleteContentPlugin$initialize$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/deletecontent/plugin/DeleteContentPlugin$initialize$2;->INSTANCE:Lcom/amazon/kindle/deletecontent/plugin/DeleteContentPlugin$initialize$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/fragment/app/FragmentActivity;
    .locals 2

    .line 27
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const-string v1, "AndroidApplicationController.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/amazon/kindle/deletecontent/plugin/DeleteContentPlugin$initialize$2;->invoke()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method
