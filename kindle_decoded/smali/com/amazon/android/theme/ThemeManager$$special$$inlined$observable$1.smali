.class public final Lcom/amazon/android/theme/ThemeManager$$special$$inlined$observable$1;
.super Lkotlin/properties/ObservableProperty;
.source "Delegates.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/theme/ThemeManager;-><init>(Lcom/amazon/kcp/theme/ThemeConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/properties/ObservableProperty<",
        "Lcom/amazon/kindle/krx/theme/Theme;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$observable$1\n+ 2 ThemeManager.kt\ncom/amazon/android/theme/ThemeManager\n*L\n1#1,70:1\n24#2,8:71\n*E\n"
.end annotation


# instance fields
.field final synthetic $initialValue:Ljava/lang/Object;

.field final synthetic this$0:Lcom/amazon/android/theme/ThemeManager;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/android/theme/ThemeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/theme/ThemeManager$$special$$inlined$observable$1;->$initialValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/amazon/android/theme/ThemeManager$$special$$inlined$observable$1;->this$0:Lcom/amazon/android/theme/ThemeManager;

    .line 33
    invoke-direct {p0, p2}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected afterChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty<",
            "*>;",
            "Lcom/amazon/kindle/krx/theme/Theme;",
            "Lcom/amazon/kindle/krx/theme/Theme;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast p3, Lcom/amazon/kindle/krx/theme/Theme;

    check-cast p2, Lcom/amazon/kindle/krx/theme/Theme;

    .line 71
    iget-object p1, p0, Lcom/amazon/android/theme/ThemeManager$$special$$inlined$observable$1;->this$0:Lcom/amazon/android/theme/ThemeManager;

    if-eq p2, p3, :cond_0

    .line 74
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    const-string v0, "Utils.getFactory()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/amazon/kcp/application/UserSettingsController;->setTheme(Lcom/amazon/kindle/krx/theme/Theme;)V

    .line 75
    invoke-static {p1}, Lcom/amazon/android/theme/ThemeManager;->access$getMessageQueue$p(Lcom/amazon/android/theme/ThemeManager;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance p2, Lcom/amazon/kindle/krx/events/ThemeChangedEvent;

    invoke-direct {p2}, Lcom/amazon/kindle/krx/events/ThemeChangedEvent;-><init>()V

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method
