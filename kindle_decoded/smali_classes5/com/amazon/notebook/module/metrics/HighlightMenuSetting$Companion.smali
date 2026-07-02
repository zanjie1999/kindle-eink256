.class public final Lcom/amazon/notebook/module/metrics/HighlightMenuSetting$Companion;
.super Ljava/lang/Object;
.source "NotebookHighlightActionMetric.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/metrics/HighlightMenuSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/amazon/notebook/module/metrics/HighlightMenuSetting$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Z)Lcom/amazon/notebook/module/metrics/HighlightMenuSetting;
    .locals 0

    if-eqz p1, :cond_0

    .line 54
    sget-object p1, Lcom/amazon/notebook/module/metrics/HighlightMenuSetting;->ON:Lcom/amazon/notebook/module/metrics/HighlightMenuSetting;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/notebook/module/metrics/HighlightMenuSetting;->OFF:Lcom/amazon/notebook/module/metrics/HighlightMenuSetting;

    :goto_0
    return-object p1
.end method
