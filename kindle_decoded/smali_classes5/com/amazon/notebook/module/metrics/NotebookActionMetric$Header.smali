.class public final enum Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;
.super Ljava/lang/Enum;
.source "NotebookActionMetric.kt"

# interfaces
.implements Lcom/amazon/notebook/module/metrics/NotebookActionMetric;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/metrics/NotebookActionMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Header"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;",
        ">;",
        "Lcom/amazon/notebook/module/metrics/NotebookActionMetric;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

.field public static final enum BACK_BUTTON_PRESSED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

.field public static final enum FILTER_MENU_BUTTON_PRESSED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

.field public static final enum SHARE_MENU_BUTTON_PRESSED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

    const/4 v2, 0x0

    const-string v3, "BACK_BUTTON_PRESSED"

    const-string v4, "CloseNotebookButtonPressed"

    .line 25
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;->BACK_BUTTON_PRESSED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

    const/4 v2, 0x1

    const-string v3, "FILTER_MENU_BUTTON_PRESSED"

    const-string v4, "FilterButtonPressed"

    .line 26
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;->FILTER_MENU_BUTTON_PRESSED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

    const/4 v2, 0x2

    const-string v3, "SHARE_MENU_BUTTON_PRESSED"

    const-string v4, "ShareButtonPressed"

    .line 27
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;->SHARE_MENU_BUTTON_PRESSED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;->$VALUES:[Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;
    .locals 1

    const-class v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

    return-object p0
.end method

.method public static values()[Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;
    .locals 1

    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;->$VALUES:[Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

    invoke-virtual {v0}, [Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

    return-object v0
.end method


# virtual methods
.method public emit()Lkotlin/Unit;
    .locals 1

    .line 24
    invoke-static {p0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$DefaultImpls;->emit(Lcom/amazon/notebook/module/metrics/NotebookActionMetric;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;->value:Ljava/lang/String;

    return-object v0
.end method
