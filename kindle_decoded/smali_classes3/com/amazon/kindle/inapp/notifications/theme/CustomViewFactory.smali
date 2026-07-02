.class public final Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory;
.super Ljava/lang/Object;
.source "CustomViewFactory.kt"

# interfaces
.implements Landroidx/core/view/LayoutInflaterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory$Holder;,
        Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory;->Companion:Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory$Companion;

    .line 16
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory$Companion$instance$2;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory$Companion$instance$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/theme/CustomViewFactory;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    const-string p1, "name"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "attrs"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const-class p1, Lcom/amazon/kindle/inapp/notifications/theme/ThemeTextView;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/amazon/kindle/inapp/notifications/theme/ThemeTextView;

    invoke-direct {p1, p3, p4}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 23
    :cond_0
    const-class p1, Lcom/amazon/kindle/inapp/notifications/theme/ThemeButton;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/amazon/kindle/inapp/notifications/theme/ThemeButton;

    invoke-direct {p1, p3, p4}, Lcom/amazon/kindle/inapp/notifications/theme/ThemeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
