.class public final Lcom/amazon/kindle/inapp/notifications/theme/FontManager;
.super Ljava/lang/Object;
.source "FontManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Holder;,
        Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFontManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FontManager.kt\ncom/amazon/kindle/inapp/notifications/theme/FontManager\n*L\n1#1,32:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;


# instance fields
.field private final fontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/theme/FontManager;->Companion:Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Companion;

    .line 11
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Companion$instance$2;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/theme/FontManager$Companion$instance$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/theme/FontManager;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/theme/FontManager;->fontMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/theme/FontManager;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final getFontByName(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 3

    const-string v0, "fontName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/theme/FontManager;->fontMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/amazon/kindle/inapp/notifications/theme/FontManager;->fontMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;

    return-object p1

    .line 25
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 26
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/theme/FontManager;->fontMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
