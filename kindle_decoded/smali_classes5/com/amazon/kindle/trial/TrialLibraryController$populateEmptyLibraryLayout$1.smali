.class final Lcom/amazon/kindle/trial/TrialLibraryController$populateEmptyLibraryLayout$1;
.super Ljava/lang/Object;
.source "TrialLibraryController.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/trial/TrialLibraryController;->populateEmptyLibraryLayout(Lcom/amazon/kcp/library/ui/EmptyLibraryView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/trial/TrialLibraryController$populateEmptyLibraryLayout$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/trial/TrialLibraryController$populateEmptyLibraryLayout$1;

    invoke-direct {v0}, Lcom/amazon/kindle/trial/TrialLibraryController$populateEmptyLibraryLayout$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/trial/TrialLibraryController$populateEmptyLibraryLayout$1;->INSTANCE:Lcom/amazon/kindle/trial/TrialLibraryController$populateEmptyLibraryLayout$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "it"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v2, Lcom/amazon/kcp/trial/TrialModeSignInActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 47
    invoke-static {}, Lcom/amazon/kindle/trial/TrialModeMetricsManager;->getInstance()Lcom/amazon/kindle/trial/TrialModeMetrics;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/trial/SignInLocation;->LIBRARY:Lcom/amazon/kindle/trial/SignInLocation;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/trial/TrialModeMetrics;->customerRequestedSignIn(Lcom/amazon/kindle/trial/SignInLocation;)V

    return-void
.end method
