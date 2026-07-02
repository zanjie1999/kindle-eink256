.class final Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil$accessibilityManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AccessibilityUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/accessibility/AccessibilityManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil$accessibilityManager$2;->this$0:Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/accessibility/AccessibilityManager;
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil$accessibilityManager$2;->this$0:Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;

    invoke-static {v0}, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;->access$getContext$p(Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil$accessibilityManager$2;->invoke()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    return-object v0
.end method
