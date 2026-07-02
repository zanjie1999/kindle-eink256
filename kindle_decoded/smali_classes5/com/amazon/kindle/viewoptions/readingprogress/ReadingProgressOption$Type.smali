.class public enum Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;
.super Ljava/lang/Enum;
.source "ReadingProgressOption.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type$LOCATION;,
        Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type$PAGE_NUMBER;,
        Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type$TIME_LEFT;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

.field public static final enum NONE:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;


# instance fields
.field private final titleId:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    new-instance v1, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type$LOCATION;

    const/4 v2, 0x0

    const-string v3, "LOCATION"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type$LOCATION;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type$PAGE_NUMBER;

    const/4 v2, 0x1

    const-string v3, "PAGE_NUMBER"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type$PAGE_NUMBER;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    .line 41
    sget v2, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_reading_progress_type_time_left_in_chapter:I

    const/4 v3, 0x2

    const-string v4, "TIME_LEFT_IN_CHAPTER"

    invoke-direct {v1, v4, v3, v3, v2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type$TIME_LEFT;

    const/4 v2, 0x3

    const-string v3, "TIME_LEFT"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type$TIME_LEFT;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    .line 53
    sget v2, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_reading_progress_type_blank:I

    const/4 v3, 0x4

    const-string v4, "NONE"

    const/16 v5, 0x8

    invoke-direct {v1, v4, v3, v5, v2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->NONE:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->$VALUES:[Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->value:I

    iput p4, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->titleId:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;
    .locals 1

    const-class v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->$VALUES:[Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    invoke-virtual {v0}, [Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    return-object v0
.end method


# virtual methods
.method public getTitle(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget p2, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->titleId:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(titleId)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getValue()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->value:I

    return v0
.end method
