.class public final Lcom/amazon/android/theme/ThemeManager$$special$$inlined$observable$2;
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
        "Lcom/amazon/kindle/krx/theme/AppTheme;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$observable$1\n+ 2 ThemeManager.kt\ncom/amazon/android/theme/ThemeManager\n*L\n1#1,70:1\n36#2,5:71\n*E\n"
.end annotation


# instance fields
.field final synthetic $initialValue:Ljava/lang/Object;

.field final synthetic this$0:Lcom/amazon/android/theme/ThemeManager;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/android/theme/ThemeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/theme/ThemeManager$$special$$inlined$observable$2;->$initialValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/amazon/android/theme/ThemeManager$$special$$inlined$observable$2;->this$0:Lcom/amazon/android/theme/ThemeManager;

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
            "Lcom/amazon/kindle/krx/theme/AppTheme;",
            "Lcom/amazon/kindle/krx/theme/AppTheme;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast p3, Lcom/amazon/kindle/krx/theme/AppTheme;

    check-cast p2, Lcom/amazon/kindle/krx/theme/AppTheme;

    if-eq p2, p3, :cond_0

    .line 73
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string p2, "Utils.getFactory()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/amazon/kcp/application/UserSettingsController;->setAppTheme(Lcom/amazon/kindle/krx/theme/AppTheme;)V

    :cond_0
    return-void
.end method
