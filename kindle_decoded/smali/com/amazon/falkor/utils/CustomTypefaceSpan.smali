.class public final Lcom/amazon/falkor/utils/CustomTypefaceSpan;
.super Landroid/text/style/TypefaceSpan;
.source "CustomTypefaceSpan.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/falkor/utils/CustomTypefaceSpan$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/falkor/utils/CustomTypefaceSpan$Companion;


# instance fields
.field private final newType:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/falkor/utils/CustomTypefaceSpan$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/falkor/utils/CustomTypefaceSpan$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/falkor/utils/CustomTypefaceSpan;->Companion:Lcom/amazon/falkor/utils/CustomTypefaceSpan$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 1

    const-string/jumbo v0, "newType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/falkor/utils/CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    const-string v0, "ds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lcom/amazon/falkor/utils/CustomTypefaceSpan;->Companion:Lcom/amazon/falkor/utils/CustomTypefaceSpan$Companion;

    iget-object v1, p0, Lcom/amazon/falkor/utils/CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    invoke-static {v0, p1, v1}, Lcom/amazon/falkor/utils/CustomTypefaceSpan$Companion;->access$applyCustomTypeFace(Lcom/amazon/falkor/utils/CustomTypefaceSpan$Companion;Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2

    const-string/jumbo v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/amazon/falkor/utils/CustomTypefaceSpan;->Companion:Lcom/amazon/falkor/utils/CustomTypefaceSpan$Companion;

    iget-object v1, p0, Lcom/amazon/falkor/utils/CustomTypefaceSpan;->newType:Landroid/graphics/Typeface;

    invoke-static {v0, p1, v1}, Lcom/amazon/falkor/utils/CustomTypefaceSpan$Companion;->access$applyCustomTypeFace(Lcom/amazon/falkor/utils/CustomTypefaceSpan$Companion;Landroid/graphics/Paint;Landroid/graphics/Typeface;)V

    return-void
.end method
