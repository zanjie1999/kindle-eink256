.class public final Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilderKt;
.super Ljava/lang/Object;
.source "KindleUnlimitedUpsellCardBuilder.kt"


# static fields
.field private static final CARD_DISABLED_TTL:J = 0x5265c00L

.field private static final SUPPORTED_THEMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.home.cards.KindleUnlimitedUpsellCardBuilder"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 22
    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilderKt;->SUPPORTED_THEMES:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getSUPPORTED_THEMES$p()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kcp/home/cards/KindleUnlimitedUpsellCardBuilderKt;->SUPPORTED_THEMES:Ljava/util/List;

    return-object v0
.end method
