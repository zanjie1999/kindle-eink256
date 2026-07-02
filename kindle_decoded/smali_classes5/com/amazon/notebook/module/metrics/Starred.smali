.class public final enum Lcom/amazon/notebook/module/metrics/Starred;
.super Ljava/lang/Enum;
.source "NotebookHighlightActionMetric.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/notebook/module/metrics/Starred$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/notebook/module/metrics/Starred;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/notebook/module/metrics/Starred;

.field public static final Companion:Lcom/amazon/notebook/module/metrics/Starred$Companion;

.field public static final enum NO:Lcom/amazon/notebook/module/metrics/Starred;

.field public static final enum YES:Lcom/amazon/notebook/module/metrics/Starred;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/notebook/module/metrics/Starred;

    new-instance v1, Lcom/amazon/notebook/module/metrics/Starred;

    const/4 v2, 0x0

    const-string v3, "YES"

    const-string v4, "Yes"

    .line 15
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/Starred;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/Starred;->YES:Lcom/amazon/notebook/module/metrics/Starred;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/notebook/module/metrics/Starred;

    const/4 v2, 0x1

    const-string v3, "NO"

    const-string v4, "No"

    .line 16
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/notebook/module/metrics/Starred;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/notebook/module/metrics/Starred;->NO:Lcom/amazon/notebook/module/metrics/Starred;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/notebook/module/metrics/Starred;->$VALUES:[Lcom/amazon/notebook/module/metrics/Starred;

    new-instance v0, Lcom/amazon/notebook/module/metrics/Starred$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/notebook/module/metrics/Starred$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/notebook/module/metrics/Starred;->Companion:Lcom/amazon/notebook/module/metrics/Starred$Companion;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/notebook/module/metrics/Starred;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/notebook/module/metrics/Starred;
    .locals 1

    const-class v0, Lcom/amazon/notebook/module/metrics/Starred;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/notebook/module/metrics/Starred;

    return-object p0
.end method

.method public static values()[Lcom/amazon/notebook/module/metrics/Starred;
    .locals 1

    sget-object v0, Lcom/amazon/notebook/module/metrics/Starred;->$VALUES:[Lcom/amazon/notebook/module/metrics/Starred;

    invoke-virtual {v0}, [Lcom/amazon/notebook/module/metrics/Starred;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/notebook/module/metrics/Starred;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/notebook/module/metrics/Starred;->value:Ljava/lang/String;

    return-object v0
.end method
