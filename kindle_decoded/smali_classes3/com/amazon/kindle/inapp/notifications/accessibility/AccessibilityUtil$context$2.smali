.class final Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil$context$2;
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
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil$context$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil$context$2;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil$context$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil$context$2;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil$context$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/Context;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/accessibility/AccessibilityUtil$context$2;->invoke()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
