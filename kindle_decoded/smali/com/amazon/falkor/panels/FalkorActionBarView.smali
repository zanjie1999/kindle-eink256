.class public Lcom/amazon/falkor/panels/FalkorActionBarView;
.super Lcom/amazon/kindle/krx/ui/ColorCodedView;
.source "FalkorActionBarDecorationProvider.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/krx/ui/ColorCodedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public shouldSetDefaultPadding()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
