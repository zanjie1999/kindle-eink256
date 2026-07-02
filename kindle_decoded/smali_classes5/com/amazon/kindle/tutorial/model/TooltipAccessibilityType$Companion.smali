.class public final Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType$Companion;
.super Ljava/lang/Object;
.source "TooltipUI.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTooltipUI.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TooltipUI.kt\ncom/amazon/kindle/tutorial/model/TooltipAccessibilityType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,156:1\n1245#2,2:157\n*E\n*S KotlinDebug\n*F\n+ 1 TooltipUI.kt\ncom/amazon/kindle/tutorial/model/TooltipAccessibilityType$Companion\n*L\n154#1,2:157\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 152
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 154
    invoke-static {}, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;->access$getTypes$cp()[Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;

    move-result-object v0

    .line 157
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 154
    invoke-virtual {v4}, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_2

    .line 158
    invoke-virtual {v4}, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;->getClassName()Ljava/lang/String;

    move-result-object v3

    :cond_2
    return-object v3
.end method
