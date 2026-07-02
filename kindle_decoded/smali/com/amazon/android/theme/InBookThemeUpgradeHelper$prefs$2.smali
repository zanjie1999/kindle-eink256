.class final Lcom/amazon/android/theme/InBookThemeUpgradeHelper$prefs$2;
.super Lkotlin/jvm/internal/Lambda;
.source "InBookThemeUpgradeHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/theme/InBookThemeUpgradeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/android/theme/InBookThemeUpgradeHelper$prefs$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/android/theme/InBookThemeUpgradeHelper$prefs$2;

    invoke-direct {v0}, Lcom/amazon/android/theme/InBookThemeUpgradeHelper$prefs$2;-><init>()V

    sput-object v0, Lcom/amazon/android/theme/InBookThemeUpgradeHelper$prefs$2;->INSTANCE:Lcom/amazon/android/theme/InBookThemeUpgradeHelper$prefs$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences;
    .locals 3

    .line 39
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "InBookUpgrader"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/amazon/android/theme/InBookThemeUpgradeHelper$prefs$2;->invoke()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
